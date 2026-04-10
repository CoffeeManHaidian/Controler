# v1.0.5 发布说明

## 概述

`v1.0.5` 是一个面向部署机重建工程的自包含发布版本。

本版本的核心目标是：

- 将 `pcie_xdma_axil_sfp_loopback_top` 作为默认综合顶层
- 将 XDMA IP 相关生成文件完整纳入项目目录与发布包
- 避免部署机仅凭 `.xci` 重建时出现端口版本不一致，导致 `m_axil_*` 连接失败

## 本版本新增与修复

### 1. 默认综合顶层切换为 AXI-Lite 版本

已更新：

- `setup_project.tcl`

默认综合顶层现在为：

- `pcie_xdma_axil_sfp_loopback_top`

这样部署机执行 `setup_project.tcl` 后，会直接走当前推荐的主机寄存器回环路径：

`XDMA M_AXI_LITE -> 寄存器控制 -> SFP+ 发送 -> 回环接收 -> 状态回读`

### 2. XDMA IP 改为项目内自包含

本版本将 `xdma_sys_xdma_0_0` 的项目内生成文件一并纳入发布内容，避免仅依赖：

- `xdma_sys_xdma_0_0.xci`

导致不同机器上重新生成的输出与当前顶层端口不一致。

### 3. 修复部署机 `m_axil_*` 端口不匹配问题的发布形态

本版本重点解决以下场景：

- 部署机运行 `setup_project.tcl`
- 综合 `pcie_xdma_axil_sfp_loopback_top`
- 报错 `m_axil_awaddr does not exist`

根因是发布包未完整包含 XDMA IP 的相关生成输出。本版本通过项目内完整收录解决这一问题。

## 适用场景

本版本适合以下场景：

- 在 XDMA IP 中已经启用了 `PCIe to AXI Lite Master Interface`
- 需要在部署机上从 GitHub Release 源码包直接重建工程
- 需要稳定复现 AXI-Lite 主机寄存器回环测试路径

## 推荐使用方式

1. 下载 `v1.0.5` 源码包
2. 在 Vivado Tcl Console 执行：

```tcl
source ./setup_project.tcl
```

3. 直接运行：
   - `Run Synthesis`
   - `Run Implementation`
   - `Generate Bitstream`

## Windows 主机工具

本版本继续附带：

- `xdma_loopback_verify_win.exe`
- `xdma_loopback_verify_win_win64.zip`

用于部署机验证主机侧访问路径。
