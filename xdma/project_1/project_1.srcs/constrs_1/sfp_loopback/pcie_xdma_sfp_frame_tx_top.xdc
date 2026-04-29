# Combined PCIe XDMA + SFP3 SRIO TX constraints for the integrated frame-TX top.

# PCIe PERST# / XDMA sys_rst_n, active low.
set_property PACKAGE_PIN J21 [get_ports reset_rtl_0]
set_property IOSTANDARD LVCMOS25 [get_ports reset_rtl_0]

# PCIe 100 MHz reference clock.
set_property PACKAGE_PIN U8 [get_ports {diff_clock_rtl_0_clk_p[0]}]
set_property PACKAGE_PIN U7 [get_ports {diff_clock_rtl_0_clk_n[0]}]
create_clock -name pcie_refclk_100m -period 10.000 [get_ports {diff_clock_rtl_0_clk_p[0]}]

# XDMA link-up LED.
set_property PACKAGE_PIN J28 [get_ports user_lnk_up_0]
set_property IOSTANDARD LVCMOS25 [get_ports user_lnk_up_0]

# PCIe serial receive lanes.
set_property PACKAGE_PIN M6  [get_ports {pcie_7x_mgt_rtl_0_rxp[0]}]
set_property PACKAGE_PIN P6  [get_ports {pcie_7x_mgt_rtl_0_rxp[1]}]
set_property PACKAGE_PIN R4  [get_ports {pcie_7x_mgt_rtl_0_rxp[2]}]
set_property PACKAGE_PIN T6  [get_ports {pcie_7x_mgt_rtl_0_rxp[3]}]
set_property PACKAGE_PIN V6  [get_ports {pcie_7x_mgt_rtl_0_rxp[4]}]
set_property PACKAGE_PIN W4  [get_ports {pcie_7x_mgt_rtl_0_rxp[5]}]
set_property PACKAGE_PIN Y6  [get_ports {pcie_7x_mgt_rtl_0_rxp[6]}]
set_property PACKAGE_PIN AA4 [get_ports {pcie_7x_mgt_rtl_0_rxp[7]}]

# SFP3 refclk path (vendor-proven): G8/G7 -> GTREFCLK0.
set_property LOC G7 [get_ports Q2_CLK1_GTREFCLK_PAD_N_IN]
set_property LOC G8 [get_ports Q2_CLK1_GTREFCLK_PAD_P_IN]

# 50 MHz source used by the MMCM + AD9516 initialization chain.
set_property PACKAGE_PIN T26 [get_ports CLK_IN_50M]
set_property IOSTANDARD LVCMOS33 [get_ports CLK_IN_50M]
create_clock -name clk_in_50m -period 20.000 [get_ports CLK_IN_50M]

# AD9516 control clock and sideband pins.
set_property PACKAGE_PIN AC30 [get_ports AD9516_LD_IN]
set_property PACKAGE_PIN Y28  [get_ports AD9516_CS_N_OUT]
set_property PACKAGE_PIN Y29  [get_ports AD9516_SCLK_OUT]
set_property PACKAGE_PIN W28  [get_ports AD9516_SDATA_OUT]
set_property PACKAGE_PIN AA28 [get_ports AD9516_REFSEL_OUT]
set_property PACKAGE_PIN Y26  [get_ports AD9516_PDWN_OUT]
set_property PACKAGE_PIN W27  [get_ports AD9516_RSTN_OUT]
set_property PACKAGE_PIN AA26 [get_ports AD9516_SYN_N_OUT]
set_property IOSTANDARD LVCMOS33 [get_ports AD9516_LD_IN]
set_property IOSTANDARD LVCMOS33 [get_ports AD9516_CS_N_OUT]
set_property IOSTANDARD LVCMOS33 [get_ports AD9516_SCLK_OUT]
set_property IOSTANDARD LVCMOS33 [get_ports AD9516_SDATA_OUT]
set_property IOSTANDARD LVCMOS33 [get_ports AD9516_REFSEL_OUT]
set_property IOSTANDARD LVCMOS33 [get_ports AD9516_PDWN_OUT]
set_property IOSTANDARD LVCMOS33 [get_ports AD9516_RSTN_OUT]
set_property IOSTANDARD LVCMOS33 [get_ports AD9516_SYN_N_OUT]

# SFP module sideband pins.
set_property PACKAGE_PIN E24 [get_ports SFP3_TXFAULT]
set_property PACKAGE_PIN C26 [get_ports SFP3_LOS]
set_property PACKAGE_PIN C24 [get_ports SFP3_TXDISABLE]
set_property IOSTANDARD LVCMOS33 [get_ports SFP3_TXFAULT]
set_property IOSTANDARD LVCMOS33 [get_ports SFP3_LOS]
set_property IOSTANDARD LVCMOS33 [get_ports SFP3_TXDISABLE]

# Lock the GT channel to the proven SFP3 site.
set_property LOC GTXE2_CHANNEL_X0Y11 [get_cells -hier -filter {NAME =~ *u_gtwizard_0_exdes*gt0_gtwizard_0_i/gtxe2_i}]

set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 33 [current_design]
set_property BITSTREAM.CONFIG.BPI_SYNC_MODE TYPE2 [current_design]
