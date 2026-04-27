# Configure project_1 back to the PCIe XDMA test top.
#
# Usage in Vivado Tcl Console:
#   source D:/Controler/xdma/scripts/use_pcie_xdma_top.tcl

set script_dir [file dirname [file normalize [info script]]]
set repo_root [file dirname $script_dir]
set project_file [file join $repo_root "project_1" "project_1.xpr"]

if {[llength [get_projects -quiet]] == 0} {
    open_project $project_file
}

set_property top xdma_wrapper [get_filesets sources_1]
set_property constrset constrs_1 [get_runs synth_1]
set_property constrset constrs_1 [get_runs impl_1]
update_compile_order -fileset sources_1

puts "PCIe XDMA top is active."
puts "Top module     : xdma_wrapper"
puts "Constraint set : constrs_1"
