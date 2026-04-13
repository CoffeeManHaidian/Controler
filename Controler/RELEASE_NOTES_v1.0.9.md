# v1.0.9

## 修复内容

- 新增 `scripts/allow_unconstrained_sfp_bitgen.tcl`，用于临时将 bitstream 阶段的 `UCO-1` DRC 从 Error 降为 Warning。
- 在 `setup_project.tcl` 中自动把该脚本挂到 `impl_1` 的 `STEPS.WRITE_BITSTREAM.TCL.PRE`。
- 解决未确认 SFP GTX 真实管脚时，`SFP_RX_N/SFP_RX_P/SFP_TX_N/SFP_TX_P` 未约束导致 bitstream 无法生成的问题。

## 重要说明

该版本用于 PCIe/XDMA/BRAM/内部逻辑 bring-up，不代表 SFP 物理链路已经完成最终管脚约束。

真实 SFP 上板测试前，仍然必须根据板卡原理图或官方 XDC 补齐 `SFP_RX_P/N`、`SFP_TX_P/N` 的真实高速收发器封装管脚，并移除或停用该临时 DRC 降级策略。

## 当前 Vivado 工程手动使用方法

如果工程已经打开且没有重新运行 `setup_project.tcl`，可在 Vivado Tcl Console 执行：

```tcl
set_property STEPS.WRITE_BITSTREAM.TCL.PRE D:/Controler/Controler/scripts/allow_unconstrained_sfp_bitgen.tcl [get_runs impl_1]
```

然后重新 `Generate Bitstream`。

## 附件

- `xdma_loopback_verify_win.exe`
- `xdma_tools_win64_v1.0.9.zip`
