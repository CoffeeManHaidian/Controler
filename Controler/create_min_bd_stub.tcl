create_bd_design "min_link_bd"

startgroup
create_bd_cell -type module -reference min_pcie_to_udp_top min_pcie_to_udp_top_0
endgroup

create_bd_port -dir I -type clk clk
create_bd_port -dir I -type rst rst

create_bd_port -dir I pcie_wr_en
create_bd_port -dir I -from 31 -to 0 pcie_wr_addr
create_bd_port -dir I -from 31 -to 0 pcie_wr_data
create_bd_port -dir O -from 31 -to 0 status_reg

create_bd_port -dir O -from 63 -to 0 tx_axis_tdata
create_bd_port -dir O -from 7 -to 0 tx_axis_tkeep
create_bd_port -dir O tx_axis_tvalid
create_bd_port -dir O tx_axis_tlast
create_bd_port -dir I tx_axis_tready

connect_bd_net [get_bd_ports clk] [get_bd_pins min_pcie_to_udp_top_0/clk]
connect_bd_net [get_bd_ports rst] [get_bd_pins min_pcie_to_udp_top_0/rst]

connect_bd_net [get_bd_ports pcie_wr_en] [get_bd_pins min_pcie_to_udp_top_0/pcie_wr_en]
connect_bd_net [get_bd_ports pcie_wr_addr] [get_bd_pins min_pcie_to_udp_top_0/pcie_wr_addr]
connect_bd_net [get_bd_ports pcie_wr_data] [get_bd_pins min_pcie_to_udp_top_0/pcie_wr_data]
connect_bd_net [get_bd_ports status_reg] [get_bd_pins min_pcie_to_udp_top_0/status_reg]

connect_bd_net [get_bd_ports tx_axis_tdata] [get_bd_pins min_pcie_to_udp_top_0/tx_axis_tdata]
connect_bd_net [get_bd_ports tx_axis_tkeep] [get_bd_pins min_pcie_to_udp_top_0/tx_axis_tkeep]
connect_bd_net [get_bd_ports tx_axis_tvalid] [get_bd_pins min_pcie_to_udp_top_0/tx_axis_tvalid]
connect_bd_net [get_bd_ports tx_axis_tlast] [get_bd_pins min_pcie_to_udp_top_0/tx_axis_tlast]
connect_bd_net [get_bd_ports tx_axis_tready] [get_bd_pins min_pcie_to_udp_top_0/tx_axis_tready]

regenerate_bd_layout
save_bd_design
