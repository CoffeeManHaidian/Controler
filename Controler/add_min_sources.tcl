set proj_dir [file normalize [file dirname [info script]]]
set src_dir  [file join $proj_dir "Controler.srcs" "sources_1" "new"]
set xdc_dir  [file join $proj_dir "Controler.srcs" "constrs_1" "new"]

add_files -norecurse [file join $src_dir "simple_sync_fifo.v"]
add_files -norecurse [file join $src_dir "pcie_bar_cmd_rx.v"]
add_files -norecurse [file join $src_dir "udp_frame_tx_min.v"]
add_files -norecurse [file join $src_dir "min_pcie_to_udp_debug_top.v"]
add_files -norecurse [file join $src_dir "custom_optical_tx.v"]
add_files -norecurse [file join $src_dir "pcie_cmd_to_optical_top.v"]
add_files -norecurse [file join $src_dir "optical_stream_to_gtx32.v"]
add_files -norecurse [file join $src_dir "async_gtx_word_fifo.v"]
add_files -norecurse [file join $src_dir "pcie_cmd_to_optical_gtx_top.v"]
add_files -norecurse [file join $src_dir "custom_gtx_phy_stub.v"]
add_files -norecurse [file join $src_dir "custom_gtx_phy_gtwizard0.v"]
add_files -norecurse [file join $src_dir "pcie_cmd_to_optical_board_top.v"]
add_files -norecurse [file join $src_dir "pcie_cmd_to_optical_hw_bringup_top.v"]
add_files -norecurse [file join $proj_dir "Controler.srcs" "sources_1" "ip" "gtwizard_0" "gtwizard_0.xci"]
add_files -fileset constrs_1 -norecurse [file join $xdc_dir "pcie_cmd_to_optical_gtx_top.xdc"]
add_files -fileset constrs_1 -norecurse [file join $xdc_dir "pcie_cmd_to_optical_board_top.xdc"]

update_compile_order -fileset sources_1
update_compile_order -fileset constrs_1

set_property top pcie_cmd_to_optical_hw_bringup_top [current_fileset]
