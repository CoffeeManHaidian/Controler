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
6. 添加项目内 XDMA IP 及其生成文件
7. 设置综合顶层为 `pcie_xdma_axil_sfp_loopback_top`
8. 设置仿真顶层为 `tb_host_register_loopback`

生成的工程默认位置为：

```text
build/vivado/Controler/Controler.xpr
```

默认策略说明：

- 综合顶层默认走 PCIe XDMA + AXI-Lite 主机寄存器回环版本
- 仿真顶层默认切到主机寄存器回环验证版本

如果后续要切到板上自激励 bring-up 顶层，可以在 Vivado 中把综合顶层改成：

```text
pcie_cmd_to_optical_hw_bringup_top
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

## XDMA 参考 IP 的自动接入

`setup_project.tcl` 现在会尝试自动检测并加入这个参考工程中的 XDMA IP：

```text
D:/FPGA/No.226_pcie_xdma_sys_x8_5g/No.226_pcie_xdma_sys_x8_5g.srcs/sources_1/bd/xdma_sys/ip/xdma_sys_xdma_0_0/xdma_sys_xdma_0_0.xci
```

如果该文件存在，脚本会：

1. 自动把 `xdma_sys_xdma_0_0.xci` 加入当前工程
2. 自动生成该 IP 的输出目标

如果该文件不存在，也不会影响普通 bring-up 路线，只是 PCIe XDMA 顶层暂时不能综合。

从 `v1.0.5` 开始，仓库还会携带 `xdma_sys_xdma_0_0` 的项目内生成文件，避免只靠 `.xci` 在部署机上重新生成时出现端口版本不一致。

## 当前综合顶层策略

默认综合顶层现在是：

```text
pcie_xdma_axil_sfp_loopback_top
```

这样可以直接进入当前推荐的主机寄存器回环测试路径。

如果你要切到板上自激励 bring-up 路线，请在 Vivado 中把综合顶层改成：

```text
pcie_cmd_to_optical_hw_bringup_top
```
