# 基于 Vendor 时钟框架的 SRIO Base 设计说明

## 目标

外层沿用 vendor 已验证通过的 `SFP3/AD9516/QPLL/ILA` 板级框架，内层使用 `SRIO single-lane` 例程数据链，形成一个稳定可上板、可回环、可调试的 `SRIO Base` 版本。

## 保留

- `SFP3` 引脚与 `G8/G7` 参考时钟路径
- `AD9516` 初始化和 `CLK_IN_50M` 驱动链
- 顶层 `ILA` 结构，使用 `txusrclk2/rxusrclk2` 采样
- 已验证过的 `TRACK_DATA_OUT`、`TX/RX` 调试口和远端构建验收流程

## 替换

- 不再使用 vendor `Aurora/64B66B` 数据链作为协议基线
- 改为使用 `gtwizard_0_ex` 中的 `SRIO single-lane` 数据链
- 新增独立顶层和独立 Tcl 构建流，避免和现有 `vendor` 或 `sfp_loopback_top` 路线互相污染

## 验收标准

- Hardware Manager 中可见 `TX/RX ILA`
- `TX/RX resetdone` 稳定拉高
- `TX` 侧能看到可解释的 `SRIO` 测试序列
- `RX` 侧进入 `SRIO` 例程要求的对齐/跟踪状态
- 回环锁定后不继续累积新错误
