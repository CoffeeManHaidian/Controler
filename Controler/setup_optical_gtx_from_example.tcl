set proj_dir [file normalize [file dirname [info script]]]
set src_dir  [file join $proj_dir "Controler.srcs" "sources_1" "new"]
set xdc_dir  [file join $proj_dir "Controler.srcs" "constrs_1" "new"]

proc add_if_exists {args} {
    set fileset [lindex $args 0]
    set path    [lindex $args 1]
    if {[file exists $path]} {
        if {[llength [get_files -quiet $path]] == 0} {
            add_files -fileset $fileset -norecurse $path
            puts "Added: $path"
        } else {
            puts "Already present: $path"
        }
    } else {
        puts "Missing: $path"
    }
}

add_if_exists sources_1 [file join $src_dir "simple_sync_fifo.v"]
add_if_exists sources_1 [file join $src_dir "pcie_bar_cmd_rx.v"]
add_if_exists sources_1 [file join $src_dir "udp_frame_tx_min.v"]
add_if_exists sources_1 [file join $src_dir "min_pcie_to_udp_debug_top.v"]
add_if_exists sources_1 [file join $src_dir "custom_optical_tx.v"]
add_if_exists sources_1 [file join $src_dir "pcie_cmd_to_optical_top.v"]
add_if_exists sources_1 [file join $src_dir "optical_stream_to_gtx32.v"]
add_if_exists sources_1 [file join $src_dir "async_gtx_word_fifo.v"]
add_if_exists sources_1 [file join $src_dir "pcie_cmd_to_optical_gtx_top.v"]
add_if_exists sources_1 [file join $src_dir "custom_gtx_phy_stub.v"]
add_if_exists sources_1 [file join $src_dir "custom_gtx_phy_gtwizard0.v"]
add_if_exists sources_1 [file join $src_dir "pcie_cmd_to_optical_board_top.v"]
add_if_exists sources_1 [file join $src_dir "pcie_cmd_to_optical_hw_bringup_top.v"]
add_if_exists sources_1 [file join $proj_dir "Controler.srcs" "sources_1" "ip" "gtwizard_0" "gtwizard_0.xci"]
add_if_exists constrs_1 [file join $xdc_dir "pcie_cmd_to_optical_gtx_top.xdc"]
add_if_exists constrs_1 [file join $xdc_dir "pcie_cmd_to_optical_board_top.xdc"]

if {[llength [get_files -quiet [file join $proj_dir "clk_only.xdc"]]] > 0} {
    set_property is_enabled false [get_files [file join $proj_dir "clk_only.xdc"]]
}

set_property top pcie_cmd_to_optical_hw_bringup_top [get_filesets sources_1]
update_compile_order -fileset sources_1
update_compile_order -fileset constrs_1

puts ""
puts "Current top is now: pcie_cmd_to_optical_hw_bringup_top"
puts "This top is intended for first hardware bring-up."
puts "It auto-generates command writes internally and removes unconstrained debug/user ports."
puts ""
puts "Reference example settings:"
puts "  QUAD_118 / MGTREFCLK1_118 / 6.0Gbps / 32-bit datapath"
