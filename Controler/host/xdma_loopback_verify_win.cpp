#include <windows.h>

#include <chrono>
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <string>
#include <thread>

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

constexpr uint32_t CTRL_COMMIT       = 0x00000001u;
constexpr uint32_t CTRL_CLEAR_STATUS = 0x00000002u;
constexpr uint32_t CFG_TX_ENABLE     = 0x00000001u;

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
};

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

bool read_snapshot(HANDLE dev, StatusSnapshot* snap) {
    return reg_read32(dev, REG_STATUS, &snap->status_reg) &&
           reg_read32(dev, REG_TX_FRAME_COUNT, &snap->tx_frame_count) &&
           reg_read32(dev, REG_RX_FRAME_COUNT, &snap->rx_frame_count) &&
           reg_read32(dev, REG_MATCH_COUNT, &snap->match_count) &&
           reg_read32(dev, REG_CRC_ERROR_COUNT, &snap->crc_error_count) &&
           reg_read32(dev, REG_FORMAT_ERROR_COUNT, &snap->format_error_count) &&
           reg_read32(dev, REG_LAST_RX_SEQ, &snap->last_rx_seq) &&
           reg_read32(dev, REG_LAST_RX_ADDR, &snap->last_rx_addr) &&
           reg_read32(dev, REG_LAST_RX_DATA, &snap->last_rx_data) &&
           reg_read32(dev, REG_OPTICAL_STATUS, &snap->optical_status) &&
           reg_read32(dev, REG_PHY_DEBUG_STATUS, &snap->phy_debug_status) &&
           reg_read32(dev, REG_BOARD_TEST_STATUS, &snap->board_test_status) &&
           reg_read32(dev, REG_COMMIT_COUNT, &snap->commit_count);
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
    std::printf("LAST_RX_DATA       : 0x%08x\n", snap.last_rx_data);
    std::printf("OPTICAL_STATUS     : 0x%08x\n", snap.optical_status);
    std::printf("PHY_DEBUG_STATUS   : 0x%08x\n", snap.phy_debug_status);
    std::printf("BOARD_TEST_STATUS  : 0x%08x\n", snap.board_test_status);
    std::printf("COMMIT_COUNT       : %u\n", snap.commit_count);
}

bool clear_status(HANDLE dev) {
    return reg_write32(dev, REG_CMD_CTRL, CTRL_CLEAR_STATUS);
}

bool enable_tx(HANDLE dev) {
    return reg_write32(dev, REG_CMD_CFG, CFG_TX_ENABLE);
}

bool send_one(HANDLE dev, uint32_t addr, uint32_t data) {
    return reg_write32(dev, REG_CMD_ADDR, addr) &&
           reg_write32(dev, REG_CMD_DATA, data) &&
           reg_write32(dev, REG_CMD_CTRL, CTRL_COMMIT);
}

