# Controler 文档说明

## 当前保留的顶层

- 最小测试顶层: `Controler.srcs/sources_1/new/min_pcie_to_udp_debug_top.v`
- 最终业务顶层: `Controler.srcs/sources_1/new/pcie_cmd_to_optical_board_top.v`
- 上板自发数顶层: `Controler.srcs/sources_1/new/pcie_cmd_to_optical_hw_bringup_top.v`

## 当前最终方案

当前工程已经切换到自定义光链路方案，不再使用 UDP/10G Ethernet MAC 主线。

数据链路为:

`命令写入 -> FIFO -> 自定义光协议帧 -> 32bit GTX 发送字 -> 异步 FIFO -> gtwizard_0 -> SFP3`

## 当前已完成内容

- PCIe 风格命令写入接口
- 命令缓存与同步 FIFO
- 自定义光协议帧封装
- 64bit 到 32bit GTX 发送字转换
- `gtwizard_0` GTX IP 集成
- `SYSCLK_I` 到 `TXUSRCLK2` 的跨时钟 FIFO
- SFP3 高速差分引脚约束
- SFP3 低速控制信号约束:
  - `SFP_TXFAULT`
  - `SFP_LOS`
  - `SFP_TXDISABLE`

## 板级连接

当前约束按 `SFP3` 通道配置:

- `GTREFCLK1_P -> J8`
- `GTREFCLK1_N -> J7`
- `SFP_RX_P -> F6`
- `SFP_RX_N -> F5`
- `SFP_TX_P -> E2`
- `SFP_TX_N -> F1`
- `SFP_TXFAULT -> E24`
- `SFP_LOS -> C26`
- `SFP_TXDISABLE -> B24`

## 推荐使用方式

首次上板建议使用:

- `pcie_cmd_to_optical_hw_bringup_top`

这个顶层会在 FPGA 内部自动发固定测试命令，不依赖外部 PCIe 写入，便于先验证:

- GTX 复位是否完成
- SFP3 光口是否工作
- 对端是否能收到连续测试数据

## 后续建议

- 如果只是确认光口链路先通，优先使用 `pcie_cmd_to_optical_hw_bringup_top`
- 如果后续要恢复真实主机写入，再切回 `pcie_cmd_to_optical_board_top`
- 如果后续需要模块识别/I2C 管理，再补 `mod_def0/1/2`

## 其他说明

上板测试的期望结果已经单独整理到:

- `docs/hardware_bringup_expected_results.md`

