set_property PACKAGE_PIN T26 [get_ports SYSCLK_I]
set_property IOSTANDARD LVCMOS25 [get_ports SYSCLK_I]
create_clock -period 20.000 -name sys_clk_50m [get_ports SYSCLK_I]

# Board-confirmed GT wiring from the FPGA-to-SFP schematic page:
# - SFP3_TX_P  -> MGTXTXP3_117 -> package ball E2
# - SFP3_TX_N  -> MGTXTXN3_117 -> package ball F1
# - SFP3_RX_P  -> MGTRXRP3_117 -> package ball F6
# - SFP3_RX_N  -> MGTRXRN3_117 -> package ball F5
# - SFP_CLK_P_1 -> MGTREFCLK1P_117 -> package ball J8
# - SFP_CLK_N_1 -> MGTREFCLK1N_117 -> package ball J7
#
# Current final top uses one SFP lane. For 7-series GT ports, use LOC with
# the package ball names from the board schematic.
set_property PACKAGE_PIN J7 [get_ports GTREFCLK1_N]
set_property PACKAGE_PIN J8 [get_ports GTREFCLK1_P]

set_property LOC E2 [get_ports SFP_TX_P]
set_property PACKAGE_PIN F5 [get_ports SFP_RX_N]
set_property PACKAGE_PIN F6 [get_ports SFP_RX_P]
set_property PACKAGE_PIN F1 [get_ports SFP_TX_N]

# Low-speed SFP management/status signals from the schematic:
# - SFP_TXFAULT : module TX fault status input to FPGA
# - SFP_LOS     : module loss-of-signal status input to FPGA
# - SFP_TXDISABLE : FPGA output to enable/disable module transmitter
#
# Board-confirmed SFP3 low-speed IO from BANK 16:
# - sfp3_txfault   -> E24
# - sfp3_los       -> C26
# - sfp3_txdisable -> B24
set_property PACKAGE_PIN E24 [get_ports SFP_TXFAULT]
set_property PACKAGE_PIN C26 [get_ports SFP_LOS]
set_property PACKAGE_PIN B24 [get_ports SFP_TXDISABLE]
set_property IOSTANDARD LVCMOS33 [get_ports SFP_LOS]
set_property IOSTANDARD LVCMOS33 [get_ports SFP_TXDISABLE]
set_property IOSTANDARD LVCMOS33 [get_ports SFP_TXFAULT]

