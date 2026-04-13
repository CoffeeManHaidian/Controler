# Source this script from an already-open Vivado project to attach the temporary
# bitstream pre-hook to impl_1.
#
# Usage in Vivado Tcl Console:
#   source D:/Controler/Controler/scripts/apply_bitgen_hook_to_current_project.tcl

set script_dir [file dirname [file normalize [info script]]]
set hook_path [file join $script_dir "allow_unconstrained_sfp_bitgen.tcl"]

if {![file exists $hook_path]} {
    error "Bitgen hook not found: $hook_path"
}

set impl_runs [get_runs -quiet impl_1]
if {[llength $impl_runs] == 0} {
    error "Implementation run impl_1 was not found. Open the project first or create impl_1."
}

set_property STEPS.WRITE_BITSTREAM.TCL.PRE $hook_path [get_runs impl_1]
puts "Attached write_bitstream pre-hook to impl_1:"
puts "  $hook_path"
puts "Current PRE hook:"
puts "  [get_property STEPS.WRITE_BITSTREAM.TCL.PRE [get_runs impl_1]]"

save_project
