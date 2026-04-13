set repo_root [file normalize [file dirname [info script]]]
set project_name "Controler"
set project_dir [file join $repo_root "build" "vivado" $project_name]
set project_xpr [file join $project_dir "${project_name}.xpr"]
set part_name "xc7k325tffg900-2"
set synth_top "pcie_xdma_sfp_loopback_top"
set sim_top "tb_host_register_loopback"

proc ensure_file_exists {path_value} {
    if {![file exists $path_value]} {
        error "Required file not found: $path_value"
    }
}

proc add_unique_file {fileset_name path_value} {
    ensure_file_exists $path_value
    set normalized [file normalize $path_value]
    if {[llength [get_files -quiet $normalized]] == 0} {
        if {$fileset_name eq ""} {
            add_files -norecurse $normalized
        } else {
            add_files -fileset $fileset_name -norecurse $normalized
        }
        puts "Added file: $normalized"
    }
}

proc add_unique_files {fileset_name file_list} {
    foreach path_value $file_list {
        add_unique_file $fileset_name $path_value
    }
}

proc add_optional_file {fileset_name path_value} {
    if {[file exists $path_value]} {
        add_unique_file $fileset_name $path_value
        return 1
    }
    return 0
}

proc reset_standard_filesets {} {
    foreach fileset_name {sources_1 constrs_1 sim_1} {
        if {[llength [get_filesets -quiet $fileset_name]] > 0} {
            set existing_files [get_files -quiet -of_objects [get_filesets $fileset_name]]
            if {[llength $existing_files] > 0} {
                remove_files -fileset $fileset_name $existing_files
            }
        }
    }
}

file mkdir $project_dir

if {[llength [get_projects -quiet]] > 0} {
    puts "Closing currently open project: [current_project]"
    close_project
}

create_project -force $project_name $project_dir -part $part_name
set_property target_language Verilog [current_project]
set_property simulator_language Mixed [current_project]

reset_standard_filesets

set rtl_dir [file join $repo_root "Controler.srcs" "sources_1" "new"]
set sim_dir [file join $repo_root "Controler.srcs" "sim_1" "new"]
set constr_dir [file join $repo_root "Controler.srcs" "constrs_1" "new"]
set ip_dir [file join $repo_root "Controler.srcs" "sources_1" "ip" "gtwizard_0"]
set local_xdma_xci [file join $repo_root "Controler.srcs" "sources_1" "ip" "xdma_sys_xdma_0_0" "xdma_sys_xdma_0_0.xci"]
set ref_xdma_xci "D:/FPGA/No.226_pcie_xdma_sys_x8_5g/No.226_pcie_xdma_sys_x8_5g.srcs/sources_1/bd/xdma_sys/ip/xdma_sys_xdma_0_0/xdma_sys_xdma_0_0.xci"

set rtl_files [list \
    [file join $rtl_dir "axi_mm_to_axil_bridge.v"] \
    [file join $rtl_dir "axil_bram_ctrl_simple.v"] \
    [file join $rtl_dir "axil_interconnect_1x2.v"] \
    [file join $rtl_dir "axil_to_host_regs.v"] \
    [file join $rtl_dir "async_gtx_word_fifo.v"] \
    [file join $rtl_dir "cmd_bram_queue.v"] \
    [file join $rtl_dir "cmd_bram_dual_port.v"] \
    [file join $rtl_dir "custom_gtx_phy_gtwizard0.v"] \
    [file join $rtl_dir "custom_optical_tx.v"] \
    [file join $rtl_dir "custom_optical_tx_bram.v"] \
    [file join $rtl_dir "gtx_rx32_to_stream64.v"] \
    [file join $rtl_dir "loopback_checker.v"] \
    [file join $rtl_dir "loopback_debug_block.v"] \
    [file join $rtl_dir "optical_cmd_rx.v"] \
    [file join $rtl_dir "optical_stream_to_gtx32.v"] \
    [file join $rtl_dir "pcie_bar_cmd_rx.v"] \
    [file join $rtl_dir "pcie_cmd_to_optical_axil_loopback_top.v"] \
    [file join $rtl_dir "pcie_cmd_to_optical_board_top.v"] \
    [file join $rtl_dir "pcie_cmd_to_optical_gtx_top.v"] \
    [file join $rtl_dir "pcie_cmd_to_optical_host_loopback_top.v"] \
    [file join $rtl_dir "pcie_cmd_to_optical_top.v"] \
    [file join $rtl_dir "pcie_cmd_to_optical_hw_bringup_top.v"] \
    [file join $rtl_dir "pcie_xdma_axil_sfp_loopback_top.v"] \
    [file join $rtl_dir "pcie_xdma_sfp_loopback_top.v"] \
    [file join $rtl_dir "simple_sync_fifo.v"] \
    [file join $rtl_dir "xdma_m_axil_optical_loopback_top.v"] \
    [file join $rtl_dir "xdma_m_axi_optical_loopback_top.v"] \
]

