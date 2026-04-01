set proj_dir [file normalize [file dirname [info script]]]

proc remove_if_in_project {path} {
    set f [get_files -quiet $path]
    if {[llength $f] > 0} {
        remove_files $f
    }
}

proc close_bd_if_open {bd_name} {
    set bd_obj [get_bd_designs -quiet $bd_name]
    if {[llength $bd_obj] > 0} {
        close_bd_design $bd_obj
    }
}

# Remove old debug-oriented or superseded tops from sources_1.
remove_if_in_project [file join $proj_dir "Controler.srcs" "sources_1" "new" "min_pcie_to_udp_debug_top.v"]
remove_if_in_project [file join $proj_dir "Controler.srcs" "sources_1" "new" "pcie_cmd_to_10g_mac_top.v"]
remove_if_in_project [file join $proj_dir "Controler.srcs" "sources_1" "new" "sfp_plus_communication_top.v"]
remove_if_in_project [file join $proj_dir "Controler.srcs" "sources_1" "new" "pcie_cmd_parser.v"]
remove_if_in_project [file join $proj_dir "Controler.srcs" "sources_1" "new" "frame_builder_1khz.v"]
remove_if_in_project [file join $proj_dir "Controler.srcs" "sources_1" "new" "timer_1khz.v"]

# Remove old block designs from the project file set.
set old_bd_1 [file join $proj_dir "Controler.srcs" "sources_1" "bd" "min_link_bd" "min_link_bd.bd"]
set old_bd_2 [file join $proj_dir "Controler.srcs" "sources_1" "bd" "min_debug_bd" "min_debug_bd.bd"]

close_bd_if_open min_link_bd
close_bd_if_open min_debug_bd

remove_if_in_project $old_bd_1
remove_if_in_project $old_bd_2

# Keep the business integration top as the only recommended RTL top.
set top_file [file join $proj_dir "Controler.srcs" "sources_1" "new" "pcie_cmd_to_ten_gig_mac_top.v"]
set top_obj [get_files -quiet $top_file]
if {[llength $top_obj] > 0} {
    set_property top pcie_cmd_to_ten_gig_mac_top [current_fileset]
}

update_compile_order -fileset sources_1

puts "Cleanup complete. Recommended top is pcie_cmd_to_ten_gig_mac_top."
