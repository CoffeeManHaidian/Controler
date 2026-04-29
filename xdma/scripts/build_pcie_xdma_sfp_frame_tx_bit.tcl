#
# Project-mode batch build for the integrated PCIe XDMA + SFP frame-TX top.
#
# Usage:
#   vivado -mode batch -source D:/Controler/xdma/scripts/build_pcie_xdma_sfp_frame_tx_bit.tcl

set script_dir [file dirname [file normalize [info script]]]
set repo_root [file dirname $script_dir]
set impl_dir [file join $repo_root "project_1" "project_1.runs" "impl_1"]
set bit_file [file join $impl_dir "pcie_xdma_sfp_frame_tx_top.bit"]
set ltx_file [file join $impl_dir "pcie_xdma_sfp_frame_tx_top.ltx"]

source [file join $script_dir "use_pcie_xdma_sfp_frame_tx_top.tcl"]

catch {reset_run impl_1}
catch {reset_run synth_1}

launch_runs synth_1 -jobs 2
wait_on_run synth_1

set synth_status [get_property STATUS [get_runs synth_1]]
puts "synth_1 status: $synth_status"

if {[string first "synth_design Complete" $synth_status] < 0} {
    error "Integrated PCIe+SFP synthesis did not complete. synth_1 status: $synth_status"
}

launch_runs impl_1 -to_step write_bitstream -jobs 2
wait_on_run impl_1

set impl_status [get_property STATUS [get_runs impl_1]]
puts "impl_1 status: $impl_status"

if {[string first "write_bitstream Complete" $impl_status] < 0} {
    error "Integrated PCIe+SFP bitstream build did not complete. impl_1 status: $impl_status"
}

if {![file exists $bit_file]} {
    error "Integrated PCIe+SFP bitstream is missing after impl_1: $bit_file"
}

puts "Integrated PCIe+SFP bit artifact : $bit_file"
if {[file exists $ltx_file]} {
    puts "Integrated PCIe+SFP ltx artifact : $ltx_file"
}
