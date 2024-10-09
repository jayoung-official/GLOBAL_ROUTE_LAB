foreach_in_collection net [get_nets] {
    set net_name [get_property $net name]
    set pins [get_pins -of_objects $net]
    set n_pins [sizeof_collection $pins]

    puts "Net: $net_name"
    puts "  Pins: $n_pins"

    set x_coordinates [get_property $pins x_coordinate]
    set y_coordinates [get_property $pins y_coordinate]
    set min_x [lindex [lsort -real $x_coordinates] 0]
    set max_x [lindex [lsort -real $x_coordinates] end]
    set min_y [lindex [lsort -real $y_coordinates] 0]
    set max_y [lindex [lsort -real $y_coordinates] end]
    set hpwl [expr {($max_x - $min_x) + ($max_y - $min_y)}]
    puts "  HPWL: $hpwl"

    set arcs [get_arcs -of_objects $net]
    foreach_in_collection arc $arcs {
        set source_pin [get_property $arc source_pin]
        set sink_pin [get_property $arc sink_pin]
        set source_pin_name [get_property $source_pin full_name]
        set sink_pin_name [get_property $sink_pin full_name]
        puts "  Arc: $source_pin_name -> $sink_pin_name"
        set is_clock [get_property $sink_pin is_clock]
        puts "    is_clock: $is_clock"
        set delay_max_fall [get_property $arc delay_max_fall]
        set delay_max_rise [get_property $arc delay_max_rise]
        if { $delay_max_fall > $delay_max_rise } {
            puts "    delay: $delay_max_fall"
        } else {
            puts "    delay: $delay_max_rise"
        }

        set slack_max_fall [get_property $sink_pin slack_max_fall]
        set slack_max_rise [get_property $sink_pin slack_max_rise]
        if { $slack_max_fall < $slack_max_rise } {
            puts "    slack: $slack_max_fall"
        } else {
            puts "    slack: $slack_max_rise"
        }

        set source_coordinate_x [get_property $source_pin x_coordinate]
        set source_coordinate_y [get_property $source_pin y_coordinate]
        set sink_coordinate_x [get_property $sink_pin x_coordinate]
        set sink_coordinate_y [get_property $sink_pin y_coordinate]
        set diff_x [expr {abs($source_coordinate_x - $sink_coordinate_x)}]
        set diff_y [expr {abs($source_coordinate_y - $sink_coordinate_y)}]
        puts "    diff_x: $diff_x"
        puts "    diff_y: $diff_y"
    }
}
