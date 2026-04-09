# v1.0.1 发布说明

## 概述

`v1.0.1` 在 `v1.0.0` 的基础上，补齐了基于 XDMA 的主机寄存器回环验证主路径，并新增了可直接在 Windows 主机上运行的验证工具。

本版本的核心目标是：

- 打通 `上位机 -> XDMA -> M_AXI -> 寄存器 -> SFP+ -> 回环接收 -> 状态寄存器回读`
- 固化可综合、可实现、可生成 bitstream 的 PCIe/XDMA 顶层
- 提供可直接用于板级验证的 Windows 主机侧工具
- 让回环测试不再依赖纯板内自激励，而是支持主机直接发起和验收

## 本版本新增的核心能力

### 1. XDMA 到寄存器控制路径打通

新增并收敛了以下模块：

- `axi_mm_to_axil_bridge.v`
- `axil_to_host_regs.v`
- `pcie_cmd_to_optical_axil_loopback_top.v`
- `xdma_m_axi_optical_loopback_top.v`
- `pcie_xdma_sfp_loopback_top.v`

当前主路径已经收敛为：

`主机 -> XDMA M_AXI -> AXI MM/AXI-Lite 桥 -> 寄存器 -> 自定义光协议发送 -> SFP+ -> 回环接收 -> 解包校验 -> 状态寄存器回读`

### 2. 主机寄存器回环测试可用

当前寄存器访问和状态回读已经支持：

- 写发送地址 `CMD_ADDR`
- 写发送数据 `CMD_DATA`
- 提交发送 `CMD_CTRL.commit`
- 发送使能 `CMD_CFG.tx_enable`
- 读回：
  - `TX_FRAME_COUNT`
  - `RX_FRAME_COUNT`
  - `MATCH_COUNT`
  - `CRC_ERROR_COUNT`
  - `FORMAT_ERROR_COUNT`
  - `LAST_RX_SEQ`
  - `LAST_RX_ADDR`
  - `LAST_RX_DATA`

### 3. PCIe/XDMA 顶层可生成 bitstream

当前推荐的 PCIe 顶层为：

- `pcie_xdma_sfp_loopback_top`

该顶层已经：

- 接入参考工程中真实生成的 XDMA IP
- 通过综合和实现
- 成功生成 bitstream

### 4. Windows 主机侧验证工具

新增主机工具源码：

- `host/xdma_loopback_verify_win.cpp`

并已生成 Windows 可执行文件：

- `xdma_loopback_verify_win.exe`

该工具支持：

- 默认循环发送验证
- 指定单次发送验证
- 指定 burst 连续发送验证
- 频率测量

默认行为为：

- 连续发送 100 帧
- 起始地址 `0x00001000`
- 起始数据 `0xA5A50000`
- 每帧地址 `+4`
- 每帧数据 `+1`

### 5. 文档补齐

本版本新增并更新了以下说明文档：

- `docs/HOST_REGISTER_LOOPBACK_PATH.md`
- `docs/PCIE_XDMA_TOP_INTEGRATION.md`
- `docs/WINDOWS_HOST_LOOPBACK_VERIFY.md`

## 推荐验证流程

### 板级验证

1. 下载 `pcie_xdma_sfp_loopback_top` 对应 bitstream
2. 连接 SFP 模块与回环光纤
3. 确认 PCIe 设备被主机正常枚举
4. 通过 XDMA 用户 BAR 访问寄存器

### 主机寄存器验证

按顺序执行：

1. 写 `0x0C = 0x1`
2. 写 `0x00 = <addr>`
3. 写 `0x04 = <data>`
4. 写 `0x08 = 0x1`

然后读：

- `0x14`
- `0x18`
- `0x1C`
- `0x20`
- `0x24`
- `0x28`
- `0x2C`
- `0x30`

### 成功判据

如果系统工作正常，建议至少观察到：

- `TX_FRAME_COUNT` 增加
- `RX_FRAME_COUNT` 增加
- `MATCH_COUNT` 增加
- `CRC_ERROR_COUNT = 0`
- `FORMAT_ERROR_COUNT = 0`
- `LAST_RX_ADDR` 与主机写入地址一致
- `LAST_RX_DATA` 与主机写入数据一致

## Release 资产

本版本建议上传以下 release 资产：

- `xdma_loopback_verify_win.exe`
- `xdma_loopback_verify_win_win64.zip`

其中 zip 包建议至少包含：

- `xdma_loopback_verify_win.exe`
- `docs/WINDOWS_HOST_LOOPBACK_VERIFY.md`

## 说明

本版本重点是把“主机直接验证回环结果”的闭环能力补齐。后续如果继续演进，可以在此基础上补：

- 更完整的 GUI 主机程序
- 自动化寄存器压力测试
- 更细粒度的 ILA 观测方案
