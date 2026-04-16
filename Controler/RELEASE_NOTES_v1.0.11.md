# v1.0.11

## Summary

This release stabilizes the XDMA H2C/C2H DMA-engine verification path for boards where the XDMA user BAR is not exposed by the Windows driver.

## Changes

- Keep `setup_project.tcl` on the stable `pcie_xdma_sfp_loopback_top` top level.
- Add XDMA M_AXI aperture remapping in `axi_mm_to_axil_bridge`:
  - DMA `0x1000..0x17ff` maps to internal control/status registers `0x0000..0x07ff`.
  - DMA `0x1800..0x1fff` maps to the internal command BRAM window `0x1000..0x17ff`.
- Update `xdma_loopback_verify_win.exe` and source to support explicit DMA modes:
  - `dma-status`
  - `dma-single`
  - `dma-burst`
  - `dma-rate`
- Preserve user-BAR modes for future debug builds, but default DMA verification now uses `h2c_0` and `c2h_0` safely.

## Deployment Notes

After cloning or downloading the release:

1. Run `setup_project.tcl` to recreate the Vivado project.
2. Generate bitstream with top `pcie_xdma_sfp_loopback_top`.
3. Program the FPGA.
4. On the deployment PC, run:

```powershell
.\xdma_loopback_verify_win.exe scan
.\xdma_loopback_verify_win.exe dma-status
.\xdma_loopback_verify_win.exe dma-single 0x00001000 0xA5A50001 50
.\xdma_loopback_verify_win.exe dma-burst 0x00001000 0xA5A50000 4 2 50
```

Expected scan output should include `h2c_0` and `c2h_0` nodes.
