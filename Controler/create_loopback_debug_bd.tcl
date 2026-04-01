set bd_name "loopback_debug_bd"
set script_dir [file normalize [file dirname [info script]]]
set src_dir [file join $script_dir "Controler.srcs" "sources_1" "new"]

proc require_open_project {} {
    if {[catch {current_project} proj_name] || $proj_name eq ""} {
        error "No Vivado project is open. Open Controler.xpr first, then source this script."
    }
}

proc ensure_project_file {abs_path} {
    set normalized [file normalize $abs_path]
    if {![file exists $normalized]} {
        error "Required source file not found: $normalized"
    }

    set project_files [get_files -quiet $normalized]
    if {[llength $project_files] == 0} {
        add_files -norecurse $normalized
        puts "Added source file to project: $normalized"
    }
}

proc ensure_loopback_sources {src_dir} {
    set required_files [list \
        "pcie_bar_cmd_rx.v" \
        "simple_sync_fifo.v" \
        "custom_optical_tx.v" \
        "pcie_cmd_to_optical_top.v" \
        "optical_stream_to_gtx32.v" \
        "pcie_cmd_to_optical_gtx_top.v" \
        "gtx_rx32_to_stream64.v" \
        "optical_cmd_rx.v" \
        "loopback_checker.v" \
        "loopback_debug_block.v" \
        "min_optical_loopback_debug_top.v" \
    ]

    foreach rel_file $required_files {
        ensure_project_file [file join $src_dir $rel_file]
    }

    update_compile_order -fileset sources_1
}

proc open_or_create_bd {bd_name} {
    set existing_bd [get_files -quiet */${bd_name}.bd]
    if {[llength $existing_bd] > 0} {
        open_bd_design [lindex $existing_bd 0]
        current_bd_design $bd_name
        puts "Opened existing BD: $bd_name"
    } else {
        create_bd_design $bd_name
        puts "Created new BD: $bd_name"
    }
}

require_open_project
ensure_loopback_sources $src_dir
open_or_create_bd $bd_name

proc repair_existing_debug_cells {} {
    if {[llength [get_bd_cells -quiet vio_0]] > 0} {
        set_property -dict [list \
            CONFIG.C_NUM_PROBE_IN {0} \
            CONFIG.C_NUM_PROBE_OUT {3} \
            CONFIG.C_PROBE_OUT0_WIDTH {1} \
            CONFIG.C_PROBE_OUT1_WIDTH {32} \
            CONFIG.C_PROBE_OUT2_WIDTH {32} \
        ] [get_bd_cells vio_0]
    }

    if {[llength [get_bd_cells -quiet ila_0]] > 0} {
        set_property -dict [list \
            CONFIG.C_NUM_OF_PROBES {15} \
            CONFIG.C_PROBE0_WIDTH {1} \
            CONFIG.C_PROBE1_WIDTH {32} \
            CONFIG.C_PROBE2_WIDTH {32} \
            CONFIG.C_PROBE3_WIDTH {32} \
            CONFIG.C_PROBE4_WIDTH {32} \
            CONFIG.C_PROBE5_WIDTH {32} \
            CONFIG.C_PROBE6_WIDTH {32} \
            CONFIG.C_PROBE7_WIDTH {32} \
            CONFIG.C_PROBE8_WIDTH {32} \
            CONFIG.C_PROBE9_WIDTH {32} \
            CONFIG.C_PROBE10_WIDTH {32} \
            CONFIG.C_PROBE11_WIDTH {1} \
            CONFIG.C_PROBE12_WIDTH {32} \
            CONFIG.C_PROBE13_WIDTH {1} \
            CONFIG.C_PROBE14_WIDTH {64} \
        ] [get_bd_cells ila_0]
    }

    if {[llength [get_bd_cells -quiet xlconstant_0]] > 0} {
        set_property -dict [list CONFIG.CONST_VAL {0} CONFIG.CONST_WIDTH {1}] [get_bd_cells xlconstant_0]
    }
}

if {[llength [get_bd_cells -quiet min_optical_loopback_debug_top_0]] > 0} {
    puts "BD $bd_name is already populated. Repairing properties, validating, and saving."
    repair_existing_debug_cells
    regenerate_bd_layout
    save_bd_design
    return
}

if {[llength [get_bd_cells -quiet]] > 0} {
    error "BD $bd_name already contains unexpected cells. Please review it manually or delete it before rerunning this script."
}

startgroup
create_bd_cell -type module -reference min_optical_loopback_debug_top min_optical_loopback_debug_top_0
create_bd_cell -type ip -vlnv xilinx.com:ip:vio:3.0 vio_0
create_bd_cell -type ip -vlnv xilinx.com:ip:ila:6.2 ila_0
create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0
endgroup

