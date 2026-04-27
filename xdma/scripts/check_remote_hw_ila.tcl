open_hw
connect_hw_server
open_hw_target

set devs [get_hw_devices]
puts "HW_DEVICES: $devs"
if {[llength $devs] == 0} {
    error "No hardware device found"
}

set dev [lindex $devs 0]
current_hw_device $dev

foreach prop {PROGRAM.FILE PROBES.FILE FULL_PROBES.FILE PART} {
    if {[catch {set val [get_property $prop $dev]} err]} {
        puts "$prop: <unavailable: $err>"
    } else {
        puts "$prop: $val"
    }
}

refresh_hw_device $dev

set ilas [get_hw_ilas]
puts "HW_ILAS: $ilas"
puts "HW_ILA_COUNT: [llength $ilas]"

foreach ila $ilas {
    puts "ILA: $ila"
    foreach prop {NAME CELL_NAME CORE_LOCATION DATA_DEPTH C_DATA_DEPTH} {
        if {[catch {set val [get_property $prop $ila]} err]} {
            puts "  $prop: <unavailable>"
        } else {
            puts "  $prop: $val"
        }
    }

    set probes [get_hw_probes -of_objects $ila]
    puts "  PROBE_COUNT: [llength $probes]"
    foreach p $probes {
        set name [get_property NAME $p]
        if {[catch {set width [get_property WIDTH $p]}]} {
            set width "?"
        }
        if {[catch {set port [get_property PROBE_PORT $p]}]} {
            set port "?"
        }
        puts "    PROBE: port=$port width=$width name=$name"
    }
}

close_hw_target
disconnect_hw_server
