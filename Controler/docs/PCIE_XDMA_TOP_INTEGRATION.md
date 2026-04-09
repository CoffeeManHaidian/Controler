# PCIe XDMA 顶层集成说明

## 参考来源

当前顶层实现参考了这个工程中的真实 XDMA 生成文件：

- `D:\FPGA\No.226_pcie_xdma_sys_x8_5g\No.226_pcie_xdma_sys_x8_5g.srcs\sources_1\bd\xdma_sys\ip\xdma_sys_xdma_0_0\xdma_sys_xdma_0_0_stub.v`
- `D:\FPGA\No.226_pcie_xdma_sys_x8_5g\No.226_pcie_xdma_sys_x8_5g.srcs\sources_1\bd\xdma_sys\hdl\xdma_sys_wrapper.v`

从这些文件可确认：

- 用户主口是 `M_AXI`
- 地址宽度是 `64`
- 数据宽度是 `128`
- 还带：
  - `AWID/ARID`
  - `AWCACHE/ARCACHE`
  - `AWLOCK/ARLOCK`
  - `AWPROT/ARPROT`

## 当前新增的 PCIe 顶层

- `pcie_xdma_sfp_loopback_top`

这个顶层已经按参考工程的 XDMA 端口风格实现，外部接口与参考 wrapper 风格保持一致：

- `pcie_mgt_rxn/rxp[7:0]`
- `pcie_mgt_txn/txp[7:0]`
- `sys_clk_clk_n/p`
- `sys_rst`
- `user_lnk_up`

同时补上了业务相关外部口：

- `GTREFCLK1_P/N`
- `SFP_RX_P/N`
- `SFP_TX_P/N`
- `SFP_TXFAULT`
- `SFP_LOS`
- `SFP_TXDISABLE`

## 内部结构

```text
IBUFDS_GTE2
   ->
xdma_sys_xdma_0_0
   ->
xdma_m_axi_optical_loopback_top
   ->
axi_mm_to_axil_bridge
   ->
pcie_cmd_to_optical_axil_loopback_top
   ->
寄存器路径 + SFP 回环链
```

## 重要说明

当前顶层默认直接例化：

- `xdma_sys_xdma_0_0`

因此如果要在当前工程里综合这个顶层，需要把你参考工程里的 XDMA IP 文件一并加入当前工程，例如：

- `xdma_sys_xdma_0_0.xci`
- 以及 Vivado 自动生成所需的相关输出文件

如果当前工程里没有这个 IP，综合时会把它当成缺失模块。

当前 `setup_project.tcl` 会优先加入仓库内自带的 XDMA `.xci`：

```text
Controler.srcs/sources_1/ip/xdma_sys_xdma_0_0/xdma_sys_xdma_0_0.xci
```

如果仓库内没有这份文件，脚本才会回退去尝试加入参考工程中的 `.xci`：

```text
D:/FPGA/No.226_pcie_xdma_sys_x8_5g/No.226_pcie_xdma_sys_x8_5g.srcs/sources_1/bd/xdma_sys/ip/xdma_sys_xdma_0_0/xdma_sys_xdma_0_0.xci
```

所以在新的仓库版本中，即使部署电脑上没有 `D:/FPGA/...` 参考工程，也可以直接综合 `pcie_xdma_sfp_loopback_top`。

## 当前桥接处理

`M_AXI` 到业务寄存器面之间使用：

- `axi_mm_to_axil_bridge`

当前桥接按寄存器访问场景实现：

- 只支持单拍读写
- 只使用低 32 bit 数据
- 适合 BAR 寄存器读写与状态回读

## 接口对接注意点

当前实现中：

- `m_axi_bid` 直接回传 `m_axi_awid`
- `m_axi_rid` 直接回传 `m_axi_arid`

这是为了适配单拍寄存器访问场景，适用于当前控制路径。

## 推荐使用顺序

1. 先继续用 `pcie_cmd_to_optical_hw_bringup_top` 验证光口链路
2. 再用 `pcie_xdma_sfp_loopback_top` 接入真实 XDMA
3. 主机通过 BAR 写寄存器：
   - `0x0C = 0x1`
   - `0x00 = <addr>`
   - `0x04 = <data>`
   - `0x08 = 0x1`
4. 再读：
   - `0x14`
   - `0x18`
   - `0x1C`
   - `0x20`
   - `0x24`
   - `0x2C`
   - `0x30`

如果计数和最后一帧数据正确，就说明：

- PCIe -> XDMA -> M_AXI
- M_AXI -> 寄存器
- 寄存器 -> SFP+
- 回环接收 -> 解包
- 状态回读

这整条路径已经闭环。

## Vivado 中的建议操作

1. 先执行：

```tcl
source ./setup_project.tcl
```

2. 确认 Tcl Console 里看到：

```text
XDMA IP     : added from reference project
```

3. 在 `Sources` 中把综合顶层切换为：

```text
pcie_xdma_sfp_loopback_top
```

4. 再执行：

- `Run Synthesis`
- `Run Implementation`

如果这一步报的主要是板级约束问题，就说明逻辑层的集成已经基本闭合，后面只剩引脚和时钟约束继续对齐。
