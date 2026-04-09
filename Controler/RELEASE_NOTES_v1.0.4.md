# v1.0.4 发布说明

## 概述

`v1.0.4` 是一个面向 AXI-Lite 主机寄存器回环验证的收敛版本。

本版本的核心目标是：

- 固化 `PCIe to AXI Lite Master Interface` 路径
- 提供可综合、可实现、可生成 bitstream 的 AXI-Lite 板级顶层
- 保留并更新 Windows 主机侧验证工具，方便部署机联调

## 本版本新增与修复

### 1. 新增 AXI-Lite 版板级 PCIe 顶层

新增：

- `Controler.srcs/sources_1/new/pcie_xdma_axil_sfp_loopback_top.v`

这条顶层路径直接连接：

`XDMA M_AXI_LITE -> xdma_m_axil_optical_loopback_top -> 寄存器/回环逻辑`

适合当前“主机写寄存器 -> SFP+ 发送 -> 回环接收 -> 状态寄存器回读”的测试目标。

### 2. 处理了 XDMA 未使用 M_AXI DMA 口的实现问题

在 `pcie_xdma_axil_sfp_loopback_top` 中，对 XDMA 仍然存在但当前不使用的 `M_AXI` DMA 口做了安全兜底，避免：

- `m_axi_*` 未连接
- implementation 阶段的 undriven / missing connection 报错

### 3. 工程脚本同步更新

已更新：

- `setup_project.tcl`

当前脚本已加入：

- `pcie_xdma_axil_sfp_loopback_top.v`

方便后续重建工程时直接切换到 AXI-Lite 版顶层。

### 4. 文档更新

已更新：

- `docs/XDMA_AXIL_INTEGRATION.md`
- `docs/WINDOWS_HOST_LOOPBACK_VERIFY.md`

其中：

- AXI-Lite 集成文档补充了新的板级顶层使用方式
- Windows 主机工具文档补充了 `scan` 诊断模式说明

### 5. Windows 主机工具继续提供

本版本继续附带：

- `xdma_loopback_verify_win.exe`
- `xdma_loopback_verify_win_win64.zip`

主机工具当前支持：

- 默认自动探测 XDMA 访问入口
- `single`
- `burst`
- `rate`
- `scan`

## 适用场景

本版本适合以下场景：

- 已在 XDMA IP 中勾选 `PCIe to AXI Lite Master Interface`
- 目标是通过主机寄存器控制回环测试
- 需要一条比 `M_AXI DMA` 更直接的寄存器访问主路径

## 推荐验证流程

1. 在 Vivado 中使用：
   - `pcie_xdma_axil_sfp_loopback_top`
2. 生成 bitstream 并下板
3. 主机运行：

```bat
xdma_loopback_verify_win.exe scan
```

先检查驱动实际暴露的入口

4. 再运行：

```bat
xdma_loopback_verify_win.exe
```

或按需使用：

```bat
xdma_loopback_verify_win.exe single ...
xdma_loopback_verify_win.exe burst ...
xdma_loopback_verify_win.exe rate ...
```