set_property -dict [list \
    CONFIG.C_EN_PROBE_IN_ACTIVITY {0} \
    CONFIG.C_NUM_PROBE_IN {0} \
    CONFIG.C_NUM_PROBE_OUT {3} \
    CONFIG.C_PROBE_OUT0_WIDTH {1} \
    CONFIG.C_PROBE_OUT1_WIDTH {32} \
    CONFIG.C_PROBE_OUT2_WIDTH {32} \
] [get_bd_cells vio_0]

set_property -dict [list \
    CONFIG.C_NUM_OF_PROBES {15} \
    CONFIG.C_PROBE0_WIDTH {1} \
    CONFIG.C_PROBE1_WIDTH {32} \
    CONFIG.C_PROBE2_WIDTH {32} \
    CONFIG.C_PROBE3_WIDTH {32} \
    CONFIG.C_PROBE4_WIDTH {32} \
    CONFIG.C_PROBE5_WIDTH {32} \
    CONFIG.C_PROBE6_WIDTH {32} \
    CONFIG.C_PROBE7_WIDTH {32} \
    CONFIG.C_PROBE8_WIDTH {32} \
    CONFIG.C_PROBE9_WIDTH {32} \
    CONFIG.C_PROBE10_WIDTH {32} \
    CONFIG.C_PROBE11_WIDTH {1} \
    CONFIG.C_PROBE12_WIDTH {32} \
    CONFIG.C_PROBE13_WIDTH {1} \
    CONFIG.C_PROBE14_WIDTH {64} \
] [get_bd_cells ila_0]

set_property -dict [list CONFIG.CONST_VAL {0} CONFIG.CONST_WIDTH {1}] [get_bd_cells xlconstant_0]

create_bd_port -dir I -type clk clk

connect_bd_net [get_bd_ports clk] [get_bd_pins min_optical_loopback_debug_top_0/clk]
connect_bd_net [get_bd_ports clk] [get_bd_pins vio_0/clk]
connect_bd_net [get_bd_ports clk] [get_bd_pins ila_0/clk]

connect_bd_net [get_bd_pins xlconstant_0/dout] [get_bd_pins min_optical_loopback_debug_top_0/rst]

connect_bd_net [get_bd_pins vio_0/probe_out0] [get_bd_pins min_optical_loopback_debug_top_0/pcie_wr_en]
connect_bd_net [get_bd_pins vio_0/probe_out1] [get_bd_pins min_optical_loopback_debug_top_0/pcie_wr_addr]
connect_bd_net [get_bd_pins vio_0/probe_out2] [get_bd_pins min_optical_loopback_debug_top_0/pcie_wr_data]

connect_bd_net [get_bd_pins min_optical_loopback_debug_top_0/pcie_wr_en] [get_bd_pins ila_0/probe0]
connect_bd_net [get_bd_pins min_optical_loopback_debug_top_0/pcie_wr_addr] [get_bd_pins ila_0/probe1]
connect_bd_net [get_bd_pins min_optical_loopback_debug_top_0/pcie_wr_data] [get_bd_pins ila_0/probe2]
connect_bd_net [get_bd_pins min_optical_loopback_debug_top_0/status_reg] [get_bd_pins ila_0/probe3]
connect_bd_net [get_bd_pins min_optical_loopback_debug_top_0/tx_frame_count] [get_bd_pins ila_0/probe4]
connect_bd_net [get_bd_pins min_optical_loopback_debug_top_0/gtx_tx_word_count] [get_bd_pins ila_0/probe5]
connect_bd_net [get_bd_pins min_optical_loopback_debug_top_0/rx_frame_count] [get_bd_pins ila_0/probe6]
connect_bd_net [get_bd_pins min_optical_loopback_debug_top_0/crc_error_count] [get_bd_pins ila_0/probe7]
connect_bd_net [get_bd_pins min_optical_loopback_debug_top_0/format_error_count] [get_bd_pins ila_0/probe8]
connect_bd_net [get_bd_pins min_optical_loopback_debug_top_0/match_count] [get_bd_pins ila_0/probe9]
connect_bd_net [get_bd_pins min_optical_loopback_debug_top_0/last_rx_seq] [get_bd_pins ila_0/probe10]
connect_bd_net [get_bd_pins min_optical_loopback_debug_top_0/gtx_tx_valid] [get_bd_pins ila_0/probe11]
connect_bd_net [get_bd_pins min_optical_loopback_debug_top_0/gtx_tx_data] [get_bd_pins ila_0/probe12]
connect_bd_net [get_bd_pins min_optical_loopback_debug_top_0/optical_tx_valid] [get_bd_pins ila_0/probe13]
connect_bd_net [get_bd_pins min_optical_loopback_debug_top_0/optical_tx_data] [get_bd_pins ila_0/probe14]

validate_bd_design
regenerate_bd_layout
save_bd_design

puts "loopback_debug_bd has been created and saved successfully."
