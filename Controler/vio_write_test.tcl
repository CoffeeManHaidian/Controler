set vio [lindex [get_hw_vios] 0]

set p_en   [get_hw_probes min_debug_bd_i/vio_0_probe_out0_1 -of_objects $vio]
set p_addr [get_hw_probes min_debug_bd_i/vio_0_probe_out1_1 -of_objects $vio]
set p_data [get_hw_probes min_debug_bd_i/vio_0_probe_out2_1 -of_objects $vio]

set_property OUTPUT_VALUE 00000000 $p_addr
set_property OUTPUT_VALUE 12345678 $p_data
set_property OUTPUT_VALUE 1 $p_en
commit_hw_vio $vio

after 100

set_property OUTPUT_VALUE 0 $p_en
commit_hw_vio $vio

after 100

set_property OUTPUT_VALUE 00000004 $p_addr
set_property OUTPUT_VALUE A5A50055 $p_data
set_property OUTPUT_VALUE 1 $p_en
commit_hw_vio $vio

after 100

set_property OUTPUT_VALUE 0 $p_en
commit_hw_vio $vio

after 100

set_property OUTPUT_VALUE 00000008 $p_addr
set_property OUTPUT_VALUE 00000001 $p_data
set_property OUTPUT_VALUE 1 $p_en
commit_hw_vio $vio

after 100

set_property OUTPUT_VALUE 0 $p_en
commit_hw_vio $vio
