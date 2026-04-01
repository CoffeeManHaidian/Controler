set proj_dir [file normalize [file dirname [info script]]]

add_files -fileset sim_1 -norecurse [file join $proj_dir "Controler.srcs" "sim_1" "new" "tb_loopback_debug_block.v"]
set_property top tb_loopback_debug_block [get_filesets sim_1]
update_compile_order -fileset sim_1

launch_simulation
run all
