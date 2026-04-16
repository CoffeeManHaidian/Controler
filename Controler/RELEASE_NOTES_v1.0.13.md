# v1.0.13

## 本次发布内容

这个版本修复了 `dma-status` 可以读取，但 `dma-single` 发送单帧后 `COMMIT_COUNT`、`TX_FRAME_COUNT` 仍为 0 的问题。

## 主要修复

- 修复 XDMA `M_AXI` 写通道到内部 AXI-Lite 桥接的握手问题。
  - 旧逻辑要求 `AWVALID` 和 `WVALID` 同周期出现。
  - 实际 XDMA 写事务可能将地址通道和数据通道分开。
  - 新逻辑会分别锁存 AW/W，再发起内部 AXI-Lite 写事务。
- 修复内部 AXI-Lite 到主机寄存器写入时没有锁存 `WDATA` 的问题。
- 修复 AXI-Lite BRAM 控制器对 AW/W 分离写事务支持不足的问题。
- 更新 `xdma_loopback_verify_win.exe`：
  - `dma-single` 和 `dma-burst` 发送前会自动写 `REG_CMD_CFG = 1` 打开 `tx_enable`。
  - 避免 FPGA 侧因为 `tx_enable=0` 而忽略 `CTRL_COMMIT`。

## 发布资产

- `pcie_xdma_sfp_loopback_v1.0.13.bit`
  - JTAG 临时测试用 bitstream。
- `pcie_xdma_sfp_loopback_v1.0.13.mcs`
  - BPIx16 / 128M Flash 启动镜像。
- `pcie_xdma_sfp_loopback_v1.0.13.prm`
  - Vivado 生成的 MCS 参数记录。
- `xdma_loopback_verify_win.exe`
  - Windows XDMA 验证程序。
- `xdma_sfp_loopback_dma_write_fix_v1.0.13.zip`
  - 上述资产整包。

## 推荐测试流程

1. 用 Vivado Hardware Manager 将 `pcie_xdma_sfp_loopback_v1.0.13.mcs` 写入配置 Flash。
2. 整机断电后重新上电。
3. 确认设备管理器中 `Xilinx DMA` 正常。
4. 运行：

```powershell
.\xdma_loopback_verify_win.exe scan
.\xdma_loopback_verify_win.exe dma-status
.\xdma_loopback_verify_win.exe dma-single 0x00001000 0xA5A50000 100
```

## 预期现象

如果 XDMA 写路径已经打通，至少应看到：

- `STATUS` 不再长期为 0。
- `COMMIT_COUNT` 增加。
- `TX_FRAME_COUNT` 增加。

如果 SFP 物理回环链路也正常，还应看到：

- `RX_FRAME_COUNT` 增加。
- `MATCH_COUNT` 增加。
- `LAST_RX_ADDR = 0x00001000`。
- `LAST_RX_DATA = 0xA5A50000`。

