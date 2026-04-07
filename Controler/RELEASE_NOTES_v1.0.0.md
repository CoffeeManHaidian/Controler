# v1.0.0 发布说明

## 概述

`v1.0.0` 是当前工程的首个正式发布版本，标志着项目已经收敛到一条清晰、可复现、可上板调试的主路径。

本版本的核心目标是：

- 固化当前可工作的光口发送与回环调试方案
- 明确板级 bring-up 顶层
- 提供可从 GitHub 克隆后直接搭建工程的 Tcl 入口
- 补齐上板、ILA、回环验证的操作文档

## 本版本包含的核心能力

### 1. 板级主路径稳定

当前推荐的上板顶层为：

- `pcie_cmd_to_optical_hw_bringup_top`

该顶层具备以下能力：

- 板内自激励发命令
- 连续发送测试帧
- 默认启用回环调试
- 适合优先做光链路和协议闭环验证

### 2. 自定义光协议发送链打通

主链路已经收敛为：

`命令写入 -> FIFO -> 自定义光协议帧 -> 32bit GTX 字 -> 异步 FIFO -> gtwizard_0 -> SFP`

对应关键模块包括：

- `pcie_bar_cmd_rx.v`
- `custom_optical_tx.v`
- `optical_stream_to_gtx32.v`
- `async_gtx_word_fifo.v`
- `custom_gtx_phy_gtwizard0.v`

### 3. 回环调试链可用

调试模式下已经支持：

- GTX 接收数据回取
- 32bit 到 64bit 重组
- 协议解码
- CRC/格式检查
- 匹配计数

对应关键模块包括：

- `gtx_rx32_to_stream64.v`
- `optical_cmd_rx.v`
- `loopback_checker.v`
- `loopback_debug_block.v`

### 4. 连续递增地址与数据发送

当前自激励顶层已更新为：

- 地址按 `+4` 连续递增
- 数据按 `+1` 连续递增

便于上板后从接收侧直接判断系统是否稳定连续运行。

### 5. 调试观测点已整理

当前关键内部信号已经以 `mark_debug` 形式保留，包括：

- `tx_frame_count_dbg`
- `gtx_tx_word_count_dbg`
- `rx_frame_count_dbg`
- `match_count_dbg`
- `crc_error_count_dbg`
- `format_error_count_dbg`
- `last_rx_seq_dbg`
- `last_rx_addr_dbg`
- `last_rx_data_dbg`
- `board_test_status_dbg`

### 6. Tcl 入口简化

本版本将历史上分散的 Tcl 脚本收敛为最小集合：

- `setup_project.tcl`
- `report_hw_bringup_mark_debug.tcl`

其中：

- `setup_project.tcl` 用于从仓库根目录一键重建 Vivado 工程
- `report_hw_bringup_mark_debug.tcl` 用于综合后检查调试网络

## 文档与使用说明

本版本补齐了以下关键文档：

- `docs/BOARD_LOOPBACK_BRINGUP.md`
- `docs/GENERATE_ILA_LTX_FOR_HW_BRINGUP.md`
- `TCL_USAGE.md`

文档内容覆盖：

- 上板步骤
- 回环验证方法
- ILA 和 `.ltx` 生成流程
- Tcl 使用方式

## GitHub 克隆后的推荐使用方式

在 Vivado Tcl Console 中执行：

```tcl
source ./setup_project.tcl
```

然后按顺序执行：

1. `Run Synthesis`
2. `Run Implementation`
3. `Generate Bitstream`

如果需要 ILA：

1. `Open Synthesized Design`
2. `Tools -> Set Up Debug`
3. 重新实现并重新生成 bitstream

## 已知边界

本版本仍然以实验验证和板级 bring-up 为主，不包含：

- 完整的主机侧在线寄存器控制发布流程
- 面向最终产品化的稳定 GUI/Host 工具链
- 自动化 GitHub Actions 构建流程

## 推荐验收现象

如果版本运行正常，建议至少确认以下现象：

- `phy_channel_up`、`phy_tx_resetdone`、`phy_rx_resetdone` 正常
- `tx_frame_count_dbg` 持续增加
- `rx_frame_count_dbg` 持续增加
- `match_count_dbg` 持续增加
- `crc_error_count_dbg = 0`
- `format_error_count_dbg = 0`
- `last_rx_addr_dbg` 按 `+4` 递增
- `last_rx_data_dbg` 按 `+1` 递增
