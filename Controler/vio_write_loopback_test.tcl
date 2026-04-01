set vio [lindex [get_hw_vios] 0]

set p_en   [get_hw_probes loopback_debug_bd_i/vio_0_probe_out0_1 -of_objects $vio]
set p_addr [get_hw_probes loopback_debug_bd_i/vio_0_probe_out1_1 -of_objects $vio]
set p_data [get_hw_probes loopback_debug_bd_i/vio_0_probe_out2_1 -of_objects $vio]

proc vio_pulse_write {vio p_en p_addr p_data addr data} {
    set_property OUTPUT_VALUE [format %08X $addr] $p_addr
    set_property OUTPUT_VALUE [format %08X $data] $p_data
    set_property OUTPUT_VALUE 1 $p_en
    commit_hw_vio $vio
    after 100
    set_property OUTPUT_VALUE 0 $p_en
    commit_hw_vio $vio
    after 100
}

vio_pulse_write $vio $p_en $p_addr $p_data 32'h00000000 32'h12345678
vio_pulse_write $vio $p_en $p_addr $p_data 32'h00000004 32'hA5A50055
vio_pulse_write $vio $p_en $p_addr $p_data 32'h00000008 32'h00000001
