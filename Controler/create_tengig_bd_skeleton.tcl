create_bd_design "tengig_integration_bd"

startgroup
create_bd_cell -type module -reference pcie_cmd_to_ten_gig_mac_top pcie_cmd_to_ten_gig_mac_top_0
endgroup

# External ports expected to connect to existing board/project infrastructure.
create_bd_port -dir I clk
create_bd_port -dir I rst
create_bd_port -dir I pcie_wr_en
create_bd_port -dir I -from 31 -to 0 pcie_wr_addr
create_bd_port -dir I -from 31 -to 0 pcie_wr_data

create_bd_port -dir I tx_clk0
create_bd_port -dir I tx_axis_aresetn

create_bd_port -dir I s_axis_tx_tready
create_bd_port -dir O -from 63 -to 0 s_axis_tx_tdata
create_bd_port -dir O -from 7 -to 0 s_axis_tx_tkeep
create_bd_port -dir O s_axis_tx_tvalid
create_bd_port -dir O s_axis_tx_tlast
create_bd_port -dir O -from 7 -to 0 tx_ifg_delay

create_bd_port -dir I sfp_signal_detect
create_bd_port -dir I sfp_tx_fault
create_bd_port -dir I phy_tx_resetdone
create_bd_port -dir I phy_rx_resetdone
create_bd_port -dir I phy_block_lock

create_bd_port -dir O -from 31 -to 0 status_reg
create_bd_port -dir O -from 31 -to 0 tx_frame_count
create_bd_port -dir O -from 31 -to 0 sfp_status

connect_bd_net [get_bd_ports clk]               [get_bd_pins pcie_cmd_to_ten_gig_mac_top_0/clk]
connect_bd_net [get_bd_ports rst]               [get_bd_pins pcie_cmd_to_ten_gig_mac_top_0/rst]
connect_bd_net [get_bd_ports pcie_wr_en]        [get_bd_pins pcie_cmd_to_ten_gig_mac_top_0/pcie_wr_en]
connect_bd_net [get_bd_ports pcie_wr_addr]      [get_bd_pins pcie_cmd_to_ten_gig_mac_top_0/pcie_wr_addr]
connect_bd_net [get_bd_ports pcie_wr_data]      [get_bd_pins pcie_cmd_to_ten_gig_mac_top_0/pcie_wr_data]

connect_bd_net [get_bd_ports tx_clk0]           [get_bd_pins pcie_cmd_to_ten_gig_mac_top_0/tx_clk0]
connect_bd_net [get_bd_ports tx_axis_aresetn]   [get_bd_pins pcie_cmd_to_ten_gig_mac_top_0/tx_axis_aresetn]

connect_bd_net [get_bd_ports s_axis_tx_tready]  [get_bd_pins pcie_cmd_to_ten_gig_mac_top_0/s_axis_tx_tready]
connect_bd_net [get_bd_ports s_axis_tx_tdata]   [get_bd_pins pcie_cmd_to_ten_gig_mac_top_0/s_axis_tx_tdata]
connect_bd_net [get_bd_ports s_axis_tx_tkeep]   [get_bd_pins pcie_cmd_to_ten_gig_mac_top_0/s_axis_tx_tkeep]
connect_bd_net [get_bd_ports s_axis_tx_tvalid]  [get_bd_pins pcie_cmd_to_ten_gig_mac_top_0/s_axis_tx_tvalid]
connect_bd_net [get_bd_ports s_axis_tx_tlast]   [get_bd_pins pcie_cmd_to_ten_gig_mac_top_0/s_axis_tx_tlast]
connect_bd_net [get_bd_ports tx_ifg_delay]      [get_bd_pins pcie_cmd_to_ten_gig_mac_top_0/tx_ifg_delay]

connect_bd_net [get_bd_ports sfp_signal_detect] [get_bd_pins pcie_cmd_to_ten_gig_mac_top_0/sfp_signal_detect]
connect_bd_net [get_bd_ports sfp_tx_fault]      [get_bd_pins pcie_cmd_to_ten_gig_mac_top_0/sfp_tx_fault]
connect_bd_net [get_bd_ports phy_tx_resetdone]  [get_bd_pins pcie_cmd_to_ten_gig_mac_top_0/phy_tx_resetdone]
connect_bd_net [get_bd_ports phy_rx_resetdone]  [get_bd_pins pcie_cmd_to_ten_gig_mac_top_0/phy_rx_resetdone]
connect_bd_net [get_bd_ports phy_block_lock]    [get_bd_pins pcie_cmd_to_ten_gig_mac_top_0/phy_block_lock]

connect_bd_net [get_bd_ports status_reg]        [get_bd_pins pcie_cmd_to_ten_gig_mac_top_0/status_reg]
connect_bd_net [get_bd_ports tx_frame_count]    [get_bd_pins pcie_cmd_to_ten_gig_mac_top_0/tx_frame_count]
connect_bd_net [get_bd_ports sfp_status]        [get_bd_pins pcie_cmd_to_ten_gig_mac_top_0/sfp_status]

regenerate_bd_layout
save_bd_design
