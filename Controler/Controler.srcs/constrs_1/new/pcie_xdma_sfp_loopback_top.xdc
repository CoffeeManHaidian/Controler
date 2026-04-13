# Constraints for the PCIe/XDMA integrated top:
#   pcie_xdma_sfp_loopback_top

set_property PACKAGE_PIN J21 [get_ports sys_rst]
set_property IOSTANDARD LVCMOS25 [get_ports sys_rst]

set_property PACKAGE_PIN U7 [get_ports {sys_clk_clk_n[0]}]
set_property PACKAGE_PIN U8 [get_ports {sys_clk_clk_p[0]}]

set_property PACKAGE_PIN J28 [get_ports user_lnk_up]
set_property IOSTANDARD LVCMOS25 [get_ports user_lnk_up]

set_property PACKAGE_PIN AA4 [get_ports {pcie_mgt_rxp[7]}]
set_property PACKAGE_PIN Y6  [get_ports {pcie_mgt_rxp[6]}]
set_property PACKAGE_PIN W4  [get_ports {pcie_mgt_rxp[5]}]
set_property PACKAGE_PIN V6  [get_ports {pcie_mgt_rxp[4]}]
set_property PACKAGE_PIN T6  [get_ports {pcie_mgt_rxp[3]}]
set_property PACKAGE_PIN R4  [get_ports {pcie_mgt_rxp[2]}]
set_property PACKAGE_PIN P6  [get_ports {pcie_mgt_rxp[1]}]
set_property PACKAGE_PIN M6  [get_ports {pcie_mgt_rxp[0]}]

set_property LOC GTXE2_CHANNEL_X0Y0 [get_cells {u_xdma_0/inst/xdma_sys_xdma_0_0_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/inst/inst/gt_top_i/pipe_wrapper_i/pipe_lane[7].gt_wrapper_i/gtx_channel.gtxe2_channel_i}]
set_property LOC GTXE2_CHANNEL_X0Y1 [get_cells {u_xdma_0/inst/xdma_sys_xdma_0_0_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/inst/inst/gt_top_i/pipe_wrapper_i/pipe_lane[6].gt_wrapper_i/gtx_channel.gtxe2_channel_i}]
set_property LOC GTXE2_CHANNEL_X0Y2 [get_cells {u_xdma_0/inst/xdma_sys_xdma_0_0_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/inst/inst/gt_top_i/pipe_wrapper_i/pipe_lane[5].gt_wrapper_i/gtx_channel.gtxe2_channel_i}]
set_property LOC GTXE2_CHANNEL_X0Y3 [get_cells {u_xdma_0/inst/xdma_sys_xdma_0_0_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/inst/inst/gt_top_i/pipe_wrapper_i/pipe_lane[4].gt_wrapper_i/gtx_channel.gtxe2_channel_i}]
set_property LOC GTXE2_CHANNEL_X0Y4 [get_cells {u_xdma_0/inst/xdma_sys_xdma_0_0_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/inst/inst/gt_top_i/pipe_wrapper_i/pipe_lane[3].gt_wrapper_i/gtx_channel.gtxe2_channel_i}]
set_property LOC GTXE2_CHANNEL_X0Y5 [get_cells {u_xdma_0/inst/xdma_sys_xdma_0_0_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/inst/inst/gt_top_i/pipe_wrapper_i/pipe_lane[2].gt_wrapper_i/gtx_channel.gtxe2_channel_i}]
set_property LOC GTXE2_CHANNEL_X0Y6 [get_cells {u_xdma_0/inst/xdma_sys_xdma_0_0_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/inst/inst/gt_top_i/pipe_wrapper_i/pipe_lane[1].gt_wrapper_i/gtx_channel.gtxe2_channel_i}]
set_property LOC GTXE2_CHANNEL_X0Y7 [get_cells {u_xdma_0/inst/xdma_sys_xdma_0_0_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/inst/inst/gt_top_i/pipe_wrapper_i/pipe_lane[0].gt_wrapper_i/gtx_channel.gtxe2_channel_i}]

set_property PACKAGE_PIN J7 [get_ports GTREFCLK1_N]
set_property PACKAGE_PIN J8 [get_ports GTREFCLK1_P]

# Board-specific SFP GTX package pins must come from the exact carrier-board
# schematic/pinout. The previous E2/F1/F6/F5 values are invalid for the
# xc7k325tffg900-2 implementation run, so they are intentionally left unset
# here instead of guessing high-speed transceiver pins.
# set_property PACKAGE_PIN <SFP_TX_P_PIN> [get_ports SFP_TX_P]
# set_property PACKAGE_PIN <SFP_TX_N_PIN> [get_ports SFP_TX_N]
# set_property PACKAGE_PIN <SFP_RX_P_PIN> [get_ports SFP_RX_P]
# set_property PACKAGE_PIN <SFP_RX_N_PIN> [get_ports SFP_RX_N]

set_property PACKAGE_PIN E24 [get_ports SFP_TXFAULT]
set_property PACKAGE_PIN C26 [get_ports SFP_LOS]
set_property PACKAGE_PIN B24 [get_ports SFP_TXDISABLE]
set_property IOSTANDARD LVCMOS33 [get_ports SFP_TXFAULT]
set_property IOSTANDARD LVCMOS33 [get_ports SFP_LOS]
set_property IOSTANDARD LVCMOS33 [get_ports SFP_TXDISABLE]

set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 33 [current_design]
set_property BITSTREAM.CONFIG.BPI_SYNC_MODE TYPE2 [current_design]
