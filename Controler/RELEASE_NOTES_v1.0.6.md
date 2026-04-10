# v1.0.6 发布说明

## 概述

`v1.0.6` 将原本依赖 FIFO 的命令发送路径重构为：

`XDMA -> AXI Interconnect -> AXI BRAM Controller -> BRAM -> custom_optical_tx_bram`

同时，GTX 发送跨时钟缓存也进一步去 FIFO 化，改成了轻量的异步邮箱桥结构，用于命令式回环验证。

## 本版本重点变更

### 1. 命令路径改为 BRAM 架构

新增模块：
- `axil_interconnect_1x2`
- `axil_bram_ctrl_simple`
- `cmd_bram_dual_port`
- `custom_optical_tx_bram`
- `cmd_bram_queue`

当前主机到发送链的结构变为：
- XDMA AXI-Lite 主口进入 `axil_interconnect_1x2`
- 控制寄存器区走 `axil_to_host_regs`
- 命令区走 `axil_bram_ctrl_simple`
- 命令写入 `cmd_bram_dual_port` BRAM
- `custom_optical_tx_bram` 从 BRAM 顺序读取命令并发帧

### 2. 主机工具改为写命令 BRAM

`xdma_loopback_verify_win.exe` 已改为：
- 向 `0x1000 + N*8` 命令 BRAM 区写入命令
- 使用 `0x48 (CMD_COUNT)` 指定本次发送的命令条数
- 通过 `0x08 (CMD_CTRL.bit0)` 触发一次批量发送

### 3. GTX 跨时钟路径去 FIFO 化

`async_gtx_word_fifo.v` 保留了原模块名以减少工程改动，但内部已经不再使用 FIFO，而是：
- 单字异步邮箱
- request/ack 切换握手
- 用于 `SYSCLK` 到 `tx_usrclk2_out` 的命令式跨时钟发送

### 4. 发送打包模块增加反压支持

`optical_stream_to_gtx32.v` 新增 `gtx_tx_ready`，发送端现在会等待下游 ready，再输出 32-bit GTX 字，和新的非 FIFO 邮箱桥配合工作。

### 5. 文档同步更新

已更新：
- `docs/HOST_REGISTER_LOOPBACK_PATH.md`
- `docs/WINDOWS_HOST_LOOPBACK_VERIFY.md`

文档内容已经切到 BRAM 命令区模型。

## 新的主机访问方式

### 控制寄存器
- `0x08` `CMD_CTRL`
- `0x0C` `CMD_CFG`
- `0x48` `CMD_COUNT`

### 命令 BRAM 区
- `0x1000 + N*8 + 0x0` -> `CMD_DATA`
- `0x1000 + N*8 + 0x4` -> `CMD_ADDR`

### 状态回读
- `0x14` `TX_FRAME_COUNT`
- `0x18` `RX_FRAME_COUNT`
- `0x1C` `MATCH_COUNT`
- `0x20` `CRC_ERROR_COUNT`
- `0x24` `FORMAT_ERROR_COUNT`
- `0x2C` `LAST_RX_ADDR`
- `0x30` `LAST_RX_DATA`
- `0x44` `DECODE_STATUS`

## 验证建议

1. 主机写 `0x0C = 0x1` 使能发送
2. 主机向命令 BRAM 区写入 1 条或多条命令
3. 写 `0x48 = <命令条数>`
4. 写 `0x08 = 0x1` 提交发送
5. 读取状态寄存器判断回环是否成功

成功判据：
- `TX_FRAME_COUNT` 增加
- `RX_FRAME_COUNT` 增加
- `MATCH_COUNT` 增加
- `CRC_ERROR_COUNT = 0`
- `FORMAT_ERROR_COUNT = 0`
- `LAST_RX_ADDR` 与 `LAST_RX_DATA` 和最后一条命令一致
- `DECODE_STATUS.bit3 == 1`
