# Direct bitstream generation for PCIe/XDMA/BRAM bring-up when SFP GTX pins are
# not confirmed yet. This bypasses the Vivado GUI run hook path:
#   source D:/Controler/Controler/scripts/generate_bitstream_allow_unconstrained_sfp.tcl
#
# Do not use this as the final SFP hardware-validation build. Replace the SFP
# PACKAGE_PIN constraints with the real board pinout before validating SFP.

set script_dir [file dirname [file normalize [info script]]]
set repo_root [file dirname $script_dir]
set bit_out_dir [file join $repo_root "build" "bitstream"]
file mkdir $bit_out_dir

if {[llength [get_projects -quiet]] == 0} {
    error "No Vivado project is open. Open the project first, then source this script."
}

if {[llength [get_runs -quiet impl_1]] == 0} {
    error "Implementation run impl_1 was not found. Run implementation first."
}

open_run impl_1

foreach drc_name {UCIO-1 NSTD-1} {
    set drc_checks [get_drc_checks -quiet $drc_name]
    if {[llength $drc_checks] > 0} {
        set_property SEVERITY Warning $drc_checks
        puts "$drc_name severity is now: [get_property SEVERITY $drc_checks]"
    } else {
        puts "INFO: DRC check $drc_name was not found in this design; skipping."
    }
}

set design_name [get_property NAME [current_design]]
if {$design_name eq ""} {
    set design_name "pcie_xdma_sfp_loopback_top"
}
set bit_path [file join $bit_out_dir "${design_name}_allow_unconstrained_sfp.bit"]

puts "Writing bitstream to: $bit_path"
write_bitstream -force $bit_path
puts "Bitstream generation finished: $bit_path"
