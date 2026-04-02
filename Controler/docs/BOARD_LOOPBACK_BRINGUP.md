# 光口回环上板调试说明

## 目的

本文档用于说明当前工程的光口回环上板调试流程，以及上板后应重点观察的状态信号。

当前推荐用于上板测试的顶层为：

- `pcie_cmd_to_optical_hw_bringup_top`

这个顶层具备以下特点：

- 内部自动生成写命令，不依赖外部主机
- 默认打开回环调试功能
- 驱动光发送链路持续发帧
- 将关键回环状态作为内部调试信号保留下来

相关文件：

- `Controler.srcs/sources_1/new/pcie_cmd_to_optical_hw_bringup_top.v`
- `Controler.srcs/sources_1/new/pcie_cmd_to_optical_board_top.v`
- `Controler.srcs/sources_1/new/loopback_debug_block.v`
- `Controler.srcs/constrs_1/new/pcie_cmd_to_optical_board_top.xdc`

## 上板前准备

在生成 bit 文件之前，请先确认以下事项：

1. 打开 `Controler.xpr`
2. 当前 top 已设置为 `pcie_cmd_to_optical_hw_bringup_top`
3. `pcie_cmd_to_optical_board_top.xdc` 处于启用状态
4. `pcie_cmd_to_optical_gtx_top.xdc` 处于禁用状态
5. 光纤已经从发送端回接到接收端
6. SFP 模块已经正确插入
7. 板卡供电和参考时钟正常

## Vivado 生成流程

在 Vivado 中按下面顺序执行：

1. `Run Synthesis`
2. 检查综合报错和关键告警
3. `Run Implementation`
4. 检查实现报错和 DRC
5. `Generate Bitstream`
6. 打开 `Hardware Manager`
7. 连接板卡
8. 使用生成的 `.bit` 下载程序

如果在生成 bit 时出现 DRC 错误，请优先检查：

- top 是否选对
- 约束文件是否启用正确
- 时钟与 GT 引脚约束是否和板卡一致

## 当前构建模式

当前上板顶层默认参数为：

```verilog
parameter ENABLE_LOOPBACK_DEBUG = 1'b1
```

也就是说，现在生成的是：

- 回环调试版

不是：

- 纯发送正式版

## 当前运行行为

复位释放后，顶层会周期性自动生成一组命令：

1. 向 `0x00` 写入命令地址
2. 向 `0x04` 写入命令数据
3. 向 `0x08` 写入提交标志
4. 等待固定时间
5. 重复发送

因此，即使没有上位机参与，发送链路也会持续有数据流动。

## 上板后可观测的调试信号

当前 `pcie_cmd_to_optical_hw_bringup_top.v` 中已经标记了以下调试信号：

- `status_reg_dbg`
- `tx_frame_count_dbg`
- `optical_status_dbg`
- `gtx_tx_word_count_dbg`
- `phy_debug_status_dbg`
- `rx_frame_count_dbg`
- `crc_error_count_dbg`
- `format_error_count_dbg`
- `match_count_dbg`
- `last_rx_seq_dbg`
- `last_rx_addr_dbg`
- `last_rx_data_dbg`
- `board_test_status_dbg`

这些信号适合后续插入 ILA 后在 Hardware Manager 中观察。

## 建议的观测顺序

建议按以下顺序观察：

1. `board_test_status_dbg`
2. `phy_debug_status_dbg`
3. `tx_frame_count_dbg`
4. `gtx_tx_word_count_dbg`
5. `rx_frame_count_dbg`
6. `match_count_dbg`
7. `crc_error_count_dbg`
8. `format_error_count_dbg`
9. `last_rx_seq_dbg`
10. `last_rx_addr_dbg`
11. `last_rx_data_dbg`

## 各组信号的含义

### 1. 链路与 PHY 状态

先看：

- `board_test_status_dbg`
- `phy_debug_status_dbg`
- `optical_status_dbg`

期望现象：

- PHY 链路拉起
- TX 复位完成
- RX 复位完成
- 光模块状态正常
- 没有 SFP 故障

如果这里不正常，优先检查：

- 光纤是否正确回环
- SFP 是否插好
- GT 参考时钟是否正常
- XDC 引脚约束是否正确

### 2. 发送链是否工作

重点看：

- `tx_frame_count_dbg`
- `gtx_tx_word_count_dbg`

期望现象：

- `tx_frame_count_dbg` 持续增加
- `gtx_tx_word_count_dbg` 持续增加

如果不增加，通常表示：

- 复位没有正常释放
- 顶层选择错误
- 下载的不是最新 bit
- 内部自动发命令状态机没有运行

### 3. 回环接收是否成功

重点看：

- `rx_frame_count_dbg`
- `match_count_dbg`

期望现象：

- `rx_frame_count_dbg` 增加
- `match_count_dbg` 增加

这说明：

- RX 侧收到了回环回来的数据
- GTX 32 位字重组成 64 位拍成功
- 协议解码成功
- 接收结果和预期内容匹配

### 4. 错误计数

重点看：

- `crc_error_count_dbg`
- `format_error_count_dbg`

期望现象：

- `crc_error_count_dbg = 0`
- `format_error_count_dbg = 0`

含义如下：

- 如果 `crc_error_count_dbg` 增加：
  - 说明帧收到了，但数据顺序、CRC 输入或打包方式不一致

- 如果 `format_error_count_dbg` 增加：
  - 说明 SOF/EOF 或帧边界识别有问题

### 5. 最近一次接收内容

重点看：

- `last_rx_seq_dbg`
- `last_rx_addr_dbg`
- `last_rx_data_dbg`

期望现象：

- `last_rx_seq_dbg` 随时间变化
- `last_rx_addr_dbg` 保持在预期命令地址
- `last_rx_data_dbg` 按内部数据计数递增变化

这组信号适合确认接收解码结果是否和发送协议一致。

## 快速故障定位表

### 情况 1

- `tx_frame_count_dbg` 不增加

优先怀疑：

- 本地发命令状态机
- 复位时序

### 情况 2

- `tx_frame_count_dbg` 增加
- `rx_frame_count_dbg` 不增加

优先怀疑：

- 光回环路径
- SFP 链路
- GTX 接收侧
- `rx_data_valid` 没有正常拉起

### 情况 3

- `rx_frame_count_dbg` 增加
- `match_count_dbg` 不增加

优先怀疑：

- 帧重组顺序
- 解码边界
- 协议比较逻辑

### 情况 4

- `crc_error_count_dbg` 增加

优先怀疑：

- 字序不一致
- CRC 输入不一致
- 数据打包顺序不一致

### 情况 5

- `format_error_count_dbg` 增加

优先怀疑：

- SOF/EOF 检测
- beat 边界处理
- 帧格式识别

## 成功判据

如果以下条件都满足，可以认为当前板级回环测试成功：

- PHY 链路正常拉起
- `tx_frame_count_dbg` 持续增加
- `gtx_tx_word_count_dbg` 持续增加
- `rx_frame_count_dbg` 持续增加
- `match_count_dbg` 持续增加
- `crc_error_count_dbg` 始终为 `0`
- `format_error_count_dbg` 始终为 `0`

## 备注

- 本文档对应的是回环调试版本
- 后续正式版本仍建议走同一条板级路径，只是关闭回环调试
- 当前调试状态通过内部信号保留，而不是增加额外外部引脚，这样可以避免额外约束问题
