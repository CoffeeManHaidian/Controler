set repo_root [file normalize [file join [file dirname [info script]] ".."]]
set project_file [file join $repo_root "project_1" "project_1.xpr"]

open_project $project_file
open_run synth_1 -name synth_1

puts "Device: [get_property PART [current_project]]"

set sfp3_pins {
    F2 SFP3_TX_P MGTXTXP3_117
    F1 SFP3_TX_N MGTXTXN3_117
    F6 SFP3_RX_P MGTXRXP3_117
    F5 SFP3_RX_N MGTXRXN3_117
    G8 SFP_CLK_P_0 MGTREFCLK0P_117
    G7 SFP_CLK_N_0 MGTREFCLK0N_117
    J8 SFP_CLK_P_1 MGTREFCLK1P_117
    J7 SFP_CLK_N_1 MGTREFCLK1N_117
}

puts "\n=== PACKAGE PIN BASIC QUERY ==="
foreach {pin net ball_name} $sfp3_pins {
    puts "\n--- $net / $ball_name / package pin $pin ---"
    set pkg [get_package_pins -quiet $pin]
    puts "package_pin: $pkg"
    if {[llength $pkg] > 0} {
        foreach prop {PIN_FUNC BANK VCCO IOSTANDARD DIFF_PAIR_PIN SITE TILE} {
            set value [get_property -quiet $prop $pkg]
            if {$value ne ""} {
                puts "$prop: $value"
            }
        }
        set sites [get_sites -quiet -of_objects $pkg]
        puts "sites_of_package_pin: $sites"
        foreach s $sites {
            puts "  site=$s SITE_TYPE=[get_property -quiet SITE_TYPE $s] TILE=[get_tiles -quiet -of_objects $s]"
        }
    }
}

puts "\n=== GTX CHANNEL SITES AROUND BANK117 ==="
foreach s [lsort [get_sites -quiet -filter {SITE_TYPE =~ GTXE2_CHANNEL*}]] {
    set tile [get_tiles -quiet -of_objects $s]
    puts "channel_site=$s tile=$tile"
}

puts "\n=== GT COMMON SITES ==="
foreach s [lsort [get_sites -quiet -filter {SITE_TYPE =~ GTXE2_COMMON*}]] {
    set tile [get_tiles -quiet -of_objects $s]
    puts "common_site=$s tile=$tile"
}

puts "\n=== PACKAGE PIN PROPERTY DUMP FOR SFP3 PINS ==="
foreach {pin net ball_name} $sfp3_pins {
    set pkg [get_package_pins -quiet $pin]
    puts "\n--- PROPERTIES $pin $net ---"
    if {[llength $pkg] == 0} {
        puts "missing package pin"
    } else {
        report_property $pkg
    }
}

close_project
