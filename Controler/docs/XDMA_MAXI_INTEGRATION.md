# XDMA M_AXI 对接说明

## 结论

从当前 XDMA IP 图看，真实导出的控制主口是：

- `M_AXI`

而不是：

- `M_AXI_LITE`

所以后续集成时，推荐使用：

- `xdma_m_axi_optical_loopback_top`

而不是直接把 XDMA 接到 `pcie_cmd_to_optical_axil_loopback_top`。

## 当前新增的桥接结构

```text
XDMA M_AXI
   ->
axi_mm_to_axil_bridge
   ->
pcie_cmd_to_optical_axil_loopback_top
   ->
axil_to_host_regs
   ->
pcie_cmd_to_optical_host_loopback_top
   ->
pcie_cmd_to_optical_board_top
```

## 新增模块

- `axi_mm_to_axil_bridge`
- `xdma_m_axi_optical_loopback_top`

## 设计假设

当前桥接层按“寄存器访问”场景实现，支持的重点是：

- 单拍写
- 单拍读
- 低地址 32-bit 有效数据访问

不针对大块 DMA 传输做优化。

也就是说，这层的目标是：

- 让主机通过 XDMA 的 `M_AXI` 做寄存器控制与状态回读

不是：

- 用 `M_AXI` 直接跑大吞吐量流数据搬运

## 当前桥接限制

`axi_mm_to_axil_bridge` 目前按以下约束工作：

- `AWLEN = 0`
- `ARLEN = 0`
- 写通道只接受 `WLAST = 1` 的单拍写
- 仅读写低 32-bit 数据
- 读回数据会放在 `RDATA` 的低 32 bit，高位补 0

这正适合当前寄存器访问模型。

## 如果你的 XDMA 数据宽度不是 128

桥接模块做了参数化：

- `AXI_ADDR_WIDTH`
- `AXI_DATA_WIDTH`

默认值：

- `AXI_ADDR_WIDTH = 64`
- `AXI_DATA_WIDTH = 128`

如果你的真实 XDMA wrapper/stub 显示宽度不同，只需要在例化时改参数即可。

## 推荐下一步

拿真实 XDMA 生成出来的 `wrapper` 或 `stub`，核对这些信息：

1. `M_AXI` 地址宽度
2. `M_AXI` 数据宽度
3. 是否还带 `AWCACHE/AWLOCK/AWQOS/ARCACHE/ARLOCK/ARQOS`
4. 时钟名是否为 `axi_aclk`
5. 复位是否为 `axi_aresetn`

然后把这些真实端口逐个对到：

- `xdma_m_axi_optical_loopback_top`

## 当前适用判断

如果你的 XDMA IP 图上只看到：

- `M_AXI`

那么当前应该走 `XDMA M_AXI -> AXI4转AXI-Lite桥 -> 寄存器面` 这条路线，而不是继续按 `M_AXI_LITE` 去接。