create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 2048 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list u_board_top/u_phy/u_gtwizard_0/inst/gt_usrclk_source/GT0_RXUSRCLK2_OUT]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 32 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {board_test_status_dbg[0]} {board_test_status_dbg[1]} {board_test_status_dbg[2]} {board_test_status_dbg[3]} {board_test_status_dbg[4]} {board_test_status_dbg[5]} {board_test_status_dbg[6]} {board_test_status_dbg[7]} {board_test_status_dbg[8]} {board_test_status_dbg[9]} {board_test_status_dbg[10]} {board_test_status_dbg[11]} {board_test_status_dbg[12]} {board_test_status_dbg[13]} {board_test_status_dbg[14]} {board_test_status_dbg[15]} {board_test_status_dbg[16]} {board_test_status_dbg[17]} {board_test_status_dbg[18]} {board_test_status_dbg[19]} {board_test_status_dbg[20]} {board_test_status_dbg[21]} {board_test_status_dbg[22]} {board_test_status_dbg[23]} {board_test_status_dbg[24]} {board_test_status_dbg[25]} {board_test_status_dbg[26]} {board_test_status_dbg[27]} {board_test_status_dbg[28]} {board_test_status_dbg[29]} {board_test_status_dbg[30]} {board_test_status_dbg[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 32 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {tx_frame_count_dbg[0]} {tx_frame_count_dbg[1]} {tx_frame_count_dbg[2]} {tx_frame_count_dbg[3]} {tx_frame_count_dbg[4]} {tx_frame_count_dbg[5]} {tx_frame_count_dbg[6]} {tx_frame_count_dbg[7]} {tx_frame_count_dbg[8]} {tx_frame_count_dbg[9]} {tx_frame_count_dbg[10]} {tx_frame_count_dbg[11]} {tx_frame_count_dbg[12]} {tx_frame_count_dbg[13]} {tx_frame_count_dbg[14]} {tx_frame_count_dbg[15]} {tx_frame_count_dbg[16]} {tx_frame_count_dbg[17]} {tx_frame_count_dbg[18]} {tx_frame_count_dbg[19]} {tx_frame_count_dbg[20]} {tx_frame_count_dbg[21]} {tx_frame_count_dbg[22]} {tx_frame_count_dbg[23]} {tx_frame_count_dbg[24]} {tx_frame_count_dbg[25]} {tx_frame_count_dbg[26]} {tx_frame_count_dbg[27]} {tx_frame_count_dbg[28]} {tx_frame_count_dbg[29]} {tx_frame_count_dbg[30]} {tx_frame_count_dbg[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 32 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {last_rx_data_dbg[0]} {last_rx_data_dbg[1]} {last_rx_data_dbg[2]} {last_rx_data_dbg[3]} {last_rx_data_dbg[4]} {last_rx_data_dbg[5]} {last_rx_data_dbg[6]} {last_rx_data_dbg[7]} {last_rx_data_dbg[8]} {last_rx_data_dbg[9]} {last_rx_data_dbg[10]} {last_rx_data_dbg[11]} {last_rx_data_dbg[12]} {last_rx_data_dbg[13]} {last_rx_data_dbg[14]} {last_rx_data_dbg[15]} {last_rx_data_dbg[16]} {last_rx_data_dbg[17]} {last_rx_data_dbg[18]} {last_rx_data_dbg[19]} {last_rx_data_dbg[20]} {last_rx_data_dbg[21]} {last_rx_data_dbg[22]} {last_rx_data_dbg[23]} {last_rx_data_dbg[24]} {last_rx_data_dbg[25]} {last_rx_data_dbg[26]} {last_rx_data_dbg[27]} {last_rx_data_dbg[28]} {last_rx_data_dbg[29]} {last_rx_data_dbg[30]} {last_rx_data_dbg[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 32 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {last_rx_addr_dbg[0]} {last_rx_addr_dbg[1]} {last_rx_addr_dbg[2]} {last_rx_addr_dbg[3]} {last_rx_addr_dbg[4]} {last_rx_addr_dbg[5]} {last_rx_addr_dbg[6]} {last_rx_addr_dbg[7]} {last_rx_addr_dbg[8]} {last_rx_addr_dbg[9]} {last_rx_addr_dbg[10]} {last_rx_addr_dbg[11]} {last_rx_addr_dbg[12]} {last_rx_addr_dbg[13]} {last_rx_addr_dbg[14]} {last_rx_addr_dbg[15]} {last_rx_addr_dbg[16]} {last_rx_addr_dbg[17]} {last_rx_addr_dbg[18]} {last_rx_addr_dbg[19]} {last_rx_addr_dbg[20]} {last_rx_addr_dbg[21]} {last_rx_addr_dbg[22]} {last_rx_addr_dbg[23]} {last_rx_addr_dbg[24]} {last_rx_addr_dbg[25]} {last_rx_addr_dbg[26]} {last_rx_addr_dbg[27]} {last_rx_addr_dbg[28]} {last_rx_addr_dbg[29]} {last_rx_addr_dbg[30]} {last_rx_addr_dbg[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 32 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list {last_rx_seq_dbg[0]} {last_rx_seq_dbg[1]} {last_rx_seq_dbg[2]} {last_rx_seq_dbg[3]} {last_rx_seq_dbg[4]} {last_rx_seq_dbg[5]} {last_rx_seq_dbg[6]} {last_rx_seq_dbg[7]} {last_rx_seq_dbg[8]} {last_rx_seq_dbg[9]} {last_rx_seq_dbg[10]} {last_rx_seq_dbg[11]} {last_rx_seq_dbg[12]} {last_rx_seq_dbg[13]} {last_rx_seq_dbg[14]} {last_rx_seq_dbg[15]} {last_rx_seq_dbg[16]} {last_rx_seq_dbg[17]} {last_rx_seq_dbg[18]} {last_rx_seq_dbg[19]} {last_rx_seq_dbg[20]} {last_rx_seq_dbg[21]} {last_rx_seq_dbg[22]} {last_rx_seq_dbg[23]} {last_rx_seq_dbg[24]} {last_rx_seq_dbg[25]} {last_rx_seq_dbg[26]} {last_rx_seq_dbg[27]} {last_rx_seq_dbg[28]} {last_rx_seq_dbg[29]} {last_rx_seq_dbg[30]} {last_rx_seq_dbg[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 32 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list {crc_error_count_dbg[0]} {crc_error_count_dbg[1]} {crc_error_count_dbg[2]} {crc_error_count_dbg[3]} {crc_error_count_dbg[4]} {crc_error_count_dbg[5]} {crc_error_count_dbg[6]} {crc_error_count_dbg[7]} {crc_error_count_dbg[8]} {crc_error_count_dbg[9]} {crc_error_count_dbg[10]} {crc_error_count_dbg[11]} {crc_error_count_dbg[12]} {crc_error_count_dbg[13]} {crc_error_count_dbg[14]} {crc_error_count_dbg[15]} {crc_error_count_dbg[16]} {crc_error_count_dbg[17]} {crc_error_count_dbg[18]} {crc_error_count_dbg[19]} {crc_error_count_dbg[20]} {crc_error_count_dbg[21]} {crc_error_count_dbg[22]} {crc_error_count_dbg[23]} {crc_error_count_dbg[24]} {crc_error_count_dbg[25]} {crc_error_count_dbg[26]} {crc_error_count_dbg[27]} {crc_error_count_dbg[28]} {crc_error_count_dbg[29]} {crc_error_count_dbg[30]} {crc_error_count_dbg[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 32 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list {phy_debug_status_dbg[0]} {phy_debug_status_dbg[1]} {phy_debug_status_dbg[2]} {phy_debug_status_dbg[3]} {phy_debug_status_dbg[4]} {phy_debug_status_dbg[5]} {phy_debug_status_dbg[6]} {phy_debug_status_dbg[7]} {phy_debug_status_dbg[8]} {phy_debug_status_dbg[9]} {phy_debug_status_dbg[10]} {phy_debug_status_dbg[11]} {phy_debug_status_dbg[12]} {phy_debug_status_dbg[13]} {phy_debug_status_dbg[14]} {phy_debug_status_dbg[15]} {phy_debug_status_dbg[16]} {phy_debug_status_dbg[17]} {phy_debug_status_dbg[18]} {phy_debug_status_dbg[19]} {phy_debug_status_dbg[20]} {phy_debug_status_dbg[21]} {phy_debug_status_dbg[22]} {phy_debug_status_dbg[23]} {phy_debug_status_dbg[24]} {phy_debug_status_dbg[25]} {phy_debug_status_dbg[26]} {phy_debug_status_dbg[27]} {phy_debug_status_dbg[28]} {phy_debug_status_dbg[29]} {phy_debug_status_dbg[30]} {phy_debug_status_dbg[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
set_property port_width 32 [get_debug_ports u_ila_0/probe7]
connect_debug_port u_ila_0/probe7 [get_nets [list {optical_status_dbg[0]} {optical_status_dbg[1]} {optical_status_dbg[2]} {optical_status_dbg[3]} {optical_status_dbg[4]} {optical_status_dbg[5]} {optical_status_dbg[6]} {optical_status_dbg[7]} {optical_status_dbg[8]} {optical_status_dbg[9]} {optical_status_dbg[10]} {optical_status_dbg[11]} {optical_status_dbg[12]} {optical_status_dbg[13]} {optical_status_dbg[14]} {optical_status_dbg[15]} {optical_status_dbg[16]} {optical_status_dbg[17]} {optical_status_dbg[18]} {optical_status_dbg[19]} {optical_status_dbg[20]} {optical_status_dbg[21]} {optical_status_dbg[22]} {optical_status_dbg[23]} {optical_status_dbg[24]} {optical_status_dbg[25]} {optical_status_dbg[26]} {optical_status_dbg[27]} {optical_status_dbg[28]} {optical_status_dbg[29]} {optical_status_dbg[30]} {optical_status_dbg[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe8]
set_property port_width 32 [get_debug_ports u_ila_0/probe8]
connect_debug_port u_ila_0/probe8 [get_nets [list {rx_frame_count_dbg[0]} {rx_frame_count_dbg[1]} {rx_frame_count_dbg[2]} {rx_frame_count_dbg[3]} {rx_frame_count_dbg[4]} {rx_frame_count_dbg[5]} {rx_frame_count_dbg[6]} {rx_frame_count_dbg[7]} {rx_frame_count_dbg[8]} {rx_frame_count_dbg[9]} {rx_frame_count_dbg[10]} {rx_frame_count_dbg[11]} {rx_frame_count_dbg[12]} {rx_frame_count_dbg[13]} {rx_frame_count_dbg[14]} {rx_frame_count_dbg[15]} {rx_frame_count_dbg[16]} {rx_frame_count_dbg[17]} {rx_frame_count_dbg[18]} {rx_frame_count_dbg[19]} {rx_frame_count_dbg[20]} {rx_frame_count_dbg[21]} {rx_frame_count_dbg[22]} {rx_frame_count_dbg[23]} {rx_frame_count_dbg[24]} {rx_frame_count_dbg[25]} {rx_frame_count_dbg[26]} {rx_frame_count_dbg[27]} {rx_frame_count_dbg[28]} {rx_frame_count_dbg[29]} {rx_frame_count_dbg[30]} {rx_frame_count_dbg[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe9]
set_property port_width 32 [get_debug_ports u_ila_0/probe9]
connect_debug_port u_ila_0/probe9 [get_nets [list {gtx_tx_word_count_dbg[0]} {gtx_tx_word_count_dbg[1]} {gtx_tx_word_count_dbg[2]} {gtx_tx_word_count_dbg[3]} {gtx_tx_word_count_dbg[4]} {gtx_tx_word_count_dbg[5]} {gtx_tx_word_count_dbg[6]} {gtx_tx_word_count_dbg[7]} {gtx_tx_word_count_dbg[8]} {gtx_tx_word_count_dbg[9]} {gtx_tx_word_count_dbg[10]} {gtx_tx_word_count_dbg[11]} {gtx_tx_word_count_dbg[12]} {gtx_tx_word_count_dbg[13]} {gtx_tx_word_count_dbg[14]} {gtx_tx_word_count_dbg[15]} {gtx_tx_word_count_dbg[16]} {gtx_tx_word_count_dbg[17]} {gtx_tx_word_count_dbg[18]} {gtx_tx_word_count_dbg[19]} {gtx_tx_word_count_dbg[20]} {gtx_tx_word_count_dbg[21]} {gtx_tx_word_count_dbg[22]} {gtx_tx_word_count_dbg[23]} {gtx_tx_word_count_dbg[24]} {gtx_tx_word_count_dbg[25]} {gtx_tx_word_count_dbg[26]} {gtx_tx_word_count_dbg[27]} {gtx_tx_word_count_dbg[28]} {gtx_tx_word_count_dbg[29]} {gtx_tx_word_count_dbg[30]} {gtx_tx_word_count_dbg[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe10]
set_property port_width 32 [get_debug_ports u_ila_0/probe10]
connect_debug_port u_ila_0/probe10 [get_nets [list {format_error_count_dbg[0]} {format_error_count_dbg[1]} {format_error_count_dbg[2]} {format_error_count_dbg[3]} {format_error_count_dbg[4]} {format_error_count_dbg[5]} {format_error_count_dbg[6]} {format_error_count_dbg[7]} {format_error_count_dbg[8]} {format_error_count_dbg[9]} {format_error_count_dbg[10]} {format_error_count_dbg[11]} {format_error_count_dbg[12]} {format_error_count_dbg[13]} {format_error_count_dbg[14]} {format_error_count_dbg[15]} {format_error_count_dbg[16]} {format_error_count_dbg[17]} {format_error_count_dbg[18]} {format_error_count_dbg[19]} {format_error_count_dbg[20]} {format_error_count_dbg[21]} {format_error_count_dbg[22]} {format_error_count_dbg[23]} {format_error_count_dbg[24]} {format_error_count_dbg[25]} {format_error_count_dbg[26]} {format_error_count_dbg[27]} {format_error_count_dbg[28]} {format_error_count_dbg[29]} {format_error_count_dbg[30]} {format_error_count_dbg[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe11]
set_property port_width 32 [get_debug_ports u_ila_0/probe11]
connect_debug_port u_ila_0/probe11 [get_nets [list {match_count_dbg[0]} {match_count_dbg[1]} {match_count_dbg[2]} {match_count_dbg[3]} {match_count_dbg[4]} {match_count_dbg[5]} {match_count_dbg[6]} {match_count_dbg[7]} {match_count_dbg[8]} {match_count_dbg[9]} {match_count_dbg[10]} {match_count_dbg[11]} {match_count_dbg[12]} {match_count_dbg[13]} {match_count_dbg[14]} {match_count_dbg[15]} {match_count_dbg[16]} {match_count_dbg[17]} {match_count_dbg[18]} {match_count_dbg[19]} {match_count_dbg[20]} {match_count_dbg[21]} {match_count_dbg[22]} {match_count_dbg[23]} {match_count_dbg[24]} {match_count_dbg[25]} {match_count_dbg[26]} {match_count_dbg[27]} {match_count_dbg[28]} {match_count_dbg[29]} {match_count_dbg[30]} {match_count_dbg[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe12]
set_property port_width 32 [get_debug_ports u_ila_0/probe12]
connect_debug_port u_ila_0/probe12 [get_nets [list {status_reg_dbg[0]} {status_reg_dbg[1]} {status_reg_dbg[2]} {status_reg_dbg[3]} {status_reg_dbg[4]} {status_reg_dbg[5]} {status_reg_dbg[6]} {status_reg_dbg[7]} {status_reg_dbg[8]} {status_reg_dbg[9]} {status_reg_dbg[10]} {status_reg_dbg[11]} {status_reg_dbg[12]} {status_reg_dbg[13]} {status_reg_dbg[14]} {status_reg_dbg[15]} {status_reg_dbg[16]} {status_reg_dbg[17]} {status_reg_dbg[18]} {status_reg_dbg[19]} {status_reg_dbg[20]} {status_reg_dbg[21]} {status_reg_dbg[22]} {status_reg_dbg[23]} {status_reg_dbg[24]} {status_reg_dbg[25]} {status_reg_dbg[26]} {status_reg_dbg[27]} {status_reg_dbg[28]} {status_reg_dbg[29]} {status_reg_dbg[30]} {status_reg_dbg[31]}]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets u_ila_0_GT0_RXUSRCLK2_OUT]
