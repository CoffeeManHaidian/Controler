set ltx_file {C:/Users/PS/Desktop/Controler/xdma/bit_mcs/sfp_vendor_align_top.ltx}

open_hw
connect_hw_server
open_hw_target

set dev [lindex [get_hw_devices] 0]
current_hw_device $dev

puts "ATTACH_LTX: $ltx_file"
set_property PROBES.FILE $ltx_file $dev
set_property FULL_PROBES.FILE $ltx_file $dev

refresh_hw_device $dev

puts "PROBES.FILE: [get_property PROBES.FILE $dev]"
puts "FULL_PROBES.FILE: [get_property FULL_PROBES.FILE $dev]"

set ilas [get_hw_ilas]
puts "HW_ILA_COUNT: [llength $ilas]"

foreach ila $ilas {
    puts "ILA: $ila"
    set probes [get_hw_probes -of_objects $ila]
    puts "  PROBE_COUNT: [llength $probes]"
    foreach p $probes {
        puts "    [get_property NAME $p]"
    }
}

close_hw_target
disconnect_hw_server
