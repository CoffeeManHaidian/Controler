# Batch entry point: rebuild the portable Vivado project, run implementation,
# then export both a JTAG bitstream and a BPI flash MCS image.
#
# Command line:
#   C:/Xilinx/Vivado/2017.4/bin/vivado.bat -mode batch -source D:/Controler/Controler/scripts/build_mcs_from_project.tcl

set script_dir [file dirname [file normalize [info script]]]
set repo_root [file dirname $script_dir]
set setup_tcl [file join $repo_root "setup_project.tcl"]

if {![file exists $setup_tcl]} {
    error "Project setup script not found: $setup_tcl"
}

source $setup_tcl

if {[llength [get_runs -quiet impl_1]] == 0} {
    error "Implementation run impl_1 was not found after running $setup_tcl"
}

# Stop at route_design so the script can lower only the bring-up DRC severities
# before write_bitstream. This avoids permanently changing project settings.
reset_run impl_1
launch_runs impl_1 -to_step route_design -jobs 4
wait_on_run impl_1

set impl_status [get_property STATUS [get_runs impl_1]]
puts "impl_1 status after route: $impl_status"

source [file join $script_dir "generate_bitstream_and_mcs_allow_unconstrained_sfp.tcl"]
