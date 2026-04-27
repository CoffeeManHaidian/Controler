# Standalone SRIO example-source constraints aligned to the vendor clock chain.

# Q2 refclk path (same proven path as vendor bring-up): G8/G7 -> GTREFCLK0
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

# Internal configuration oscillator used only for the debug hub / ILA clock.
create_clock -name debug_cfgmclk -period 20.000 [get_pins -hier -filter {NAME =~ *STARTUPE2_DEBUG_CLK/CFGMCLK}]

# SFP3 GTX serial lane. The TX/RX package pins are selected by the GT channel placement.
set_property LOC GTXE2_CHANNEL_X0Y11 [get_cells -hier -filter {NAME =~ *u_gtwizard_0_exdes*gt0_gtwizard_0_i/gtxe2_i}]

# SFP module sideband pins.
set_property PACKAGE_PIN E24 [get_ports SFP3_TXFAULT]
set_property PACKAGE_PIN C26 [get_ports SFP3_LOS]
set_property PACKAGE_PIN C24 [get_ports SFP3_TXDISABLE]
set_property IOSTANDARD LVCMOS33 [get_ports SFP3_TXFAULT]
set_property IOSTANDARD LVCMOS33 [get_ports SFP3_LOS]
set_property IOSTANDARD LVCMOS33 [get_ports SFP3_TXDISABLE]

# Checker lock LED.
set_property PACKAGE_PIN J28 [get_ports TRACK_DATA_OUT]
set_property IOSTANDARD LVCMOS25 [get_ports TRACK_DATA_OUT]

set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 33 [current_design]
set_property BITSTREAM.CONFIG.BPI_SYNC_MODE TYPE2 [current_design]
