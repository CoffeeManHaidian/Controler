# v1.0.8

## 修复内容

- 修复 `pcie_xdma_sfp_loopback_top` 中 XDMA 未使用 AXI-Lite Master 返回通道未连接导致的 implementation `Opt 31-67` 问题。
- 暂停使用 `pcie_xdma_sfp_loopback_top.xdc` 中无效的 SFP 高速管脚约束 `E2/F1/F6/F5`，避免 Vivado 报 `E2 is not a valid site or package pin name`。
- 保留注释占位，后续需要根据实际板卡原理图/官方 XDC 填入真实 SFP GTX 管脚。

## 使用说明

- 顶层仍为 `pcie_xdma_sfp_loopback_top`。
- 当前 release 优先保证 XDMA/BRAM/内部路径 implementation 能继续推进。
- 如果生成 bitstream 时提示 `SFP_TX_P/SFP_RX_P` 等端口未约束，需要补入真实板卡 SFP 管脚后再生成最终上板 bit。

## 附件

- `xdma_loopback_verify_win.exe`
- `xdma_tools_win64_v1.0.8.zip`
