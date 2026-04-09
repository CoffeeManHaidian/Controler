# v1.0.2 发布说明

## 概述

`v1.0.2` 是一个面向部署与复现体验的修复版本，重点解决了在新电脑或部署电脑上综合 `pcie_xdma_sfp_loopback_top` 时，因缺少 XDMA IP 文件而导致的综合失败问题。

本版本的核心目标是：

- 让仓库对 `pcie_xdma_sfp_loopback_top` 的综合更加自包含
- 去掉对本机参考目录 `D:/FPGA/...` 的强依赖
- 让从 GitHub 下载源码后重建工程更稳定

## 本版本修复内容

### 1. 仓库内补齐 XDMA `.xci`

新增：

- `Controler.srcs/sources_1/ip/xdma_sys_xdma_0_0/xdma_sys_xdma_0_0.xci`

这意味着：

- `pcie_xdma_sfp_loopback_top` 所依赖的 `xdma_sys_xdma_0_0` 不再只存在于开发机参考工程中
- 部署电脑即使没有 `D:/FPGA/No.226_pcie_xdma_sys_x8_5g/...` 目录，也可以直接综合

### 2. `setup_project.tcl` 优先使用仓库内 XDMA IP

当前脚本逻辑已经调整为：

1. 优先使用仓库内：
   - `Controler.srcs/sources_1/ip/xdma_sys_xdma_0_0/xdma_sys_xdma_0_0.xci`
2. 如果本地没有，再回退去找参考工程路径：
   - `D:/FPGA/No.226_pcie_xdma_sys_x8_5g/.../xdma_sys_xdma_0_0.xci`

这让新机器上的重建流程更自然，也更适合 release 分发。

### 3. 文档更新

已更新：

- `docs/PCIE_XDMA_TOP_INTEGRATION.md`

文档中现在明确说明：

- 仓库已自带 XDMA `.xci`
- 部署电脑不需要再依赖参考工程目录

## 适用场景

本版本特别适合以下场景：

- 在新电脑上重新拉取项目后综合
- 在部署机上只下载源码 release 后综合
- 团队成员在不同机器上复现 `pcie_xdma_sfp_loopback_top`

## 推荐使用方式

在 Vivado Tcl Console 中执行：

```tcl
source ./setup_project.tcl
```

然后确认输出中看到类似：

```text
XDMA IP     : added from repository and recognized as ...
```

之后再执行：

1. `Run Synthesis`
2. `Run Implementation`
3. `Generate Bitstream`

## Release 资产

本版本继续提供：

- `xdma_loopback_verify_win.exe`
- `xdma_loopback_verify_win_win64.zip`

方便在板级 bitstream 烧写完成后，直接用 Windows 主机侧工具做寄存器回环验证。
