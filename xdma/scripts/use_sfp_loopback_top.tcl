# Configure project_1 to build the standalone SFP+ loopback test top.
#
# Usage in Vivado Tcl Console:
#   source D:/Controler/xdma/scripts/use_sfp_loopback_top.tcl
#
# This script does not delete the XDMA design. It only adds the SFP test files,
# selects sfp_loopback_top as the active top, and switches to an SFP-only
# constraint set.

set script_dir [file dirname [file normalize [info script]]]
set repo_root [file dirname $script_dir]
set project_file [file join $repo_root "project_1" "project_1.xpr"]

if {[llength [get_projects -quiet]] == 0} {
    open_project $project_file
}

set sfp_top [file join $repo_root "project_1" "project_1.srcs" "sources_1" "new" "sfp_loopback_top.v"]
set exdes_dir [file join $repo_root "gtwizard_0_ex" "gtwizard_0_ex.srcs" "sources_1" "imports" "example_design"]
set support_dir [file join $exdes_dir "support"]
set core_dir [file join $repo_root "gtwizard_0_ex" "gtwizard_0_ex.srcs" "sources_1" "ip" "gtwizard_0"]
set core_exdes_dir [file join $core_dir "gtwizard_0" "example_design"]
set vendor_root [file join $repo_root "project_1" "project_1.srcs" "sources_1" "vendor_sfp3"]
set ad9516_dir [file join $vendor_root "ad9516_ctl"]

set sfp_files [list \
    $sfp_top \
    [file join $exdes_dir "gtwizard_0_exdes.v"] \
    [file join $exdes_dir "gtwizard_0_gt_frame_gen.v"] \
    [file join $exdes_dir "gtwizard_0_gt_frame_check.v"] \
    [file join $support_dir "gtwizard_0_common_reset.v"] \
    [file join $support_dir "gtwizard_0_common.v"] \
    [file join $support_dir "gtwizard_0_gt_usrclk_source.v"] \
    [file join $support_dir "gtwizard_0_support.v"] \
    [file join $vendor_root "ip_mmcme2_clk.v"] \
    [file join $ad9516_dir "m_ad9516_ctl.v"] \
    [file join $ad9516_dir "m_ad9516_config.v"] \
    [file join $ad9516_dir "m_ad9516_vco_init.v"] \
    [file join $ad9516_dir "m_spi_ctl.v"] \
    [file join $core_dir "gtwizard_0.v"] \
    [file join $core_dir "gtwizard_0_gt.v"] \
    [file join $core_dir "gtwizard_0_init.v"] \
    [file join $core_dir "gtwizard_0_multi_gt.v"] \
    [file join $core_dir "gtwizard_0_cpll_railing.v"] \
    [file join $core_exdes_dir "gtwizard_0_tx_startup_fsm.v"] \
    [file join $core_exdes_dir "gtwizard_0_rx_startup_fsm.v"] \
    [file join $core_exdes_dir "gtwizard_0_sync_block.v"] \
]

foreach f $sfp_files {
    if {![file exists $f]} {
        error "Required SFP loopback source file is missing: $f"
    }
}

add_files -norecurse -fileset sources_1 $sfp_files

set ip_dir [file join $repo_root "project_1" "project_1.srcs" "sources_1" "ip"]

# Disable the stale project IP entry so the SRIO build uses the example-design
# RTL directly instead of the old gtwizard_0.xci flow.
if {[llength [get_files -quiet -all [file join $ip_dir "gtwizard_0" "gtwizard_0.xci"]]] > 0} {
    set old_gt_xci [get_files -all [file join $ip_dir "gtwizard_0" "gtwizard_0.xci"]]
    set_property used_in_synthesis false $old_gt_xci
    set_property used_in_implementation false $old_gt_xci
}

if {[llength [get_ips -quiet ila_sfp_tx]] == 0} {
    create_ip -name ila -vendor xilinx.com -library ip -version 6.2 -module_name ila_sfp_tx -dir $ip_dir
}
set_property -dict [list \
    CONFIG.C_NUM_OF_PROBES {14} \
    CONFIG.C_PROBE0_WIDTH {32} \
    CONFIG.C_PROBE1_WIDTH {4} \
    CONFIG.C_PROBE2_WIDTH {1} \
    CONFIG.C_PROBE3_WIDTH {1} \
    CONFIG.C_PROBE4_WIDTH {1} \
    CONFIG.C_PROBE5_WIDTH {1} \
    CONFIG.C_PROBE6_WIDTH {1} \
    CONFIG.C_PROBE7_WIDTH {1} \
    CONFIG.C_PROBE8_WIDTH {1} \
    CONFIG.C_PROBE9_WIDTH {1} \
    CONFIG.C_PROBE10_WIDTH {1} \
    CONFIG.C_PROBE11_WIDTH {1} \
    CONFIG.C_PROBE12_WIDTH {1} \
    CONFIG.C_PROBE13_WIDTH {9} \
    CONFIG.C_DATA_DEPTH {1024} \
] [get_ips ila_sfp_tx]
generate_target -force all [get_ips ila_sfp_tx]
set tx_ila_xci [get_property IP_FILE [get_ips ila_sfp_tx]]
set tx_ila_synth [file join [file dirname $tx_ila_xci] "synth" "ila_sfp_tx.v"]
if {![file exists $tx_ila_synth]} {
    error "TX ILA synth netlist is missing after generation: $tx_ila_synth"
}
add_files -norecurse -fileset sources_1 $tx_ila_synth
set_property used_in_synthesis true [get_files -all $tx_ila_synth]
set_property used_in_implementation true [get_files -all $tx_ila_synth]
synth_ip [get_ips ila_sfp_tx]

