# Vendor-aligned SFP3 bring-up constraints
# Top module: sfp_vendor_align_top

# Q2 refclk path (matches vendor example): G8/G7 -> GTREFCLK0
set_property LOC G7 [get_ports Q2_CLK1_GTREFCLK_PAD_N_IN]
set_property LOC G8 [get_ports Q2_CLK1_GTREFCLK_PAD_P_IN]

# AD9516 control clock and sideband pins
set_property PACKAGE_PIN T26 [get_ports CLK_IN_50M]
set_property IOSTANDARD LVCMOS33 [get_ports CLK_IN_50M]
create_clock -name clk_in_50m -period 20.000 [get_ports CLK_IN_50M]

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

# SFP sideband and status
set_property PACKAGE_PIN E24 [get_ports SFP3_TXFAULT]
set_property PACKAGE_PIN C26 [get_ports SFP3_LOS]
set_property PACKAGE_PIN C24 [get_ports SFP3_TXDISABLE]
set_property IOSTANDARD LVCMOS33 [get_ports SFP3_TXFAULT]
set_property IOSTANDARD LVCMOS33 [get_ports SFP3_LOS]
set_property IOSTANDARD LVCMOS33 [get_ports SFP3_TXDISABLE]

# Track indicator LED
set_property PACKAGE_PIN J28 [get_ports TRACK_DATA_OUT]
set_property IOSTANDARD LVCMOS25 [get_ports TRACK_DATA_OUT]

# Lock all 4 channels to vendor sites, use GT3(X0Y11) for SFP3
set_property LOC GTXE2_CHANNEL_X0Y8  [get_cells -hier -filter {NAME =~ *u_exdes*gt0_ip_gtwizard_v2_4_1x_4ch_i/gtxe2_i}]
set_property LOC GTXE2_CHANNEL_X0Y9  [get_cells -hier -filter {NAME =~ *u_exdes*gt1_ip_gtwizard_v2_4_1x_4ch_i/gtxe2_i}]
set_property LOC GTXE2_CHANNEL_X0Y10 [get_cells -hier -filter {NAME =~ *u_exdes*gt2_ip_gtwizard_v2_4_1x_4ch_i/gtxe2_i}]
set_property LOC GTXE2_CHANNEL_X0Y11 [get_cells -hier -filter {NAME =~ *u_exdes*gt3_ip_gtwizard_v2_4_1x_4ch_i/gtxe2_i}]

set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 33 [current_design]
