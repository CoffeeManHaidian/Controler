# 当前上板顶层生成 ILA 和 LTX 的说明

## 目的

本文档说明如何基于当前上板顶层：

- `pcie_cmd_to_optical_hw_bringup_top`

插入 ILA 调试核，并生成可在 Hardware Manager 中使用的：

- `.bit`
- `.ltx`

当前 RTL 中已经对关键内部信号添加了：

```verilog
(* mark_debug = "true" *)
```

这表示这些信号会被保留下来，方便后续插入 ILA，但这本身还不等于已经生成了可用的 `.ltx`。

## 一个重要说明

只有 `mark_debug` 还不够。

如果你希望在 Hardware Manager 中按信号名观察 ILA，通常需要：

- `.bit`
- `.ltx`

其中：

- `.bit` 是 FPGA 下载文件
- `.ltx` 是 ILA 探针描述文件

`.ltx` 只有在当前顶层真正插入了 ILA 并重新实现之后才会生成。

## 当前推荐顶层

当前建议使用的上板顶层是：

- `pcie_cmd_to_optical_hw_bringup_top`

除非你明确要切回独立的 BD 调试设计，否则不要再使用：

- `loopback_debug_bd_wrapper`

作为当前上板路径。

## 当前已经打上 `mark_debug` 的信号

当前上板顶层中已经标记的调试信号包括：

- `status_reg_dbg`
- `tx_frame_count_dbg`
- `optical_status_dbg`
- `gtx_tx_word_count_dbg`
- `phy_debug_status_dbg`
- `rx_frame_count_dbg`
- `crc_error_count_dbg`
- `format_error_count_dbg`
- `match_count_dbg`
- `last_rx_seq_dbg`
- `last_rx_addr_dbg`
- `last_rx_data_dbg`
- `board_test_status_dbg`

## 推荐的 Vivado 操作流程

### 1. 先跑综合

先执行：

1. `Run Synthesis`
2. 等待综合完成

### 2. 打开综合后设计

在 Vivado 中执行：

1. `Open Synthesized Design`

### 3. 先确认 `mark_debug` 信号都在

推荐先打开 Tcl Console，执行：

```tcl
source ./report_hw_bringup_mark_debug.tcl
```

这个脚本会列出当前综合设计中所有带 `MARK_DEBUG` 的网络，并检查我们预期的调试信号是否都存在。

### 4. 通过 `Set Up Debug` 插入 ILA

在 Vivado 中执行：

1. 选择 `Tools -> Set Up Debug`
2. 选择当前设计里带 `mark_debug` 的信号
3. 选择对应时钟域
4. 让 Vivado 自动创建一个 ILA
5. 采样深度建议设置为 `1024` 或 `2048`
6. 完成调试插入

建议优先加入以下信号：

- `status_reg_dbg`
- `tx_frame_count_dbg`
- `optical_status_dbg`
- `gtx_tx_word_count_dbg`
- `phy_debug_status_dbg`
- `rx_frame_count_dbg`
- `crc_error_count_dbg`
- `format_error_count_dbg`
- `match_count_dbg`
- `last_rx_seq_dbg`
- `last_rx_addr_dbg`
- `last_rx_data_dbg`
- `board_test_status_dbg`

### 5. 保存插入调试后的设计

插入 ILA 后：

1. 保存设计
2. 如果 Vivado 提示关闭当前综合视图，按提示继续

### 6. 重新实现并生成 bit

继续执行：

1. `Run Implementation`
2. `Generate Bitstream`

完成后，Vivado 通常会生成：

- 新的 `.bit`
- 匹配当前设计的 `.ltx`

## 在 Hardware Manager 中的使用方式

在 Hardware Manager 中：

1. 打开目标硬件
2. 使用新的 `.bit` 下载到 FPGA
3. 如果 Vivado 没有自动关联 probes，就手动加载对应的 `.ltx`

当 `.ltx` 正确加载后，你就可以在 ILA 中按信号名看到这些内部调试量，而不是只看到匿名 probe。

## 如果没有生成 `.ltx`

请依次检查：

1. 是否真的插入了 ILA，而不只是添加了 `mark_debug`
2. 插入 ILA 后是否重新跑了实现
3. 是否重新生成了 bitstream
4. 下载到板子的是否是最新的调试版本 bit 文件

## 推荐优先观察的信号

生成 `.ltx` 后，建议优先观察：

1. `board_test_status_dbg`
2. `phy_debug_status_dbg`
3. `tx_frame_count_dbg`
4. `gtx_tx_word_count_dbg`
5. `rx_frame_count_dbg`
6. `match_count_dbg`
7. `crc_error_count_dbg`
8. `format_error_count_dbg`
9. `last_rx_seq_dbg`
10. `last_rx_addr_dbg`
11. `last_rx_data_dbg`

## 推荐的抓波目标

如果当前回环链路工作正常，理想现象应为：

- 发送计数持续增长
- 接收计数持续增长
- 匹配计数持续增长
- CRC 错误计数始终为 0
- 格式错误计数始终为 0
