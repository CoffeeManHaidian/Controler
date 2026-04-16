# v1.0.12

## 本次发布内容

这个版本用于验证“PCIe 上电枚举前 FPGA 已经从 Flash 自动配置”的场景，重点补充了 BPI Flash 启动镜像。

## 新增资产

- `pcie_xdma_sfp_loopback_v1.0.12.bit`
  - JTAG 临时烧写用 bitstream。
- `pcie_xdma_sfp_loopback_v1.0.12.mcs`
  - 板载配置 Flash 烧写用镜像。
  - 配置参数参考已验证 XDMA 例程：
    - `File Format: MCS`
    - `Interface: BPIx16`
    - `Size: 128M`
    - `Start Address: 0x00000000`
- `pcie_xdma_sfp_loopback_v1.0.12.prm`
  - Vivado 生成的配置存储器参数记录。
- `xdma_loopback_verify_win.exe`
  - Windows 侧 XDMA 扫描/状态/写入验证工具。
- `xdma_sfp_loopback_flash_boot_v1.0.12.zip`
  - 上述文件的整包版本。

## 新增脚本

- `scripts/build_mcs_from_project.tcl`
  - 从 `setup_project.tcl` 重建 Vivado 工程，运行实现，并导出 bit + mcs。
- `scripts/generate_bitstream_and_mcs_allow_unconstrained_sfp.tcl`
  - 在已有实现结果上导出 bit + mcs。
- `scripts/generate_mcs_from_bit.tcl`
  - 将已有 bit 转换成 BPIx16/128M mcs。

## 修复

- 兼容 Vivado 2017.4 中 `save_project` 报 `Missing value for option 'name'` 的问题，避免 `setup_project.tcl` 在旧版 Vivado 中提前中断。

## 使用建议

如果 JTAG 烧写 bit 后重启主机出现 `Xilinx DMA` 黄色感叹号，优先使用本版本的 `.mcs` 烧写板载 Flash，再进行完整断电重启。PCIe 设备需要在主机枚举 PCIe 总线前完成 FPGA 配置，仅靠 JTAG bit 往往无法覆盖冷启动场景。

推荐测试流程：

1. 用 Vivado Hardware Manager 将 `pcie_xdma_sfp_loopback_v1.0.12.mcs` 写入配置 Flash。
2. 主机完全断电后重新上电。
3. 确认设备管理器中 `Xilinx DMA` 无黄色感叹号。
4. 运行：

```powershell
.\xdma_loopback_verify_win.exe scan
```

5. 如果能看到 `control`、`h2c_0`、`c2h_0` 节点，再继续执行 DMA/回环验证。

