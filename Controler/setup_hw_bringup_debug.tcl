set expected_top "pcie_cmd_to_optical_hw_bringup_top"

proc require_synth_design_open {} {
    if {[catch {current_design} current_name] || $current_name eq ""} {
        puts "当前没有打开的综合设计，正在尝试打开 synth_1..."
        open_run synth_1
    }
}

proc remove_existing_debug_cores {} {
    set existing_cores [get_debug_cores -quiet *]
    set removable_cores {}

    foreach core_name $existing_cores {
        if {$core_name ne "dbg_hub"} {
            lappend removable_cores $core_name
        }
    }

    if {[llength $removable_cores] > 0} {
        puts "正在移除已有 debug core..."
        delete_debug_core $removable_cores
    }
}

proc connect_probe_bus {core_name probe_name signal_name} {
    set probe_nets [get_nets -hier -filter "NAME =~ *$signal_name\[*"]
    if {[llength $probe_nets] == 0} {
        error "未找到调试总线信号: $signal_name"
    }

    set ordered_nets [lsort -dictionary $probe_nets]
    set_property port_width [llength $ordered_nets] [get_debug_ports ${core_name}/${probe_name}]
    connect_debug_port ${core_name}/${probe_name} $ordered_nets
}

proc create_ila_core {core_name clk_pattern depth} {
    create_debug_core $core_name ila
    set_property C_DATA_DEPTH $depth [get_debug_cores $core_name]
    set_property C_ADV_TRIGGER false [get_debug_cores $core_name]
    set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores $core_name]
    set_property C_TRIGIN_EN false [get_debug_cores $core_name]
    set_property C_TRIGOUT_EN false [get_debug_cores $core_name]
    set_property port_width 1 [get_debug_ports ${core_name}/clk]

    set clk_net [get_nets -hier -filter "NAME =~ *$clk_pattern*"]
    if {[llength $clk_net] == 0} {
        error "未找到 $core_name 的时钟网络，匹配模式: $clk_pattern"
    }

    connect_debug_port ${core_name}/clk [lindex $clk_net 0]
}

proc add_probe {core_name probe_index signal_name} {
    if {$probe_index > 0} {
        create_debug_port $core_name probe
    }

    set probe_name "probe${probe_index}"
    set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports ${core_name}/${probe_name}]
    connect_probe_bus $core_name $probe_name $signal_name
}

require_synth_design_open

puts "当前设计: [current_design]"
puts "期望顶层: $expected_top"

remove_existing_debug_cores

create_ila_core u_ila_sys "SYSCLK_I_IBUF_BUFG" 1024
set sysclk_signals [list \
    "board_test_status_dbg" \
    "phy_debug_status_dbg" \
    "tx_frame_count_dbg" \
    "gtx_tx_word_count_dbg" \
    "status_reg_dbg" \
    "optical_status_dbg" \
]

set probe_index 0
foreach sig_name $sysclk_signals {
    add_probe u_ila_sys $probe_index $sig_name
    incr probe_index
}

create_ila_core u_ila_rx "GT0_RXUSRCLK2_OUT" 1024
set rx_signals [list \
    "rx_frame_count_dbg" \
    "match_count_dbg" \
    "crc_error_count_dbg" \
    "format_error_count_dbg" \
    "last_rx_seq_dbg" \
    "last_rx_addr_dbg" \
    "last_rx_data_dbg" \
]

set probe_index 0
foreach sig_name $rx_signals {
    add_probe u_ila_rx $probe_index $sig_name
    incr probe_index
}

if {[llength [get_debug_cores -quiet dbg_hub]] > 0} {
    set_property C_CLK_INPUT_FREQ_HZ 50000000 [get_debug_cores dbg_hub]
    set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
    set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]

    set hub_clk [get_nets -hier -filter "NAME =~ *SYSCLK_I_IBUF_BUFG*"]
    if {[llength $hub_clk] > 0} {
        connect_debug_port dbg_hub/clk [lindex $hub_clk 0]
    }
}

puts ""
puts "已创建双 ILA 调试结构："
puts "  u_ila_sys : SYSCLK 域"
puts "  u_ila_rx  : RXUSRCLK2 域"
puts ""
puts "下一步建议："
puts "  1. 保存设计"
puts "  2. Run Implementation"
puts "  3. 检查 timing 是否改善"
puts "  4. Generate Bitstream"
