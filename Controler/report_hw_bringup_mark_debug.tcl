set target_top "pcie_cmd_to_optical_hw_bringup_top"

if {[catch {current_design} current_design_name] || $current_design_name eq ""} {
    puts "当前没有打开的设计，正在尝试打开 synth_1..."
    open_run synth_1
}

puts "当前设计: [current_design]"
puts "目标顶层: $target_top"
puts ""
puts "当前综合设计中的 MARK_DEBUG 网络："

set marked_nets [lsort -dictionary [get_nets -hier -filter {MARK_DEBUG == 1}]]

if {[llength $marked_nets] == 0} {
    puts "  没有找到 MARK_DEBUG 网络。"
    puts "  请检查是否已经对当前顶层完成综合，并确认使用的是最新 RTL。"
    return
}

foreach net_obj $marked_nets {
    puts "  [get_property NAME $net_obj]"
}

puts ""
puts "关键调试信号检查结果："

set expected_stems [list \
    "status_reg_dbg" \
    "tx_frame_count_dbg" \
    "optical_status_dbg" \
    "gtx_tx_word_count_dbg" \
    "phy_debug_status_dbg" \
    "rx_frame_count_dbg" \
    "crc_error_count_dbg" \
    "format_error_count_dbg" \
    "match_count_dbg" \
    "last_rx_seq_dbg" \
    "last_rx_addr_dbg" \
    "last_rx_data_dbg" \
    "board_test_status_dbg" \
]

foreach stem $expected_stems {
    set stem_matches [lsort -dictionary [get_nets -hier -filter "MARK_DEBUG == 1 && NAME =~ *$stem*"]]
    if {[llength $stem_matches] > 0} {
        puts "  OK   : $stem"
    } else {
        puts "  缺失 : $stem"
    }
}
