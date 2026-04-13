# v1.0.7 Release Notes

## Summary

This release aligns the Controler project with the reference XDMA BRAM-style access route by switching the default Vivado build top to the full AXI4 XDMA path.

## Key Changes

- Default Vivado Tcl build top changed to `pcie_xdma_sfp_loopback_top`.
- Fixed the full AXI4 top by wiring `m_axi_awid` into `xdma_m_axi_optical_loopback_top`.
- Updated the Windows verification tool auto-detection order to prefer XDMA DMA channels: `xdma*_h2c_*` and `xdma*_c2h_*` before falling back to `xdma*_user`, `control`, or SetupDi interfaces.
- Rebuilt `xdma_loopback_verify_win.exe` with VS Build Tools x64.

## Deployment Notes

After cloning or downloading this release, run `setup_project.tcl` in Vivado. The default synthesis top should be `pcie_xdma_sfp_loopback_top`.

On the deployment PC, after programming the bitstream and rebooting or rescanning PCIe if needed, run:

```powershell
.\xdma_loopback_verify_win.exe scan
```

Expected usable device nodes for this version are typically:

- `\\.\xdma0_h2c_0`
- `\\.\xdma0_c2h_0`

If scan still finds no nodes, the likely blocker remains the Windows XDMA driver not exposing user-mode device interfaces, even if Device Manager shows `Xilinx DMA`.
