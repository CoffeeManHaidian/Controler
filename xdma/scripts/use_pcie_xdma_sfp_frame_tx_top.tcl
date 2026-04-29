# Configure project_1 to build the integrated PCIe XDMA + SFP frame-TX top.
#
# Usage:
#   source D:/Controler/xdma/scripts/use_pcie_xdma_sfp_frame_tx_top.tcl

set script_dir [file dirname [file normalize [info script]]]
set repo_root [file dirname $script_dir]
set project_file [file join $repo_root "project_1" "project_1.xpr"]

if {[llength [get_projects -quiet]] == 0} {
    open_project $project_file
}

set src_root [file join $repo_root "project_1" "project_1.srcs" "sources_1"]
set vendor_root [file join $src_root "vendor_sfp3"]
set exdes_dir [file join $repo_root "gtwizard_0_ex" "gtwizard_0_ex.srcs" "sources_1" "imports" "example_design"]
set support_dir [file join $exdes_dir "support"]
set core_dir [file join $repo_root "gtwizard_0_ex" "gtwizard_0_ex.srcs" "sources_1" "ip" "gtwizard_0"]
set core_exdes_dir [file join $core_dir "gtwizard_0" "example_design"]
set ad9516_dir [file join $vendor_root "ad9516_ctl"]

set src_files [list \
    [file join $src_root "new" "pcie_xdma_sfp_frame_tx_top.v"] \
    [file join $src_root "new" "axil_to_host_regs.v"] \
    [file join $src_root "new" "hv_mmio_regs.v"] \
    [file join $src_root "new" "hv_mmio_tx_reader.v"] \
    [file join $src_root "new" "hv_mmio_rx_capture.v"] \
    [file join $src_root "new" "hv_async_pulse_sync.v"] \
    [file join $src_root "new" "hv_dual_port_ram.v"] \
    [file join $src_root "new" "hv_sfp_loopback_ctrl.v"] \
    [file join $vendor_root "example_design" "srio_base_shell.v"] \
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
    [file join $src_root "ip" "xdma_sys_xdma_0_0" "xdma_sys_xdma_0_0.xci"] \
    [file join $core_dir "gtwizard_0.v"] \
    [file join $core_dir "gtwizard_0_gt.v"] \
    [file join $core_dir "gtwizard_0_init.v"] \
    [file join $core_dir "gtwizard_0_multi_gt.v"] \
    [file join $core_dir "gtwizard_0_cpll_railing.v"] \
    [file join $core_exdes_dir "gtwizard_0_tx_startup_fsm.v"] \
    [file join $core_exdes_dir "gtwizard_0_rx_startup_fsm.v"] \
    [file join $core_exdes_dir "gtwizard_0_sync_block.v"] \
    [file join $exdes_dir "gt_rom_init_tx.dat"] \
    [file join $exdes_dir "gt_rom_init_rx.dat"] \
]

foreach f $src_files {
    if {![file exists $f]} {
        error "Required PCIe+SFP source file is missing: $f"
    }
}

add_files -norecurse -fileset sources_1 $src_files

if {[llength [get_files -quiet -all [file join $src_root "ip" "gtwizard_0" "gtwizard_0.xci"]]] > 0} {
    set old_gt_xci [get_files -all [file join $src_root "ip" "gtwizard_0" "gtwizard_0.xci"]]
    set_property used_in_synthesis false $old_gt_xci
    set_property used_in_implementation false $old_gt_xci
}

set_property top pcie_xdma_sfp_frame_tx_top [get_filesets sources_1]
update_compile_order -fileset sources_1

set constrset_name pcie_sfp_frame_tx_constrs
if {[llength [get_filesets -quiet $constrset_name]] == 0} {
    create_fileset -constrset $constrset_name
}

set xdc_file [file join $repo_root "project_1" "project_1.srcs" "constrs_1" "sfp_loopback" "pcie_xdma_sfp_frame_tx_top.xdc"]
if {![file exists $xdc_file]} {
    error "Integrated PCIe+SFP XDC is missing: $xdc_file"
}

add_files -norecurse -fileset $constrset_name $xdc_file
set_property constrset $constrset_name [get_runs synth_1]
set_property constrset $constrset_name [get_runs impl_1]

puts "Integrated PCIe XDMA + SFP frame TX top is active."
puts "Top module     : pcie_xdma_sfp_frame_tx_top"
puts "Constraint set : $constrset_name"
puts "Host path      : XDMA M_AXI_LITE -> host regs -> TX BRAM"
puts "Optical path   : TX BRAM -> hv_mmio_tx_reader -> SRIO Base shell"
