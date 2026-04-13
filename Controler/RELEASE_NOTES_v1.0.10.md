# v1.0.10

## 修复内容

- 修正临时 bitstream DRC 降级脚本中的 DRC 名称拼写：从错误的 `UCO-1` 改为 Vivado 实际使用的 `UCIO-1`。
- 同时对可能出现的 `NSTD-1` 做临时 Warning 降级处理。
- 在 `pcie_xdma_sfp_loopback_top.xdc` 中使用正确的 `UCIO-1`。
- 新增 `scripts/generate_bitstream_allow_unconstrained_sfp.tcl`，用于在已完成 implementation 后直接打开 `impl_1`、降级 DRC 并写出 bitstream。
- 新增 `scripts/apply_bitgen_hook_to_current_project.tcl`，用于给当前已打开 Vivado 工程挂载 bitstream pre-hook。

## 推荐使用方式

如果 GUI `Generate Bitstream` 仍然报 `UCIO-1`，在 Vivado Tcl Console 执行：

```tcl
source D:/Controler/Controler/scripts/generate_bitstream_allow_unconstrained_sfp.tcl
```

该脚本会生成：

```text
D:/Controler/Controler/build/bitstream/<design>_allow_unconstrained_sfp.bit
```

## 重要说明

该版本仍然是临时 bring-up 版本，用于未确认 SFP GTX 管脚时先验证 PCIe/XDMA/BRAM/内部逻辑。

真实 SFP 光口测试前，必须根据板卡原理图或官方 XDC 补齐 `SFP_RX_P/N`、`SFP_TX_P/N` 的真实封装管脚，并移除临时 DRC 降级策略。

## 附件

- `xdma_loopback_verify_win.exe`
- `xdma_tools_win64_v1.0.10.zip`
