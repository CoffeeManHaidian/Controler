# v1.0.3 发布说明

## 概述

`v1.0.3` 是一个面向部署电脑使用体验的主机工具修复版本，重点解决了 Windows 主机侧验证工具默认只能打开 `\\.\xdma0_user`，而在某些 XDMA 驱动配置下实际只暴露 `h2c/c2h/control` 节点的问题。

## 本版本修复内容

### 1. Windows 主机工具支持自动探测 XDMA 设备节点

已更新：

- `host/xdma_loopback_verify_win.cpp`

新的工具默认会自动按以下顺序探测可用设备：

1. `\\.\xdma*_user`
2. `\\.\xdma*_h2c_*` 与 `\\.\xdma*_c2h_*`
3. `\\.\xdma*_control`

如果探测成功，程序会打印：

- `Using write device: ...`
- `Using read  device: ...`

这让同一个工具可以更自然地适配不同 Windows XDMA 驱动节点布局。

### 2. 文档同步更新

已更新：

- `docs/WINDOWS_HOST_LOOPBACK_VERIFY.md`

文档中现在明确说明：

- 程序会自动探测设备节点
- 仍支持手工指定设备路径

## 适用场景

本版本特别适合以下情况：

- 设备管理器中已经能看到 `Xilinx DMA`
- 但 `\\.\xdma0_user` 打不开
- 驱动实际暴露的是 `h2c/c2h` 或 `control` 节点

## Release 资产

本版本继续提供：

- `xdma_loopback_verify_win.exe`
- `xdma_loopback_verify_win_win64.zip`

建议部署电脑直接下载本版本 release 中的主机工具后再测试。