if {[llength [get_ips -quiet ila_sfp_rx]] == 0} {
    create_ip -name ila -vendor xilinx.com -library ip -version 6.2 -module_name ila_sfp_rx -dir $ip_dir
}
set_property -dict [list \
    CONFIG.C_NUM_OF_PROBES {19} \
    CONFIG.C_PROBE0_WIDTH {32} \
    CONFIG.C_PROBE1_WIDTH {4} \
    CONFIG.C_PROBE2_WIDTH {8} \
    CONFIG.C_PROBE3_WIDTH {1} \
    CONFIG.C_PROBE4_WIDTH {1} \
    CONFIG.C_PROBE5_WIDTH {1} \
    CONFIG.C_PROBE6_WIDTH {4} \
    CONFIG.C_PROBE7_WIDTH {4} \
    CONFIG.C_PROBE8_WIDTH {1} \
    CONFIG.C_PROBE9_WIDTH {1} \
    CONFIG.C_PROBE10_WIDTH {1} \
    CONFIG.C_PROBE11_WIDTH {1} \
    CONFIG.C_PROBE12_WIDTH {1} \
    CONFIG.C_PROBE13_WIDTH {1} \
    CONFIG.C_PROBE14_WIDTH {1} \
    CONFIG.C_PROBE15_WIDTH {1} \
    CONFIG.C_PROBE16_WIDTH {1} \
    CONFIG.C_PROBE17_WIDTH {1} \
    CONFIG.C_PROBE18_WIDTH {2} \
    CONFIG.C_DATA_DEPTH {1024} \
] [get_ips ila_sfp_rx]
generate_target -force all [get_ips ila_sfp_rx]
set rx_ila_xci [get_property IP_FILE [get_ips ila_sfp_rx]]
set rx_ila_synth [file join [file dirname $rx_ila_xci] "synth" "ila_sfp_rx.v"]
if {![file exists $rx_ila_synth]} {
    error "RX ILA synth netlist is missing after generation: $rx_ila_synth"
}
add_files -norecurse -fileset sources_1 $rx_ila_synth
set_property used_in_synthesis true [get_files -all $rx_ila_synth]
set_property used_in_implementation true [get_files -all $rx_ila_synth]
synth_ip [get_ips ila_sfp_rx]

set_property top sfp_loopback_top [get_filesets sources_1]
update_compile_order -fileset sources_1

set constrset_name sfp_loopback_constrs
if {[llength [get_filesets -quiet $constrset_name]] == 0} {
    create_fileset -constrset $constrset_name
}

set sfp_xdc [file join $repo_root "project_1" "project_1.srcs" "constrs_1" "sfp_loopback" "sfp_loopback_top.xdc"]
if {![file exists $sfp_xdc]} {
    error "SFP loopback XDC is missing: $sfp_xdc"
}

add_files -norecurse -fileset $constrset_name $sfp_xdc
set_property constrset $constrset_name [get_runs synth_1]
set_property constrset $constrset_name [get_runs impl_1]

puts "SFP loopback top is active."
puts "Top module     : sfp_loopback_top"
puts "Constraint set : $constrset_name"
puts "SFP channel    : SFP3 / GTXE2_CHANNEL_X0Y11"
puts "GT refclk      : G8/G7 -> MGTREFCLK0P/N_117"
puts "Clock chain    : vendor AD9516 + MMCM bring-up on CLK_IN_50M / T26"
puts "LED J28        : TRACK_DATA_OUT"
puts "TX ILA         : ila_sfp_tx, clk=gt0_txusrclk2_i, probes=txdata/txcharisk/txresetdone/txfsmdone/tx_reset/cplllock/cpllfbclklost/txuserrdy/gttxreset/txpmareset/txpcsreset/soft_reset/drpclk_heartbeat/tx_read_counter"
puts "RX ILA         : ila_sfp_rx, clk=gt0_rxusrclk2_i, probes=rxdata/rxcharisk/error_count/track/rxresetdone/rxfsmdone/disperr/notintable/rx_reset/rxuserrdy/gtrxreset/rxpmareset/rxpcsreset/rxbyteisaligned/rxbyterealign/rxcommadet/rxmcommaalignen/rxpcommaalignen/rxclkcorcnt"
