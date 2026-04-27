# Configure project_1 to build vendor-aligned SFP3 bring-up top.
#
# Usage:
#   source D:/Controler/xdma/scripts/use_vendor_sfp3_top.tcl

set script_dir [file dirname [file normalize [info script]]]
set repo_root [file dirname $script_dir]
set project_file [file join $repo_root "project_1" "project_1.xpr"]

if {[llength [get_projects -quiet]] == 0} {
    open_project $project_file
}

set src_root [file join $repo_root "project_1" "project_1.srcs" "sources_1"]
set vendor_root [file join $src_root "vendor_sfp3"]
set exdes_dir [file join $vendor_root "example_design"]
set ad9516_dir [file join $vendor_root "ad9516_ctl"]

set src_files [list \
    [file join $src_root "new" "sfp_vendor_align_top.v"] \
    [file join $src_root "ip" "ila_sfp_tx" "ila_sfp_tx.xci"] \
    [file join $src_root "ip" "ila_sfp_rx" "ila_sfp_rx.xci"] \
    [file join $vendor_root "ip_gtwizard_v2_4_1x_4ch.v"] \
    [file join $vendor_root "ip_gtwizard_v2_4_1x_4ch_gt.v"] \
    [file join $vendor_root "ip_mmcme2_clk.v"] \
    [file join $ad9516_dir "m_ad9516_ctl.v"] \
    [file join $ad9516_dir "m_ad9516_config.v"] \
    [file join $ad9516_dir "m_ad9516_vco_init.v"] \
    [file join $ad9516_dir "m_spi_ctl.v"] \
    [file join $exdes_dir "ip_gtwizard_v2_4_1x_4ch_exdes.v"] \
    [file join $exdes_dir "ip_gtwizard_v2_4_1x_4ch_gt_frame_gen.v"] \
    [file join $exdes_dir "ip_gtwizard_v2_4_1x_4ch_gt_frame_check.v"] \
    [file join $exdes_dir "ip_gtwizard_v2_4_1x_4ch_gt_usrclk_source.v"] \
    [file join $exdes_dir "ip_gtwizard_v2_4_1x_4ch_init.v"] \
    [file join $exdes_dir "ip_gtwizard_v2_4_1x_4ch_lpm_loop_fsm.v"] \
    [file join $exdes_dir "ip_gtwizard_v2_4_1x_4ch_recclk_monitor.v"] \
    [file join $exdes_dir "ip_gtwizard_v2_4_1x_4ch_rx_startup_fsm.v"] \
    [file join $exdes_dir "ip_gtwizard_v2_4_1x_4ch_tx_startup_fsm.v"] \
    [file join $exdes_dir "ip_gtwizard_v2_4_1x_4ch_adapt_starter.v"] \
    [file join $exdes_dir "ip_gtwizard_v2_4_1x_4ch_adapt_top_dfe.v"] \
    [file join $exdes_dir "ip_gtwizard_v2_4_1x_4ch_adapt_top_lpm.v"] \
    [file join $exdes_dir "ip_gtwizard_v2_4_1x_4ch_agc_loop_fsm.v"] \
    [file join $exdes_dir "ip_gtwizard_v2_4_1x_4ch_ctle_agc_comp.v"] \
    [file join $exdes_dir "ip_gtwizard_v2_4_1x_4ch_block_sync_sm.v"] \
    [file join $exdes_dir "ip_gtwizard_v2_4_1x_4ch_scrambler.v"] \
    [file join $exdes_dir "ip_gtwizard_v2_4_1x_4ch_descrambler.v"] \
    [file join $exdes_dir "gt_rom_init_tx.dat"] \
    [file join $exdes_dir "gt_rom_init_rx.dat"] \
]

foreach f $src_files {
    if {![file exists $f]} {
        error "Required vendor SFP source file is missing: $f"
    }
}

add_files -norecurse -fileset sources_1 $src_files

set_property top sfp_vendor_align_top [get_filesets sources_1]
update_compile_order -fileset sources_1

set constrset_name vendor_sfp3_constrs
if {[llength [get_filesets -quiet $constrset_name]] == 0} {
    create_fileset -constrset $constrset_name
}

set xdc_file [file join $repo_root "project_1" "project_1.srcs" "constrs_1" "sfp_loopback" "vendor_sfp3_top.xdc"]
if {![file exists $xdc_file]} {
    error "Vendor SFP3 XDC is missing: $xdc_file"
}

add_files -norecurse -fileset $constrset_name $xdc_file
set_property constrset $constrset_name [get_runs synth_1]
set_property constrset $constrset_name [get_runs impl_1]

puts "Vendor-aligned SFP3 top is active."
puts "Top module     : sfp_vendor_align_top"
puts "Constraint set : $constrset_name"
