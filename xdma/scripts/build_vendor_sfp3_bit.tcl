# Vendor-aligned SFP3 bring-up build.
#
# This flow intentionally avoids the Windows runme.bat/CScript wrapper, because
# that layer intermittently fails in the local environment and marks otherwise
# valid runs as ERROR. We let Vivado generate the run Tcl scripts, then invoke
# those Tcl scripts directly with vivado.bat.
#
# Usage:
#   vivado -mode batch -source D:/Controler/xdma/scripts/build_vendor_sfp3_bit.tcl

set script_dir [file dirname [file normalize [info script]]]
set repo_root [file dirname $script_dir]
set project_file [file join $repo_root "project_1" "project_1.xpr"]
set vivado_bin [info nameofexecutable]

source [file join $script_dir "use_vendor_sfp3_top.tcl"]

# Ensure ILA IP output products exist before generating run scripts.
foreach ila_name {ila_sfp_tx ila_sfp_rx} {
    if {[llength [get_ips -quiet $ila_name]] > 0} {
        generate_target all [get_ips $ila_name]
    }
}

catch {reset_run synth_1}
catch {reset_run impl_1}

launch_runs synth_1 -scripts_only
launch_runs impl_1 -to_step write_bitstream -scripts_only

set synth_tcl [file join $repo_root "project_1" "project_1.runs" "synth_1" "sfp_vendor_align_top.tcl"]
set impl_tcl  [file join $repo_root "project_1" "project_1.runs" "impl_1"  "sfp_vendor_align_top.tcl"]

if {![file exists $synth_tcl]} {
    error "Vendor SFP3 synth Tcl was not generated: $synth_tcl"
}
if {![file exists $impl_tcl]} {
    error "Vendor SFP3 impl Tcl was not generated: $impl_tcl"
}

close_project

puts "Running vendor synth Tcl directly: $synth_tcl"
if {[catch {exec $vivado_bin -mode batch -source $synth_tcl} synth_result]} {
    puts $synth_result
    error "Vendor SFP3 synthesis Tcl failed"
}

set synth_dcp [file join $repo_root "project_1" "project_1.runs" "synth_1" "sfp_vendor_align_top.dcp"]
if {![file exists $synth_dcp]} {
    error "Vendor SFP3 synthesis did not produce DCP: $synth_dcp"
}
puts "Vendor SFP3 synth artifact: $synth_dcp"

puts "Running vendor impl Tcl directly: $impl_tcl"
if {[catch {exec $vivado_bin -mode batch -source $impl_tcl} impl_result]} {
    puts $impl_result
    error "Vendor SFP3 implementation Tcl failed"
}

set impl_dir [file join $repo_root "project_1" "project_1.runs" "impl_1"]
set bit_file [file join $impl_dir "sfp_vendor_align_top.bit"]
set ltx_file [file join $impl_dir "sfp_vendor_align_top.ltx"]

if {![file exists $bit_file]} {
    error "Vendor SFP3 implementation did not produce bitstream: $bit_file"
}

puts "Vendor SFP3 bit artifact : $bit_file"
if {[file exists $ltx_file]} {
    puts "Vendor SFP3 ltx artifact : $ltx_file"
}
puts "Vendor SFP3 direct build completed."
