open_hw
connect_hw_server
open_hw_target
current_hw_device [lindex [get_hw_devices] 0]
refresh_hw_device [current_hw_device]

set vio [lindex [get_hw_vios] 0]

set p_en   [get_hw_probes min_debug_bd_i/vio_0_probe_out0_1 -of_objects $vio]
set p_addr [get_hw_probes min_debug_bd_i/vio_0_probe_out1_1 -of_objects $vio]
set p_data [get_hw_probes min_debug_bd_i/vio_0_probe_out2_1 -of_objects $vio]

proc vio_pulse_write {vio p_en p_addr p_data addr data} {
    set_property OUTPUT_VALUE $addr $p_addr
    set_property OUTPUT_VALUE $data $p_data
    set_property OUTPUT_VALUE 1 $p_en
    commit_hw_vio $vio

    after 100

    set_property OUTPUT_VALUE 0 $p_en
    commit_hw_vio $vio

    after 100
}

set cmd_list {
    {00001000 00000055}
    {00001004 000000AA}
    {00001008 0000005A}
    {0000100C 000000FF}
}

foreach cmd $cmd_list {
    set addr [lindex $cmd 0]
    set data [lindex $cmd 1]

    puts "Write CMD_ADDR $addr"
    vio_pulse_write $vio $p_en $p_addr $p_data 00000000 $addr

    puts "Write CMD_DATA $data"
    vio_pulse_write $vio $p_en $p_addr $p_data 00000004 $data

    puts "Commit command $addr/$data"
    vio_pulse_write $vio $p_en $p_addr $p_data 00000008 00000001

    after 200
}

puts "Batch test done."
