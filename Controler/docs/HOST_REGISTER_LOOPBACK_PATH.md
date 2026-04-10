# 主机寄存器到 SFP+ 回环路径

## 路径说明

当前工程已经把原先的命令 FIFO 改成了 BRAM 路径：

`上位机/XDMA -> AXI Interconnect -> AXI BRAM Controller -> 命令 BRAM -> 光口发送 -> 光纤回环 -> GTX 接收 -> 解包校验 -> 状态寄存器 -> 上位机读回`

其中主控模块为：

- `axil_interconnect_1x2`
- `axil_bram_ctrl_simple`
- `cmd_bram_dual_port`
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

其中 `pcie_cmd_to_optical_axil_loopback_top` 现在已经整理成：

- 一个 AXI-Lite 控制寄存器从设备
- 一个 AXI-Lite BRAM 控制从设备
- 中间通过 `axil_interconnect_1x2` 做地址分流

## 寄存器映射

### 可写寄存器

- `0x0000_0000`
  - `CMD_ADDR`
  - 兼容保留寄存器，当前主路径不再依赖它触发发送

- `0x0000_0004`
  - `CMD_DATA`
  - 兼容保留寄存器，当前主路径不再依赖它触发发送

- `0x0000_0008`
  - `CMD_CTRL`
  - `bit0 = commit`
  - `bit1 = clear_status`

- `0x0000_000C`
  - `CMD_CFG`
  - `bit0 = tx_enable`
  - `bit9:8 = test_mode`

- `0x0000_0048`
  - `CMD_COUNT`
  - 一次提交时要从命令 BRAM 中读取并发送的命令条数

### 命令 BRAM 区

- `0x0000_1000 + N * 8 + 0x0`
  - 第 `N` 条命令的 `CMD_DATA`

- `0x0000_1000 + N * 8 + 0x4`
  - 第 `N` 条命令的 `CMD_ADDR`

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

- `0x0000_0044`
  - `DECODE_STATUS`
  - `bit0 = decode_seen`
  - `bit1 = crc_ok`
  - `bit2 = format_ok`
  - `bit3 = match_ok`
  - `bit4 = format_error`
  - `bit5 = crc_error`

- `0x0000_0048`
  - `CMD_COUNT`

## 推荐主机测试流程

### 发送一帧

1. 写 `0x0000_000C = 0x0000_0001`
   - 使能 `tx_enable`

2. 写命令 BRAM：
   - `0x0000_1000 = <data0>`
   - `0x0000_1004 = <addr0>`

3. 写 `0x0000_0048 = 0x0000_0001`
   - 表示本次从 BRAM 读取 1 条命令

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
- `0x0000_0044`

成功判据：

- `TX_FRAME_COUNT` 增加
- `RX_FRAME_COUNT` 增加
- `MATCH_COUNT` 增加
- `CRC_ERROR_COUNT = 0`
- `FORMAT_ERROR_COUNT = 0`
- `LAST_RX_ADDR == 写入地址`
- `LAST_RX_DATA == 写入数据`
- `DECODE_STATUS.bit3 == 1`（最近一帧解包且匹配成功）

## 现有顶层的使用建议

- 板上自激励调试：
  - `pcie_cmd_to_optical_hw_bringup_top`

- 主机寄存器控制路径：
  - `pcie_cmd_to_optical_host_loopback_top`

- AXI-Lite 控制路径：
  - `pcie_cmd_to_optical_axil_loopback_top`

- PCIe/XDMA + AXI-Lite + BRAM 路径：
  - `pcie_xdma_axil_sfp_loopback_top`

前者适合快速 bring-up，后者适合接回上位机做完整闭环验证。
