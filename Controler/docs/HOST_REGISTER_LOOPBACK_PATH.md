# 主机寄存器到 SFP+ 回环路径

## 路径说明

当前工程在原有发送/回环链路基础上，补齐了可读写寄存器路径：

`上位机写寄存器 -> 命令寄存器 -> 命令 FIFO -> 光口发送 -> 光纤回环 -> GTX 接收 -> 解包校验 -> 状态寄存器 -> 上位机读回`

其中主控模块为：

- `axil_to_host_regs`
- `pcie_bar_cmd_rx`
- `pcie_cmd_to_optical_top`
- `pcie_cmd_to_optical_gtx_top`
- `pcie_cmd_to_optical_board_top`
- `pcie_cmd_to_optical_host_loopback_top`
- `pcie_cmd_to_optical_axil_loopback_top`

## 主机侧抽象接口

`pcie_cmd_to_optical_host_loopback_top` 提供一组简单的主机接口：

- `host_wr_en`
- `host_wr_addr[31:0]`
- `host_wr_data[31:0]`
- `host_rd_en`
- `host_rd_addr[31:0]`
- `host_rd_data[31:0]`

这组接口可以后续接到 PCIe BAR、AXI-Lite 适配层或测试激励。

## AXI-Lite 适配层

当前工程已经补了 AXI-Lite 从接口桥接模块：

- `axil_to_host_regs`
- `pcie_cmd_to_optical_axil_loopback_top`

其中 `pcie_cmd_to_optical_axil_loopback_top` 直接暴露标准 32-bit AXI-Lite 从接口：

- `s_axil_awaddr/awprot/awvalid/awready`
- `s_axil_wdata/wstrb/wvalid/wready`
- `s_axil_bresp/bvalid/bready`
- `s_axil_araddr/arprot/arvalid/arready`
- `s_axil_rdata/rresp/rvalid/rready`

这层的目的不是替代 XDMA，而是把当前工程先整理成可以直接挂到 XDMA `M_AXI_LITE` 的结构。

注意：

- 目前这版适配层默认将 `s_axil_aclk` 同时作为内部控制时钟
- 后续如果 XDMA 实际控制时钟与板级发送控制时钟不同，建议在 XDMA 接入时再加 AXI Clock Converter 或 CDC 处理

## 寄存器映射

### 可写寄存器

- `0x0000_0000`
  - `CMD_ADDR`
  - 写入待发送的业务地址

- `0x0000_0004`
  - `CMD_DATA`
  - 写入待发送的业务数据

- `0x0000_0008`
  - `CMD_CTRL`
  - `bit0 = commit`
  - `bit1 = clear_status`

- `0x0000_000C`
  - `CMD_CFG`
  - `bit0 = tx_enable`
  - `bit9:8 = test_mode`

### 可读寄存器

- `0x0000_0000`
  - `CMD_ADDR`

- `0x0000_0004`
  - `CMD_DATA`

- `0x0000_0008`
  - `CMD_CTRL`
  - 当前返回 `{30'd0, fifo_full, tx_enable}`

- `0x0000_000C`
  - `CMD_CFG`

- `0x0000_0010`
  - `STATUS`

- `0x0000_0014`
  - `TX_FRAME_COUNT`

- `0x0000_0018`
  - `RX_FRAME_COUNT`

- `0x0000_001C`
  - `MATCH_COUNT`

- `0x0000_0020`
  - `CRC_ERROR_COUNT`

- `0x0000_0024`
  - `FORMAT_ERROR_COUNT`

- `0x0000_0028`
  - `LAST_RX_SEQ`

- `0x0000_002C`
  - `LAST_RX_ADDR`

- `0x0000_0030`
  - `LAST_RX_DATA`

- `0x0000_0034`
  - `OPTICAL_STATUS`

- `0x0000_0038`
  - `PHY_DEBUG_STATUS`

- `0x0000_003C`
  - `BOARD_TEST_STATUS`

- `0x0000_0040`
  - `COMMIT_COUNT`

## 推荐主机测试流程

### 发送一帧

1. 写 `0x0000_000C = 0x0000_0001`
   - 使能 `tx_enable`

2. 写 `0x0000_0000 = <addr>`
   - 设置业务地址

3. 写 `0x0000_0004 = <data>`
   - 设置业务数据

4. 写 `0x0000_0008 = 0x0000_0001`
   - 触发一次发送

### 清零统计

1. 写 `0x0000_0008 = 0x0000_0002`

这会清零发送/接收相关统计计数。

### 回环是否成功

发送后读取：

- `0x0000_0014`
- `0x0000_0018`
- `0x0000_001C`
- `0x0000_0020`
- `0x0000_0024`
- `0x0000_002C`
- `0x0000_0030`

成功判据：

- `TX_FRAME_COUNT` 增加
- `RX_FRAME_COUNT` 增加
- `MATCH_COUNT` 增加
- `CRC_ERROR_COUNT = 0`
- `FORMAT_ERROR_COUNT = 0`
- `LAST_RX_ADDR == 写入地址`
- `LAST_RX_DATA == 写入数据`

## 现有顶层的使用建议

- 板上自激励调试：
  - `pcie_cmd_to_optical_hw_bringup_top`

- 主机寄存器控制路径：
  - `pcie_cmd_to_optical_host_loopback_top`

- AXI-Lite 控制路径：
  - `pcie_cmd_to_optical_axil_loopback_top`

前者适合快速 bring-up，后者适合接回上位机做完整闭环验证。
