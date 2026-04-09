# XDMA AXI-Lite 对接说明

## 目标

当前工程已经把业务逻辑整理成标准 AXI-Lite 从接口形式，方便后续直接挂到 XDMA 的 `M_AXI_LITE` 控制口。

推荐使用的壳层模块：

- `xdma_m_axil_optical_loopback_top`

如果 XDMA 顶层已经在 IP 配置里勾选了：

- `PCIe to AXI Lite Master Interface`

那么可以直接使用新的板级 PCIe 顶层：

- `pcie_xdma_axil_sfp_loopback_top`

这个模块的 AXI-Lite 端口命名直接对齐 XDMA 常见的 `m_axil_*` 风格。

## 推荐连接关系

```text
XDMA M_AXI_LITE  ->  xdma_m_axil_optical_loopback_top
                                      |
                                      +-> pcie_cmd_to_optical_axil_loopback_top
                                              |
                                              +-> axil_to_host_regs
                                              +-> pcie_cmd_to_optical_host_loopback_top
                                              +-> pcie_cmd_to_optical_board_top
```

或者在完整板级顶层中直接走：

```text
pcie_xdma_axil_sfp_loopback_top
   -> xdma_sys_xdma_0_0 (M_AXI_LITE)
   -> xdma_m_axil_optical_loopback_top
   -> pcie_cmd_to_optical_axil_loopback_top
   -> axil_to_host_regs
   -> pcie_cmd_to_optical_host_loopback_top
   -> pcie_cmd_to_optical_board_top
```

## 需要连接的 AXI-Lite 信号

- `axil_aclk`
- `axil_aresetn`
- `m_axil_awaddr`
- `m_axil_awprot`
- `m_axil_awvalid`
- `m_axil_awready`
- `m_axil_wdata`
- `m_axil_wstrb`
- `m_axil_wvalid`
- `m_axil_wready`
- `m_axil_bresp`
- `m_axil_bvalid`
- `m_axil_bready`
- `m_axil_araddr`
- `m_axil_arprot`
- `m_axil_arvalid`
- `m_axil_arready`
- `m_axil_rdata`
- `m_axil_rresp`
- `m_axil_rvalid`
- `m_axil_rready`

## 板级信号

除 AXI-Lite 外，还需要连接：

- `GTREFCLK1_P/N`
- `SFP_RX_P/N`
- `SFP_TX_P/N`
- `SFP_TXFAULT`
- `SFP_LOS`
- `SFP_TXDISABLE`

## 主机访问方式

主机通过 XDMA BAR 写 `M_AXI_LITE` 后，访问的仍然是同一套寄存器：

- `0x00` `CMD_ADDR`
- `0x04` `CMD_DATA`
- `0x08` `CMD_CTRL`
- `0x0C` `CMD_CFG`
- `0x14` `TX_FRAME_COUNT`
- `0x18` `RX_FRAME_COUNT`
- `0x1C` `MATCH_COUNT`
- `0x20` `CRC_ERROR_COUNT`
- `0x24` `FORMAT_ERROR_COUNT`
- `0x2C` `LAST_RX_ADDR`
- `0x30` `LAST_RX_DATA`

## 最小联调步骤

1. 写 `0x0C = 0x1`
   - 使能发送

2. 写 `0x00 = <addr>`

3. 写 `0x04 = <data>`

4. 写 `0x08 = 0x1`
   - 提交发送

5. 读回：
   - `0x14`
   - `0x18`
   - `0x1C`
   - `0x20`
   - `0x24`
   - `0x2C`
   - `0x30`

成功判据：

- `TX_FRAME_COUNT` 增加
- `RX_FRAME_COUNT` 增加
- `MATCH_COUNT` 增加
- `CRC_ERROR_COUNT = 0`
- `FORMAT_ERROR_COUNT = 0`
- `LAST_RX_ADDR/LAST_RX_DATA` 与写入一致

## 板级使用建议

如果你已经重新生成了带 `M_AXI_LITE` 的 XDMA IP：

1. 在 Vivado 中执行：

```tcl
source ./setup_project.tcl
```

2. 把综合顶层切换为：

```text
pcie_xdma_axil_sfp_loopback_top
```

3. 继续使用：

- `Controler.srcs/constrs_1/new/pcie_xdma_sfp_loopback_top.xdc`

因为这个 AXI-Lite 顶层与现有 PCIe/SFP 板级端口保持一致。

## 当前边界

这一步已经把工程整理到“可直接接 XDMA M_AXI_LITE”的状态，但还没有做两件事：

- 未根据你重新生成后的真实 XDMA wrapper/stub 端口名再次逐项核对
- 当前仓库内自带的 `.xci` 仍可能是旧的 `M_AXI` 版本，因此部署机上需要以你重新生成后的 IP 为准

所以最后接入时，建议以你当前重新生成的 XDMA wrapper 或 stub 为准，确认 `m_axil_*` 端口名与当前顶层一致。
