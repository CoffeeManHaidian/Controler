# Tcl 使用说明

## 目标

当前仓库已经将 Tcl 脚本简化为最小集合，保留以下两个文件：

- `setup_project.tcl`
- `report_hw_bringup_mark_debug.tcl`

其中：

- `setup_project.tcl` 是主入口脚本
- `report_hw_bringup_mark_debug.tcl` 是可选的调试辅助脚本

## 克隆项目后如何使用

从 GitHub 克隆项目后，不需要先打开现成的 `.xpr`。先将 Vivado 的当前工作目录切换到仓库根目录，再在 Tcl Console 中执行：

```tcl
source ./setup_project.tcl
```

脚本会自动完成以下工作：

1. 创建新的 Vivado 工程
2. 添加当前板级调试所需的 RTL 文件
3. 添加仿真文件
4. 添加板级约束文件
5. 添加 `gtwizard_0.xci`
6. 设置综合顶层为 `pcie_cmd_to_optical_hw_bringup_top`
7. 设置仿真顶层为 `tb_loopback_debug_block`

生成的工程默认位置为：

```text
build/vivado/Controler/Controler.xpr
```

## 推荐后续流程

执行完 `setup_project.tcl` 后，建议按下面顺序继续：

1. `Run Synthesis`
2. `Run Implementation`
3. `Generate Bitstream`

如果需要 ILA：

1. `Open Synthesized Design`
2. 执行 `Tools -> Set Up Debug`
3. 重新实现并重新生成 bitstream

## 调试辅助脚本

如果已经完成综合，并希望确认当前顶层中的 `mark_debug` 信号是否存在，可以执行：

```tcl
source ./report_hw_bringup_mark_debug.tcl
```

这个脚本会列出当前综合设计中的调试网络，并检查以下关键调试信号是否都已保留：

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

## 当前 Tcl 策略

为了保证仓库从 GitHub 克隆后即可直接使用，当前 Tcl 策略如下：

- 不依赖历史临时脚本
- 不依赖手工挑选多个 Tcl 文件
- 不依赖先打开旧工程再修修补补
- 使用单一主入口脚本重建工程

## 说明

仓库中原有的大量实验性 Tcl 脚本已经移除，避免：

- 脚本入口过多
- 不同脚本之间目标不一致
- 依赖旧版工程状态
- 克隆后无法判断该执行哪一个脚本

当前如果要搭建工程，请只执行：

```tcl
source ./setup_project.tcl
```
