#
# Reconfigure XDMA IP so Windows XDMA driver can expose:
#   BAR0 -> \user
#   BAR1 -> \control
#
# Usage:
#   vivado -mode batch -source D:/Controler/xdma/scripts/configure_xdma_user_bar0.tcl

set script_dir [file dirname [file normalize [info script]]]
set repo_root [file dirname $script_dir]
set project_file [file join $repo_root "project_1" "project_1.xpr"]
set use_top_script [file join $script_dir "use_pcie_xdma_sfp_frame_tx_top.tcl"]

if {[llength [get_projects -quiet]] == 0} {
    open_project $project_file
}

source $use_top_script

set ip_obj [get_ips -quiet xdma_sys_xdma_0_0]
if {[llength $ip_obj] == 0} {
    set ip_obj [get_ips -quiet *xdma*]
}
if {[llength $ip_obj] == 0} {
    error "Cannot find XDMA IP object in project after loading top sources."
}

set_property -dict [list \
    CONFIG.axilite_master_en {true} \
    CONFIG.xdma_axilite_slave {false} \
    CONFIG.pf0_bar0_enabled {true} \
    CONFIG.pf0_bar0_type {Memory} \
    CONFIG.pf0_bar0_scale {Kilobytes} \
    CONFIG.pf0_bar0_size {128} \
    CONFIG.pf0_bar0_64bit {false} \
    CONFIG.pf0_bar0_prefetchable {false} \
    CONFIG.pf0_bar1_enabled {true} \
    CONFIG.pf0_bar1_type {Memory} \
    CONFIG.pf0_bar1_scale {Kilobytes} \
    CONFIG.pf0_bar1_size {4} \
    CONFIG.pf0_bar1_64bit {false} \
    CONFIG.pf0_bar1_prefetchable {false} \
    CONFIG.pciebar2axibar_axil_master {0x0000000000000000} \
] $ip_obj

generate_target all $ip_obj
export_ip_user_files -of_objects $ip_obj -no_script -sync -force

puts "Updated XDMA IP file: [get_property IP_FILE $ip_obj]"
puts "pf0_bar0_enabled      = [get_property CONFIG.pf0_bar0_enabled $ip_obj]"
puts "pf0_bar1_enabled      = [get_property CONFIG.pf0_bar1_enabled $ip_obj]"
puts "axilite_master_en     = [get_property CONFIG.axilite_master_en $ip_obj]"
puts "xdma_axilite_slave    = [get_property CONFIG.xdma_axilite_slave $ip_obj]"
