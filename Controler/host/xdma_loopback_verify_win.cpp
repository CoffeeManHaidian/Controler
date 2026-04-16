#include <windows.h>
#include <setupapi.h>

#include <chrono>
#include <algorithm>
#include <cctype>
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <string>
#include <thread>
#include <vector>

#pragma comment(lib, "setupapi.lib")

namespace {

constexpr LONG REG_CMD_ADDR           = 0x00;
constexpr LONG REG_CMD_DATA           = 0x04;
constexpr LONG REG_CMD_CTRL           = 0x08;
constexpr LONG REG_CMD_CFG            = 0x0C;
constexpr LONG REG_STATUS             = 0x10;
constexpr LONG REG_TX_FRAME_COUNT     = 0x14;
constexpr LONG REG_RX_FRAME_COUNT     = 0x18;
constexpr LONG REG_MATCH_COUNT        = 0x1C;
constexpr LONG REG_CRC_ERROR_COUNT    = 0x20;
constexpr LONG REG_FORMAT_ERROR_COUNT = 0x24;
constexpr LONG REG_LAST_RX_SEQ        = 0x28;
constexpr LONG REG_LAST_RX_ADDR       = 0x2C;
constexpr LONG REG_LAST_RX_DATA       = 0x30;
constexpr LONG REG_OPTICAL_STATUS     = 0x34;
constexpr LONG REG_PHY_DEBUG_STATUS   = 0x38;
constexpr LONG REG_BOARD_TEST_STATUS  = 0x3C;
constexpr LONG REG_COMMIT_COUNT       = 0x40;
constexpr LONG REG_DECODE_STATUS      = 0x44;
constexpr LONG REG_CMD_COUNT          = 0x48;
constexpr LONG BRAM_CMD_BASE          = 0x1000;
constexpr LONG DMA_CTRL_WINDOW_BASE   = 0x1000;
constexpr LONG DMA_BRAM_WINDOW_BASE   = 0x1800;

constexpr uint32_t CTRL_COMMIT       = 0x00000001u;
constexpr uint32_t CTRL_CLEAR_STATUS = 0x00000002u;
constexpr uint32_t CFG_TX_ENABLE     = 0x00000001u;

// Device class GUID captured from the deployed machine's XDMA device.
constexpr GUID kXdmaClassGuid = {
    0xa3a4c1ce,
    0x5a80,
    0x452c,
    {0x9b, 0x51, 0xa9, 0x8e, 0xdd, 0x33, 0x78, 0xd1}
};

// XDMA 2018.2 public interface GUID from inc/xdma_public.h.
// The driver exposes a SetupDi base path; subnodes are opened by appending
// "\\user", "\\control", "\\h2c_0", "\\c2h_0", and so on.
constexpr GUID kXdmaInterfaceGuid = {
    0x74c7e4a9,
    0x6d5d,
    0x4a70,
    {0xbc, 0x0d, 0x20, 0x69, 0x1d, 0xff, 0x9e, 0x9d}
};

struct StatusSnapshot {
    uint32_t status_reg = 0;
    uint32_t tx_frame_count = 0;
    uint32_t rx_frame_count = 0;
    uint32_t match_count = 0;
    uint32_t crc_error_count = 0;
    uint32_t format_error_count = 0;
    uint32_t last_rx_seq = 0;
    uint32_t last_rx_addr = 0;
    uint32_t last_rx_data = 0;
    uint32_t optical_status = 0;
    uint32_t phy_debug_status = 0;
    uint32_t board_test_status = 0;
    uint32_t commit_count = 0;
    uint32_t decode_status = 0;
};
struct DevicePair {
    std::string write_path;
    std::string read_path;
};

enum class AccessMode {
    UserBar,
    DmaEngine
};

bool can_open_device(const char* path, DWORD access) {
    HANDLE dev = CreateFileA(path,
                             access,
                             0,
                             nullptr,
                             OPEN_EXISTING,
                             FILE_ATTRIBUTE_NORMAL,
                             nullptr);
    if (dev == INVALID_HANDLE_VALUE) {
        return false;
    }
    CloseHandle(dev);
    return true;
}


std::string to_lower_ascii(std::string text) {
    for (char& ch : text) {
        ch = static_cast<char>(std::tolower(static_cast<unsigned char>(ch)));
    }
    return text;
}

void print_device_property(HDEVINFO info, SP_DEVINFO_DATA* dev_data, DWORD property, const char* name) {
    char buffer[1024] = {};
    DWORD reg_type = 0;
    DWORD required_size = 0;
    if (SetupDiGetDeviceRegistryPropertyA(info,
                                          dev_data,
                                          property,
                                          &reg_type,
                                          reinterpret_cast<PBYTE>(buffer),
                                          sizeof(buffer),
                                          &required_size)) {
        std::printf("  %-14s: %s\n", name, buffer);
    }
}

bool print_xdma_class_devices() {
    std::printf("Scanning XDMA PnP class devices...\n");

    HDEVINFO info = SetupDiGetClassDevsA(&kXdmaClassGuid, nullptr, nullptr, DIGCF_PRESENT);
    if (info == INVALID_HANDLE_VALUE) {
        std::printf("  SetupDiGetClassDevs(DIGCF_PRESENT) failed, GetLastError=%lu\n", GetLastError());
        return false;
    }

    bool found = false;
    for (DWORD index = 0;; ++index) {
        SP_DEVINFO_DATA dev_data{};
        dev_data.cbSize = sizeof(dev_data);
        if (!SetupDiEnumDeviceInfo(info, index, &dev_data)) {
            break;
        }

        char instance_id[1024] = {};
        if (!SetupDiGetDeviceInstanceIdA(info,
                                         &dev_data,
                                         instance_id,
                                         sizeof(instance_id),
                                         nullptr)) {
            std::snprintf(instance_id, sizeof(instance_id), "<GetDeviceInstanceId failed: %lu>",
                          GetLastError());
        }

        std::printf("  [%lu]\n", static_cast<unsigned long>(index));
        print_device_property(info, &dev_data, SPDRP_FRIENDLYNAME, "FriendlyName");
        print_device_property(info, &dev_data, SPDRP_DEVICEDESC, "Description");
        print_device_property(info, &dev_data, SPDRP_SERVICE, "Service");
        print_device_property(info, &dev_data, SPDRP_HARDWAREID, "HardwareID");
        std::printf("  %-14s: %s\n", "InstanceID", instance_id);
        found = true;
    }

    if (!found) {
        std::printf("  No present XDMA class devices were found.\n");
    }

    SetupDiDestroyDeviceInfoList(info);
    return found;
}

std::vector<std::string> enumerate_dos_xdma_nodes() {
    std::vector<std::string> nodes;
    DWORD buffer_chars = 65536;

    for (;;) {
        std::vector<char> buffer(buffer_chars, '\0');
        const DWORD chars = QueryDosDeviceA(nullptr, buffer.data(), buffer_chars);
        if (chars != 0) {
            const char* name = buffer.data();
            while (*name != '\0') {
                std::string dos_name(name);
                std::string lowered = to_lower_ascii(dos_name);
                if (lowered.find("xdma") != std::string::npos ||
                    lowered.find("dma") != std::string::npos) {
                    nodes.emplace_back("\\\\.\\" + dos_name);
                }
                name += dos_name.size() + 1;
            }
            break;
        }

        if (GetLastError() != ERROR_INSUFFICIENT_BUFFER || buffer_chars >= 1024 * 1024) {
            break;
        }
        buffer_chars *= 2;
    }

    std::sort(nodes.begin(), nodes.end());
    nodes.erase(std::unique(nodes.begin(), nodes.end()), nodes.end());
    return nodes;
}


std::vector<std::string> build_user_nodes() {
    std::vector<std::string> nodes;
    for (int dev = 0; dev < 8; ++dev) {
        char buf[64];
        std::snprintf(buf, sizeof(buf), "\\\\.\\xdma%d_user", dev);
        nodes.emplace_back(buf);
    }
    return nodes;
}

std::vector<std::string> build_control_nodes() {
    std::vector<std::string> nodes;
    for (int dev = 0; dev < 8; ++dev) {
        char buf[64];
        std::snprintf(buf, sizeof(buf), "\\\\.\\xdma%d_control", dev);
        nodes.emplace_back(buf);
    }
    return nodes;
}

std::vector<std::string> build_h2c_nodes() {
    std::vector<std::string> nodes;
    for (int dev = 0; dev < 8; ++dev) {
        for (int ch = 0; ch < 4; ++ch) {
            char buf[64];
            std::snprintf(buf, sizeof(buf), "\\\\.\\xdma%d_h2c_%d", dev, ch);
            nodes.emplace_back(buf);
        }
    }
    return nodes;
}

std::vector<std::string> build_c2h_nodes() {
    std::vector<std::string> nodes;
    for (int dev = 0; dev < 8; ++dev) {
        for (int ch = 0; ch < 4; ++ch) {
            char buf[64];
            std::snprintf(buf, sizeof(buf), "\\\\.\\xdma%d_c2h_%d", dev, ch);
            nodes.emplace_back(buf);
        }
    }
    return nodes;
}

std::vector<std::string> enumerate_setupapi_interfaces() {
    std::vector<std::string> paths;

    HDEVINFO info = SetupDiGetClassDevsA(&kXdmaInterfaceGuid, nullptr, nullptr,
                                         DIGCF_PRESENT | DIGCF_DEVICEINTERFACE);
    if (info == INVALID_HANDLE_VALUE) {
        return paths;
    }

    for (DWORD index = 0;; ++index) {
        SP_DEVICE_INTERFACE_DATA if_data{};
        if_data.cbSize = sizeof(if_data);

        if (!SetupDiEnumDeviceInterfaces(info, nullptr, &kXdmaInterfaceGuid, index, &if_data)) {
            break;
        }

        DWORD required_size = 0;
        SetupDiGetDeviceInterfaceDetailA(info, &if_data, nullptr, 0, &required_size, nullptr);
        if (required_size == 0) {
            continue;
        }

        auto buffer = std::vector<unsigned char>(required_size, 0);
        auto* detail = reinterpret_cast<SP_DEVICE_INTERFACE_DETAIL_DATA_A*>(buffer.data());
        detail->cbSize = sizeof(SP_DEVICE_INTERFACE_DETAIL_DATA_A);

        if (SetupDiGetDeviceInterfaceDetailA(info, &if_data, detail, required_size,
                                             nullptr, nullptr)) {
            paths.emplace_back(detail->DevicePath);
        }
    }

    SetupDiDestroyDeviceInfoList(info);
    return paths;
}

std::vector<std::string> build_setupapi_subnodes(const std::vector<std::string>& base_paths,
                                                 const char* suffix) {
    std::vector<std::string> nodes;
    for (const auto& base : base_paths) {
        nodes.emplace_back(base + suffix);
    }
    return nodes;
}

void scan_devices() {
    std::printf("Scanning common XDMA device nodes...\n\n");

    auto user_nodes = build_user_nodes();
    auto control_nodes = build_control_nodes();
    auto h2c_nodes = build_h2c_nodes();
    auto c2h_nodes = build_c2h_nodes();
    auto setupapi_nodes = enumerate_setupapi_interfaces();
    auto setupapi_user_nodes = build_setupapi_subnodes(setupapi_nodes, "\\user");
    auto setupapi_control_nodes = build_setupapi_subnodes(setupapi_nodes, "\\control");
    auto setupapi_h2c0_nodes = build_setupapi_subnodes(setupapi_nodes, "\\h2c_0");
    auto setupapi_c2h0_nodes = build_setupapi_subnodes(setupapi_nodes, "\\c2h_0");
    auto dos_nodes = enumerate_dos_xdma_nodes();

    bool found = false;
    bool class_device_found = print_xdma_class_devices();
    std::printf("\n");

    for (const auto& path : user_nodes) {
        if (can_open_device(path.c_str(), GENERIC_READ | GENERIC_WRITE)) {
            std::printf("RW   %s\n", path.c_str());
            found = true;
        }
    }

    for (const auto& path : control_nodes) {
        if (can_open_device(path.c_str(), GENERIC_READ | GENERIC_WRITE)) {
            std::printf("RW   %s\n", path.c_str());
            found = true;
        }
    }

    for (const auto& path : h2c_nodes) {
        if (can_open_device(path.c_str(), GENERIC_WRITE)) {
            std::printf("W    %s\n", path.c_str());
            found = true;
        }
    }

    for (const auto& path : c2h_nodes) {
        if (can_open_device(path.c_str(), GENERIC_READ)) {
            std::printf("R    %s\n", path.c_str());
            found = true;
        }
    }

    for (const auto& path : setupapi_user_nodes) {
        if (can_open_device(path.c_str(), GENERIC_READ | GENERIC_WRITE)) {
            std::printf("RW   %s\n", path.c_str());
            found = true;
        }
    }

    for (const auto& path : setupapi_control_nodes) {
        if (can_open_device(path.c_str(), GENERIC_READ | GENERIC_WRITE)) {
            std::printf("RW   %s\n", path.c_str());
            found = true;
        }
    }

    for (const auto& path : setupapi_h2c0_nodes) {
        if (can_open_device(path.c_str(), GENERIC_WRITE)) {
            std::printf("W    %s\n", path.c_str());
            found = true;
        }
    }

    for (const auto& path : setupapi_c2h0_nodes) {
        if (can_open_device(path.c_str(), GENERIC_READ)) {
            std::printf("R    %s\n", path.c_str());
            found = true;
        }
    }

    if (!dos_nodes.empty()) {
        std::printf("DOS device names containing xdma/dma:\n");
        for (const auto& path : dos_nodes) {
            const bool can_rw = can_open_device(path.c_str(), GENERIC_READ | GENERIC_WRITE);
            const bool can_r = can_open_device(path.c_str(), GENERIC_READ);
            const bool can_w = can_open_device(path.c_str(), GENERIC_WRITE);
            std::printf("%s  %s\n",
                        can_rw ? "RW  " : (can_r ? "R   " : (can_w ? "W   " : "NAME")),
                        path.c_str());
            found = found || can_rw || can_r || can_w;
        }
        std::printf("\n");
    }

    for (const auto& path : setupapi_nodes) {
        std::printf("IF   %s\n", path.c_str());
        found = true;
    }

    if (!found) {
        std::printf("No common XDMA device nodes or SetupDi interfaces were found.\n");
        if (class_device_found) {
            std::printf("An XDMA PnP device is present, but no user-mode device node was found.\n");
            std::printf("This usually means the installed driver did not create AddInterface/DOS links,\n");
            std::printf("or the XDMA engine/register layout was not accepted during driver startup.\n");
        }
    }
}

DevicePair auto_detect_devices() {
    auto user_nodes = build_user_nodes();
    auto setupapi_nodes = enumerate_setupapi_interfaces();
    auto setupapi_user_nodes = build_setupapi_subnodes(setupapi_nodes, "\\user");

    // The current FPGA design exposes its command/status space through the
    // XDMA PCIe-to-AXI-Lite master. Only the "user" node maps to the user BAR.
    // Do not use the XDMA "control" node here: it is the driver's internal
    // register BAR. Do not fall back to H2C/C2H: those are DMA engines and do
    // not access the AXI-Lite command/status registers in this build.
    for (const auto& path : user_nodes) {
        if (can_open_device(path.c_str(), GENERIC_READ | GENERIC_WRITE)) {
            return {path, path};
        }
    }

    for (const auto& path : setupapi_user_nodes) {
        if (can_open_device(path.c_str(), GENERIC_READ | GENERIC_WRITE)) {
            return {path, path};
        }
    }

    return {"", ""};
}

DevicePair auto_detect_dma_devices() {
    auto h2c_nodes = build_h2c_nodes();
    auto c2h_nodes = build_c2h_nodes();
    auto setupapi_nodes = enumerate_setupapi_interfaces();
    auto setupapi_h2c0_nodes = build_setupapi_subnodes(setupapi_nodes, "\\h2c_0");
    auto setupapi_c2h0_nodes = build_setupapi_subnodes(setupapi_nodes, "\\c2h_0");

    for (const auto& write_path : h2c_nodes) {
        if (!can_open_device(write_path.c_str(), GENERIC_WRITE)) {
            continue;
        }
        for (const auto& read_path : c2h_nodes) {
            if (can_open_device(read_path.c_str(), GENERIC_READ)) {
                return {write_path, read_path};
            }
        }
    }

    for (const auto& write_path : setupapi_h2c0_nodes) {
        if (!can_open_device(write_path.c_str(), GENERIC_WRITE)) {
            continue;
        }
        for (const auto& read_path : setupapi_c2h0_nodes) {
            if (can_open_device(read_path.c_str(), GENERIC_READ)) {
                return {write_path, read_path};
            }
        }
    }

    return {"", ""};
}

bool reg_read32(HANDLE dev, LONG offset, uint32_t* value) {
    LARGE_INTEGER pos;
    DWORD bytes = 0;
    pos.QuadPart = offset;

    if (!SetFilePointerEx(dev, pos, nullptr, FILE_BEGIN)) {
        return false;
    }

    if (!ReadFile(dev, value, sizeof(*value), &bytes, nullptr)) {
        return false;
    }

    return bytes == sizeof(*value);
}

bool reg_write32(HANDLE dev, LONG offset, uint32_t value) {
    LARGE_INTEGER pos;
    DWORD bytes = 0;
    pos.QuadPart = offset;

    if (!SetFilePointerEx(dev, pos, nullptr, FILE_BEGIN)) {
        return false;
    }

    if (!WriteFile(dev, &value, sizeof(value), &bytes, nullptr)) {
        return false;
    }

    return bytes == sizeof(value);
}

LONG map_device_offset(AccessMode access_mode, LONG offset) {
    if (access_mode != AccessMode::DmaEngine) {
        return offset;
    }

    if (offset >= BRAM_CMD_BASE) {
        return DMA_BRAM_WINDOW_BASE + (offset - BRAM_CMD_BASE);
    }

    return DMA_CTRL_WINDOW_BASE + offset;
}

bool dev_read32(HANDLE dev, AccessMode access_mode, LONG offset, uint32_t* value) {
    return reg_read32(dev, map_device_offset(access_mode, offset), value);
}

bool dev_write32(HANDLE dev, AccessMode access_mode, LONG offset, uint32_t value) {
    return reg_write32(dev, map_device_offset(access_mode, offset), value);
}

bool read_snapshot(HANDLE dev, AccessMode access_mode, StatusSnapshot* snap) {
    return dev_read32(dev, access_mode, REG_STATUS, &snap->status_reg) &&
           dev_read32(dev, access_mode, REG_TX_FRAME_COUNT, &snap->tx_frame_count) &&
           dev_read32(dev, access_mode, REG_RX_FRAME_COUNT, &snap->rx_frame_count) &&
           dev_read32(dev, access_mode, REG_MATCH_COUNT, &snap->match_count) &&
           dev_read32(dev, access_mode, REG_CRC_ERROR_COUNT, &snap->crc_error_count) &&
           dev_read32(dev, access_mode, REG_FORMAT_ERROR_COUNT, &snap->format_error_count) &&
           dev_read32(dev, access_mode, REG_LAST_RX_SEQ, &snap->last_rx_seq) &&
           dev_read32(dev, access_mode, REG_LAST_RX_ADDR, &snap->last_rx_addr) &&
           dev_read32(dev, access_mode, REG_LAST_RX_DATA, &snap->last_rx_data) &&
           dev_read32(dev, access_mode, REG_OPTICAL_STATUS, &snap->optical_status) &&
           dev_read32(dev, access_mode, REG_PHY_DEBUG_STATUS, &snap->phy_debug_status) &&
           dev_read32(dev, access_mode, REG_BOARD_TEST_STATUS, &snap->board_test_status) &&
           dev_read32(dev, access_mode, REG_COMMIT_COUNT, &snap->commit_count) &&
           dev_read32(dev, access_mode, REG_DECODE_STATUS, &snap->decode_status);
}

void dump_snapshot(const StatusSnapshot& snap, const char* title) {
    std::printf("\n[%s]\n", title);
    std::printf("STATUS             : 0x%08x\n", snap.status_reg);
    std::printf("TX_FRAME_COUNT     : %u\n", snap.tx_frame_count);
    std::printf("RX_FRAME_COUNT     : %u\n", snap.rx_frame_count);
    std::printf("MATCH_COUNT        : %u\n", snap.match_count);
    std::printf("CRC_ERROR_COUNT    : %u\n", snap.crc_error_count);
    std::printf("FORMAT_ERROR_COUNT : %u\n", snap.format_error_count);
    std::printf("LAST_RX_SEQ        : %u\n", snap.last_rx_seq);
    std::printf("LAST_RX_ADDR       : 0x%08x\n", snap.last_rx_addr);
    std::printf("PHY_DEBUG_STATUS   : 0x%08x\n", snap.phy_debug_status);
    std::printf("LAST_RX_DATA       : 0x%08x\n", snap.last_rx_data);
    std::printf("OPTICAL_STATUS     : 0x%08x\n", snap.optical_status);
    std::printf("BOARD_TEST_STATUS  : 0x%08x\n", snap.board_test_status);
    std::printf("COMMIT_COUNT       : %u\n", snap.commit_count);
    std::printf("DECODE_STATUS      : 0x%08x\n", snap.decode_status);
    std::printf("  decode_seen      : %u\n", (snap.decode_status >> 0) & 0x1u);
    std::printf("  crc_ok           : %u\n", (snap.decode_status >> 1) & 0x1u);
    std::printf("  format_ok        : %u\n", (snap.decode_status >> 2) & 0x1u);
    std::printf("  match_ok         : %u\n", (snap.decode_status >> 3) & 0x1u);
    std::printf("  format_error     : %u\n", (snap.decode_status >> 4) & 0x1u);
    std::printf("  crc_error        : %u\n", (snap.decode_status >> 5) & 0x1u);
}

bool clear_status(HANDLE write_dev, AccessMode access_mode) {
    return dev_write32(write_dev, access_mode, REG_CMD_CTRL, CTRL_CLEAR_STATUS);
}

bool enable_tx(HANDLE write_dev, AccessMode access_mode) {
    return dev_write32(write_dev, access_mode, REG_CMD_CFG, CFG_TX_ENABLE);
}

bool write_command_word(HANDLE write_dev, AccessMode access_mode, uint32_t index, uint32_t addr, uint32_t data) {
    const LONG word_base = BRAM_CMD_BASE + static_cast<LONG>(index * 8u);
    return dev_write32(write_dev, access_mode, word_base + 0x0, data) &&
           dev_write32(write_dev, access_mode, word_base + 0x4, addr);
}

bool send_one(HANDLE write_dev, AccessMode access_mode, uint32_t addr, uint32_t data) {
    return write_command_word(write_dev, access_mode, 0u, addr, data) &&
           dev_write32(write_dev, access_mode, REG_CMD_COUNT, 1u) &&
           dev_write32(write_dev, access_mode, REG_CMD_CTRL, CTRL_COMMIT);
}

bool verify_single(HANDLE write_dev, HANDLE read_dev, AccessMode access_mode, uint32_t addr, uint32_t data,
                   DWORD settle_ms) {
    StatusSnapshot before;
    StatusSnapshot after;

    if (!read_snapshot(read_dev, access_mode, &before)) {
        std::printf("Failed to read pre-send status, GetLastError=%lu\n", GetLastError());
        return false;
    }

    if (!send_one(write_dev, access_mode, addr, data)) {
        std::printf("Failed to send one frame, GetLastError=%lu\n", GetLastError());
        return false;
    }

    std::this_thread::sleep_for(std::chrono::milliseconds(settle_ms));

    if (!read_snapshot(read_dev, access_mode, &after)) {
        std::printf("Failed to read post-send status, GetLastError=%lu\n", GetLastError());
        return false;
    }

    dump_snapshot(before, "Before");
    dump_snapshot(after, "After");

    const bool ok =
        after.tx_frame_count > before.tx_frame_count &&
        after.rx_frame_count > before.rx_frame_count &&
        after.match_count > before.match_count &&
        after.crc_error_count == 0 &&
        after.format_error_count == 0 &&
        after.last_rx_addr == addr &&
        after.last_rx_data == data;

    std::printf("\nSingle-frame result: %s\n", ok ? "PASS" : "FAIL");
    return ok;
}

bool run_burst(HANDLE write_dev,
               AccessMode access_mode,
               uint32_t base_addr,
               uint32_t base_data,
               uint32_t count,
               DWORD interval_ms,
               DWORD settle_ms) {
    for (uint32_t i = 0; i < count; ++i) {
        const uint32_t addr = base_addr + (i * 4u);
        const uint32_t data = base_data + i;
        if (!write_command_word(write_dev, access_mode, i, addr, data)) {
            std::printf("Failed while writing BRAM command %u, GetLastError=%lu\n", i, GetLastError());
            return false;
        }
    }

    if (!dev_write32(write_dev, access_mode, REG_CMD_COUNT, count)) {
        std::printf("Failed to write CMD_COUNT, GetLastError=%lu\n", GetLastError());
        return false;
    }

    if (!dev_write32(write_dev, access_mode, REG_CMD_CTRL, CTRL_COMMIT)) {
        std::printf("Failed to commit BRAM command burst, GetLastError=%lu\n", GetLastError());
        return false;
    }

    if (interval_ms != 0) {
        std::this_thread::sleep_for(std::chrono::milliseconds(interval_ms * count));
    }

    if (settle_ms != 0) {
        std::this_thread::sleep_for(std::chrono::milliseconds(settle_ms));
    }

    return true;
}

bool verify_burst(HANDLE write_dev,
                  HANDLE read_dev,
                  AccessMode access_mode,
                  uint32_t base_addr,
                  uint32_t base_data,
                  uint32_t count,
                  DWORD interval_ms,
                  DWORD settle_ms) {
    StatusSnapshot before;
    StatusSnapshot after;

    if (!read_snapshot(read_dev, access_mode, &before)) {
        std::printf("Failed to read pre-burst status, GetLastError=%lu\n", GetLastError());
        return false;
    }

    if (!run_burst(write_dev, access_mode, base_addr, base_data, count, interval_ms, settle_ms)) {
        return false;
    }

    if (!read_snapshot(read_dev, access_mode, &after)) {
        std::printf("Failed to read post-burst status, GetLastError=%lu\n", GetLastError());
        return false;
    }

    dump_snapshot(before, "Before Burst");
    dump_snapshot(after, "After Burst");

    const uint32_t expected_last_addr = base_addr + ((count - 1u) * 4u);
    const uint32_t expected_last_data = base_data + (count - 1u);
    const uint32_t tx_delta = after.tx_frame_count - before.tx_frame_count;
    const uint32_t rx_delta = after.rx_frame_count - before.rx_frame_count;
    const uint32_t match_delta = after.match_count - before.match_count;

    const bool ok =
        tx_delta == count &&
        rx_delta == count &&
        match_delta == count &&
        after.crc_error_count == 0 &&
        after.format_error_count == 0 &&
        after.last_rx_addr == expected_last_addr &&
        after.last_rx_data == expected_last_data;

    std::printf("\nBurst result: %s\n", ok ? "PASS" : "FAIL");
    std::printf("TX delta            : %u\n", tx_delta);
    std::printf("RX delta            : %u\n", rx_delta);
    std::printf("MATCH delta         : %u\n", match_delta);
    return ok;
}

void measure_rate(HANDLE read_dev, AccessMode access_mode, DWORD window_ms) {
    StatusSnapshot s0;
    StatusSnapshot s1;

    if (!read_snapshot(read_dev, access_mode, &s0)) {
        std::printf("Failed to read rate-start status, GetLastError=%lu\n", GetLastError());
        return;
    }

    const auto t0 = std::chrono::steady_clock::now();
    std::this_thread::sleep_for(std::chrono::milliseconds(window_ms));
    const auto t1 = std::chrono::steady_clock::now();

    if (!read_snapshot(read_dev, access_mode, &s1)) {
        std::printf("Failed to read rate-end status, GetLastError=%lu\n", GetLastError());
        return;
    }

    const double elapsed_s =
        std::chrono::duration_cast<std::chrono::duration<double>>(t1 - t0).count();
    const double tx_rate = static_cast<double>(s1.tx_frame_count - s0.tx_frame_count) / elapsed_s;
    const double rx_rate = static_cast<double>(s1.rx_frame_count - s0.rx_frame_count) / elapsed_s;
    const double match_rate = static_cast<double>(s1.match_count - s0.match_count) / elapsed_s;

    std::printf("\n[Rate Measure]\n");
    std::printf("Window              : %.3f s\n", elapsed_s);
    std::printf("TX rate             : %.3f frame/s\n", tx_rate);
    std::printf("RX rate             : %.3f frame/s\n", rx_rate);
    std::printf("MATCH rate          : %.3f frame/s\n", match_rate);
}

void print_usage(const char* exe) {
    std::printf("Usage:\n");
    std::printf("  %s [device]\n", exe);
    std::printf("  %s [device] status\n", exe);
    std::printf("  %s [device] single <addr_hex> <data_hex> [settle_ms]\n", exe);
    std::printf("  %s [device] burst <base_addr_hex> <base_data_hex> <count> [interval_ms] [settle_ms]\n", exe);
    std::printf("  %s [device] rate <window_ms>\n", exe);
    std::printf("  %s dma-status\n", exe);
    std::printf("  %s dma-single <addr_hex> <data_hex> [settle_ms]\n", exe);
    std::printf("  %s dma-burst <base_addr_hex> <base_data_hex> <count> [interval_ms] [settle_ms]\n", exe);
    std::printf("  %s dma-rate <window_ms>\n", exe);
    std::printf("  %s scan\n", exe);
    std::printf("\n");
    std::printf("Default device: auto-detect (xdma*_user / SetupDi interface user node only)\n");
    std::printf("DMA modes use h2c_0 for writes and c2h_0 for reads.\n");
    std::printf("No-argument mode is read-only status. Use 'single' or 'burst' for writes.\n");
}

bool parse_u32(const char* text, uint32_t* value) {
    char* end = nullptr;
    const unsigned long parsed = std::strtoul(text, &end, 0);
    if (end == text || *end != '\0') {
        return false;
    }
    *value = static_cast<uint32_t>(parsed);
    return true;
}

}  // namespace