bool verify_single(HANDLE dev, uint32_t addr, uint32_t data, DWORD settle_ms) {
    StatusSnapshot before;
    StatusSnapshot after;

    if (!read_snapshot(dev, &before)) {
        std::printf("Failed to read pre-send status, GetLastError=%lu\n", GetLastError());
        return false;
    }

    if (!send_one(dev, addr, data)) {
        std::printf("Failed to send one frame, GetLastError=%lu\n", GetLastError());
        return false;
    }

    std::this_thread::sleep_for(std::chrono::milliseconds(settle_ms));

    if (!read_snapshot(dev, &after)) {
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

bool run_burst(HANDLE dev,
               uint32_t base_addr,
               uint32_t base_data,
               uint32_t count,
               DWORD interval_ms,
               DWORD settle_ms) {
    for (uint32_t i = 0; i < count; ++i) {
        const uint32_t addr = base_addr + (i * 4u);
        const uint32_t data = base_data + i;
        if (!send_one(dev, addr, data)) {
            std::printf("Failed at burst frame %u, GetLastError=%lu\n", i, GetLastError());
            return false;
        }

        if (interval_ms != 0) {
            std::this_thread::sleep_for(std::chrono::milliseconds(interval_ms));
        }
    }

    if (settle_ms != 0) {
        std::this_thread::sleep_for(std::chrono::milliseconds(settle_ms));
    }

    return true;
}

bool verify_burst(HANDLE dev,
                  uint32_t base_addr,
                  uint32_t base_data,
                  uint32_t count,
                  DWORD interval_ms,
                  DWORD settle_ms) {
    StatusSnapshot before;
    StatusSnapshot after;

    if (!read_snapshot(dev, &before)) {
        std::printf("Failed to read pre-burst status, GetLastError=%lu\n", GetLastError());
        return false;
    }

    if (!run_burst(dev, base_addr, base_data, count, interval_ms, settle_ms)) {
        return false;
    }

    if (!read_snapshot(dev, &after)) {
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

void measure_rate(HANDLE dev, DWORD window_ms) {
    StatusSnapshot s0;
    StatusSnapshot s1;

    if (!read_snapshot(dev, &s0)) {
        std::printf("Failed to read rate-start status, GetLastError=%lu\n", GetLastError());
        return;
    }

    const auto t0 = std::chrono::steady_clock::now();
    std::this_thread::sleep_for(std::chrono::milliseconds(window_ms));
    const auto t1 = std::chrono::steady_clock::now();

    if (!read_snapshot(dev, &s1)) {
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
    std::printf("  %s [device] single <addr_hex> <data_hex> [settle_ms]\n", exe);
    std::printf("  %s [device] burst <base_addr_hex> <base_data_hex> <count> [interval_ms] [settle_ms]\n", exe);
    std::printf("  %s [device] rate <window_ms>\n", exe);
    std::printf("\n");
    std::printf("Default device: \\\\.\\xdma0_user\n");
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
    const char* device_path = "\\\\.\\xdma0_user";
    int argi = 1;

    if (argc > 1 && std::strncmp(argv[1], "\\\\.\\", 4) == 0) {
        device_path = argv[1];
        argi = 2;
    }

    HANDLE dev = CreateFileA(device_path,
                             GENERIC_READ | GENERIC_WRITE,
                             0,
                             nullptr,
                             OPEN_EXISTING,
                             FILE_ATTRIBUTE_NORMAL,
                             nullptr);
    if (dev == INVALID_HANDLE_VALUE) {
        std::printf("Failed to open device: %s, GetLastError=%lu\n", device_path, GetLastError());
        return 1;
    }

    std::printf("Using device: %s\n", device_path);

    if (!enable_tx(dev)) {
        std::printf("Failed to set tx_enable, GetLastError=%lu\n", GetLastError());
        CloseHandle(dev);
        return 1;
    }

    if (argi >= argc) {
        clear_status(dev);
        const bool ok = verify_burst(dev, 0x00001000u, 0xA5A50000u, 100u, 2u, 50u);
        measure_rate(dev, 1000);
        CloseHandle(dev);
        return ok ? 0 : 2;
    }

    const std::string mode = argv[argi++];

    if (mode == "single") {
        uint32_t addr = 0;
        uint32_t data = 0;
        uint32_t settle_ms = 20;
        if (argi + 1 >= argc ||
            !parse_u32(argv[argi], &addr) ||
            !parse_u32(argv[argi + 1], &data) ||
            (argi + 2 < argc && !parse_u32(argv[argi + 2], &settle_ms))) {
            print_usage(argv[0]);
            CloseHandle(dev);
            return 1;
        }

        clear_status(dev);
        const bool ok = verify_single(dev, addr, data, settle_ms);
        CloseHandle(dev);
        return ok ? 0 : 2;
    }

    if (mode == "burst") {
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
            CloseHandle(dev);
            return 1;
        }

        clear_status(dev);
        const bool ok = verify_burst(dev, base_addr, base_data, count, interval_ms, settle_ms);
        CloseHandle(dev);
        return ok ? 0 : 2;
    }

    if (mode == "rate") {
        uint32_t window_ms = 1000;
        if (argi < argc && !parse_u32(argv[argi], &window_ms)) {
            print_usage(argv[0]);
            CloseHandle(dev);
            return 1;
        }
        measure_rate(dev, window_ms);
        CloseHandle(dev);
        return 0;
    }

    print_usage(argv[0]);
    CloseHandle(dev);
    return 1;
}