set sim_files [list \
    [file join $sim_dir "tb_axil_to_host_regs.v"] \
    [file join $sim_dir "tb_host_register_loopback.v"] \
    [file join $sim_dir "tb_loopback_debug_block.v"] \
    [file join $sim_dir "tb_optical_cmd_loopback.v"] \
    [file join $sim_dir "tb_min_pcie_to_udp_debug_top.v"] \
]

set constr_files [list \
    [file join $constr_dir "pcie_xdma_sfp_loopback_top.xdc"] \
]

set ip_files [list \
    [file join $ip_dir "gtwizard_0.xci"] \
]

add_unique_files "" $rtl_files
add_unique_files "" $ip_files
set xdma_ip_source ""
set xdma_ip_added 0
if {[file exists $local_xdma_xci]} {
    set xdma_ip_added [add_optional_file "" $local_xdma_xci]
    if {$xdma_ip_added} {
        set xdma_ip_source "repository"
    }
} elseif {[file exists $ref_xdma_xci]} {
    set xdma_ip_added [add_optional_file "" $ref_xdma_xci]
    if {$xdma_ip_added} {
        set xdma_ip_source "reference project"
    }
}
add_unique_files "sim_1" $sim_files
add_unique_files "constrs_1" $constr_files

update_compile_order -fileset sources_1
update_compile_order -fileset sim_1

set_property top $synth_top [get_filesets sources_1]
set_property top $sim_top [get_filesets sim_1]

set gtwizard_ips [get_ips -quiet gtwizard_0]
if {[llength $gtwizard_ips] > 0} {
    generate_target all $gtwizard_ips
}

set xdma_ips [get_ips -quiet *xdma*]
if {$xdma_ip_added && [llength $xdma_ips] > 0} {
    generate_target all $xdma_ips
}

save_project

puts ""
puts "Project setup completed successfully."
puts "Project file: $project_xpr"
puts "Top module  : $synth_top"
puts "Sim top     : $sim_top"
if {$xdma_ip_added} {
    if {[llength $xdma_ips] > 0} {
        puts "XDMA IP     : added from $xdma_ip_source and recognized as [join $xdma_ips {, }]"
    } else {
        puts "XDMA IP     : xci added from $xdma_ip_source, but get_ips did not enumerate it in this session"
    }
} else {
    puts "XDMA IP     : no local or reference xci found, PCIe XDMA top will remain unavailable until added"
}
puts "Constraints : bring-up and PCIe/XDMA top XDCs added with guarded get_ports/get_cells"
puts ""
puts "Next recommended Vivado steps:"
puts "  1. Run Synthesis"
puts "  2. Run Implementation"
puts "  3. Generate Bitstream"
puts "  4. If ILA is needed, open synthesized design and run Set Up Debug"
puts "  5. If you want the standalone bring-up path instead, switch top to pcie_cmd_to_optical_hw_bringup_top and manually replace the XDC with pcie_cmd_to_optical_board_top.xdc"