int main(int argc, char* argv[]) {
    int argi = 1;
    if (argc > 1 && std::strcmp(argv[1], "scan") == 0) {
        scan_devices();
        return 0;
    }

    AccessMode access_mode = AccessMode::UserBar;
    if (argc > 1 &&
        (std::strcmp(argv[1], "dma-status") == 0 ||
         std::strcmp(argv[1], "dma-single") == 0 ||
         std::strcmp(argv[1], "dma-burst") == 0 ||
         std::strcmp(argv[1], "dma-rate") == 0)) {
        access_mode = AccessMode::DmaEngine;
    }

    std::string write_device_path = "\\\\.\\xdma0_user";
    std::string read_device_path = "\\\\.\\xdma0_user";

    if (argc > 1 &&
        (std::strncmp(argv[1], "\\\\.\\", 4) == 0 || std::strncmp(argv[1], "\\\\?\\", 4) == 0)) {
        write_device_path = argv[1];
        read_device_path = argv[1];
        argi = 2;
    } else {
        DevicePair detected =
            (access_mode == AccessMode::DmaEngine) ? auto_detect_dma_devices() : auto_detect_devices();
        if (!detected.write_path.empty()) {
            write_device_path = detected.write_path;
            read_device_path = detected.read_path;
        } else {
            if (access_mode == AccessMode::DmaEngine) {
                std::printf("No XDMA DMA engine pair was found.\n");
                std::printf("Run '%s scan' and look for h2c_0 and c2h_0 nodes.\n", argv[0]);
            } else {
                std::printf("No XDMA user BAR device node was found.\n");
                std::printf("This AXI-Lite register test must use the XDMA user node, not control/h2c/c2h.\n");
                std::printf("Use 'dma-status' or 'dma-single' for the current h2c_0/c2h_0 build.\n");
                std::printf("Run '%s scan' and look for a line ending in '\\user'.\n", argv[0]);
            }
            return 1;
        }
    }

    HANDLE write_dev = CreateFileA(write_device_path.c_str(),
                                   GENERIC_WRITE,
                                   0,
                                   nullptr,
                                   OPEN_EXISTING,
                                   FILE_ATTRIBUTE_NORMAL,
                                   nullptr);
    if (write_dev == INVALID_HANDLE_VALUE) {
        std::printf("Failed to open write device: %s, GetLastError=%lu\n",
                    write_device_path.c_str(),
                    GetLastError());
        std::printf("Tip: run '%s scan' to list common XDMA names and SetupDi interfaces.\n", argv[0]);
        return 1;
    }

    HANDLE read_dev = CreateFileA(read_device_path.c_str(),
                                  GENERIC_READ,
                                  0,
                                  nullptr,
                                  OPEN_EXISTING,
                                  FILE_ATTRIBUTE_NORMAL,
                                  nullptr);
    if (read_dev == INVALID_HANDLE_VALUE) {
        std::printf("Failed to open read device: %s, GetLastError=%lu\n",
                    read_device_path.c_str(),
                    GetLastError());
        std::printf("Tip: run '%s scan' to list common XDMA names and SetupDi interfaces.\n", argv[0]);
        CloseHandle(write_dev);
        return 1;
    }

    std::printf("Using write device: %s\n", write_device_path.c_str());
    std::printf("Using read  device: %s\n", read_device_path.c_str());

    if (argi >= argc) {
        StatusSnapshot snap;
        if (!read_snapshot(read_dev, access_mode, &snap)) {
            std::printf("Failed to read status snapshot, GetLastError=%lu\n", GetLastError());
            CloseHandle(read_dev);
            CloseHandle(write_dev);
            return 1;
        }
        dump_snapshot(snap, "Status");
        CloseHandle(read_dev);
        CloseHandle(write_dev);
        return 0;
    }

    const std::string mode = argv[argi++];
    const std::string normalized_mode =
        (mode == "dma-status") ? "status" :
        (mode == "dma-single") ? "single" :
        (mode == "dma-burst") ? "burst" :
        (mode == "dma-rate") ? "rate" :
        mode;

    if (normalized_mode == "status") {
        StatusSnapshot snap;
        if (!read_snapshot(read_dev, access_mode, &snap)) {
            std::printf("Failed to read status snapshot, GetLastError=%lu\n", GetLastError());
            CloseHandle(read_dev);
            CloseHandle(write_dev);
            return 1;
        }
        dump_snapshot(snap, "Status");
        CloseHandle(read_dev);
        CloseHandle(write_dev);
        return 0;
    }

    if (normalized_mode == "single") {
        uint32_t addr = 0;
        uint32_t data = 0;
        uint32_t settle_ms = 20;
        if (argi + 1 >= argc ||
            !parse_u32(argv[argi], &addr) ||
            !parse_u32(argv[argi + 1], &data) ||
            (argi + 2 < argc && !parse_u32(argv[argi + 2], &settle_ms))) {
            print_usage(argv[0]);
            CloseHandle(read_dev);
            CloseHandle(write_dev);
            return 1;
        }

        if (!enable_tx(write_dev, access_mode)) {
            std::printf("Failed to set tx_enable, GetLastError=%lu\n", GetLastError());
            CloseHandle(read_dev);
            CloseHandle(write_dev);
            return 1;
        }
        clear_status(write_dev, access_mode);
        const bool ok = verify_single(write_dev, read_dev, access_mode, addr, data, settle_ms);
        CloseHandle(read_dev);
        CloseHandle(write_dev);
        return ok ? 0 : 2;
    }

    if (normalized_mode == "burst") {
        uint32_t base_addr = 0;
        uint32_t base_data = 0;
        uint32_t count = 0;
        uint32_t interval_ms = 0;
        uint32_t settle_ms = 50;
        if (argi + 2 >= argc ||
            !parse_u32(argv[argi], &base_addr) ||
            !parse_u32(argv[argi + 1], &base_data) ||
            !parse_u32(argv[argi + 2], &count) ||
            (argi + 3 < argc && !parse_u32(argv[argi + 3], &interval_ms)) ||
            (argi + 4 < argc && !parse_u32(argv[argi + 4], &settle_ms))) {
            print_usage(argv[0]);
            CloseHandle(read_dev);
            CloseHandle(write_dev);
            return 1;
        }

        if (!enable_tx(write_dev, access_mode)) {
            std::printf("Failed to set tx_enable, GetLastError=%lu\n", GetLastError());
            CloseHandle(read_dev);
            CloseHandle(write_dev);
            return 1;
        }
        clear_status(write_dev, access_mode);
        const bool ok =
            verify_burst(write_dev, read_dev, access_mode, base_addr, base_data, count, interval_ms, settle_ms);
        CloseHandle(read_dev);
        CloseHandle(write_dev);
        return ok ? 0 : 2;
    }

    if (normalized_mode == "rate") {
        uint32_t window_ms = 1000;
        if (argi < argc && !parse_u32(argv[argi], &window_ms)) {
            print_usage(argv[0]);
            CloseHandle(read_dev);
            CloseHandle(write_dev);
            return 1;
        }
        measure_rate(read_dev, access_mode, window_ms);
        CloseHandle(read_dev);
        CloseHandle(write_dev);
        return 0;
    }

    print_usage(argv[0]);
    CloseHandle(read_dev);
    CloseHandle(write_dev);
    return 1;
}
