#
# Project-mode batch build for the standalone SRIO example-source SFP top.
#
# Usage:
#   vivado -mode batch -source D:/Controler/xdma/scripts/build_sfp_loopback_bit.tcl

set script_dir [file dirname [file normalize [info script]]]
source [file join $script_dir "use_sfp_loopback_top.tcl"]

catch {reset_run impl_1}
catch {reset_run synth_1}

launch_runs synth_1 -jobs 2
wait_on_run synth_1

set synth_status [get_property STATUS [get_runs synth_1]]
puts "synth_1 status: $synth_status"

if {[string first "synth_design Complete" $synth_status] < 0} {
    error "SFP loopback synthesis did not complete. synth_1 status: $synth_status"
}

launch_runs impl_1 -to_step write_bitstream -jobs 2
wait_on_run impl_1

set run_status [get_property STATUS [get_runs impl_1]]
puts "impl_1 status: $run_status"

if {[string first "write_bitstream Complete" $run_status] < 0} {
    error "SFP loopback bitstream build did not complete. impl_1 status: $run_status"
}
