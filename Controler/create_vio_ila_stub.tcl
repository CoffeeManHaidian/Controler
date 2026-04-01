open_bd_design [get_files *min_link_bd.bd]

startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:vio:3.0 vio_0
create_bd_cell -type ip -vlnv xilinx.com:ip:ila:6.2 ila_0
endgroup

set_property -dict [list \
    CONFIG.C_NUM_PROBE_OUT {3} \
    CONFIG.C_PROBE_OUT0_WIDTH {1} \
    CONFIG.C_PROBE_OUT1_WIDTH {32} \
    CONFIG.C_PROBE_OUT2_WIDTH {32} \
] [get_bd_cells vio_0]

set_property -dict [list \
    CONFIG.C_NUM_OF_PROBES {8} \
    CONFIG.C_PROBE0_WIDTH {1} \
    CONFIG.C_PROBE1_WIDTH {32} \
    CONFIG.C_PROBE2_WIDTH {32} \
    CONFIG.C_PROBE3_WIDTH {32} \
    CONFIG.C_PROBE4_WIDTH {1} \
    CONFIG.C_PROBE5_WIDTH {1} \
    CONFIG.C_PROBE6_WIDTH {8} \
    CONFIG.C_PROBE7_WIDTH {64} \
] [get_bd_cells ila_0]

connect_bd_net [get_bd_ports clk] [get_bd_pins vio_0/clk]
connect_bd_net [get_bd_ports clk] [get_bd_pins ila_0/clk]

connect_bd_net [get_bd_pins vio_0/probe_out0] [get_bd_pins min_pcie_to_udp_top_0/pcie_wr_en]
connect_bd_net [get_bd_pins vio_0/probe_out1] [get_bd_pins min_pcie_to_udp_top_0/pcie_wr_addr]
connect_bd_net [get_bd_pins vio_0/probe_out2] [get_bd_pins min_pcie_to_udp_top_0/pcie_wr_data]

connect_bd_net [get_bd_pins min_pcie_to_udp_top_0/pcie_wr_en] [get_bd_pins ila_0/probe0]
connect_bd_net [get_bd_pins min_pcie_to_udp_top_0/pcie_wr_addr] [get_bd_pins ila_0/probe1]
connect_bd_net [get_bd_pins min_pcie_to_udp_top_0/pcie_wr_data] [get_bd_pins ila_0/probe2]
connect_bd_net [get_bd_pins min_pcie_to_udp_top_0/status_reg] [get_bd_pins ila_0/probe3]
connect_bd_net [get_bd_pins min_pcie_to_udp_top_0/tx_axis_tvalid] [get_bd_pins ila_0/probe4]
connect_bd_net [get_bd_pins min_pcie_to_udp_top_0/tx_axis_tlast] [get_bd_pins ila_0/probe5]
connect_bd_net [get_bd_pins min_pcie_to_udp_top_0/tx_axis_tkeep] [get_bd_pins ila_0/probe6]
connect_bd_net [get_bd_pins min_pcie_to_udp_top_0/tx_axis_tdata] [get_bd_pins ila_0/probe7]

regenerate_bd_layout
save_bd_design
