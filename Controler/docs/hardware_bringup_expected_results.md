# 上板测试期望结果

## 测试对象

建议使用顶层:

- `pcie_cmd_to_optical_hw_bringup_top`

该顶层上电后会自动重复发送测试命令，不需要外部 PCIe 驱动参与。

## 期望现象

### 1. 配置阶段

- Bit 文件可以正常下载到 FPGA
- 下载后 FPGA 不反复重配置
- 没有明显的 GT 时钟或配置报错

### 2. SFP 低速信号

- `SFP_TXDISABLE = 0`
  说明发送端没有被禁止
- `SFP_TXFAULT = 0`
  说明模块没有报告发送故障
- `SFP_LOS`
  - 未插光纤或对端无光时，可能为 `1`
  - 正常接入对端有效光信号后，应变为 `0`

### 3. GTX/PHY 状态

以下信号应在复位后拉高:

- `phy_tx_resetdone = 1`
- `phy_rx_resetdone = 1`

理想情况下:

- `phy_channel_up = 1`

如果 `phy_tx_resetdone` 和 `phy_rx_resetdone` 已经为 `1`，但 `phy_channel_up` 仍未拉高，优先检查:

- 参考时钟是否正常
- SFP 模块是否正常供电
- 光纤是否接通
- 对端是否工作在相同速率和兼容链路模式

### 4. 自发数发送行为

当前自发数顶层会周期性写入一组固定命令流程:

1. 写 `0x0000_0000 <- 0x0000_0004`
2. 写 `0x0000_0004 <- data_counter`
3. 写 `0x0000_0008 <- 0x0000_0001`

期望结果:

- `data_counter` 持续递增
- FPGA 持续向 SFP3 发出测试帧
- 对端如果有接收逻辑，应能看到连续递增的数据内容

### 5. 对端接收期望

如果对端链路已通，期望看到:

- 稳定连续的数据流
- 帧持续到达
- 数据字段递增
- 没有明显长时间中断

### 6. 异常现象判断

- `SFP_TXFAULT = 1`
  - 模块侧异常
  - 优先检查模块、电源、光模块兼容性

- `SFP_LOS = 1`
  - 对端无光
  - 光纤未插好
  - 对端未发光

- `phy_tx_resetdone = 0`
  - GTX 发送侧未正常完成初始化
  - 优先检查 GT 参考时钟和复位

- `phy_rx_resetdone = 0`
  - GTX 接收侧未完成初始化
  - 优先检查 RX 差分对和参考时钟

- `phy_channel_up = 0`
  - 链路未真正建立
  - 可能是速率、时钟、极性、对端协议不匹配

## 本阶段通过标准

最小通过标准:

- Bit 文件可正常下载
- `SFP_TXDISABLE = 0`
- `phy_tx_resetdone = 1`

推荐通过标准:

- `phy_tx_resetdone = 1`
- `phy_rx_resetdone = 1`
- `SFP_TXFAULT = 0`
- 接好光纤后 `SFP_LOS = 0`
- 对端能看到连续递增测试数据

完全通过标准:

- 上述全部满足
- `phy_channel_up = 1`
- 对端稳定连续接收，无明显丢帧或断流
