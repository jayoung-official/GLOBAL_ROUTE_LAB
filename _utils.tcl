proc  writeAllNetAttributes {fileName} {
  # 파일이 존재하는지 확인
  if {[file exists $fileName]} {
    # 파일 삭제
    file delete $fileName
  }

  # 모든 넷의 속성을 파일에 쓰기
  foreach_in_collection net [get_nets] {
    set net_name [get_property $net name]
    getAttribute -net $net_name >> $fileName
  }

  puts "File '$fileName' has been written."
}

proc writeNetInfo {fileName} {
  set all_nets [get_nets]
  set chan [open $fileName w]

  puts $chan "net_name,n_pins,source,sink,edge,slack,delay"

  foreach_in_collection net $all_nets {
    set pins [get_pins -of_objects $net]
    set net_name [get_attribute $net name]
    set n_pins [sizeof_collection $pins]
    if { $n_pins < 2 } {
      continue
    } 
    set arcs [get_arcs -of_objects $net]
    puts "NET:$net_name"
    foreach_in_collection arc $arcs {
      set source_pin [get_attribute $arc source_pin]
      set sink_pin [get_attribute $arc sink_pin]
      set source_pin_names [get_attribute $source_pin full_name]
      set sink_pin_names [get_attribute $sink_pin full_name]
      set delay_max_fall [get_attribute $arc delay_max_fall]
      set delay_max_rise [get_attribute $arc delay_max_rise]
      set dslack_max_fall [get_attribute $source_pin slack_max_fall]
      set dslack_max_rise [get_attribute $source_pin slack_max_rise]
      set slack_max_fall [get_attribute $sink_pin slack_max_fall]
      set slack_max_rise [get_attribute $sink_pin slack_max_rise]
      if {$slack_max_fall < 0 && $delay_max_fall > 1} {
        puts $chan "$net_name,$n_pins,$source_pin_names,$sink_pin_names,fall,$slack_max_fall,$delay_max_fall"
      }
      if {$slack_max_rise < 0 && $delay_max_rise > 1} {
        puts $chan "$net_name,$n_pins,$source_pin_names,$sink_pin_names,rise,$slack_max_rise,$delay_max_rise"
      }
      # puts "srcs: $source_pin_names"
      # puts "sink: $sink_pin_names"
      # puts "DELAY_FALL: $delay_max_fall"
      # puts "DELAY_RISE: $delay_max_rise"
      # puts "SLACK_FALL: $slack_max_fall"
      # puts "SLACK_RISE: $slack_max_rise"
      # puts "DSLACK_FALL: $dslack_max_fall"
      # puts "DSLACK_RISE: $dslack_max_rise"
      # set delay [tcl::mathfunc::max $delay_max_fall $delay_max_rise]
      # puts "D: $delay"
    }

    # set xs [get_attribute $pins x_coordinate]
    # set xs [lsort -real $xs]
    # set ys [get_attribute $pins y_coordinate]
    # set ys [lsort -real $ys]
    # set min_x [lindex $xs 0]
    # set max_x [lindex $xs end]
    # set min_y [lindex $ys 0]
    # set max_y [lindex $ys end]
    # set bbox_area [expr {($max_x - $min_x) * ($max_y - $min_y)}]

    # puts $chan "$net_name,$n_pins,$bbox_area,$min_x,$max_x,$min_y,$max_y"

    # set c_driver_pins [get_attribute $net driver_pins]
    # set c_load_pins [get_attribute $net load_pins]

    # set driver_arrival_max_fall [get_attribute $c_driver_pins arrival_max_fall]
    # set driver_arrival_min_fall [get_attribute $c_driver_pins arrival_min_fall]

    # puts "NET:$net_name"

    # puts "DMAX_FALL:$driver_arrival_max_fall"
    # puts "DMIN_FALL:$driver_arrival_min_fall"

    # set load_arrival_max_fall [get_attribute $c_load_pins arrival_max_fall]
    # set load_arrival_min_fall [get_attribute $c_load_pins arrival_min_fall]
    
    # puts "LMAX_FALL:$load_arrival_max_fall"
    # puts "LMIN_FALL:$load_arrival_min_fall"

    # set drivers [get_attribute $c_driver_pins full_name]
    # set loads [get_attribute $c_load_pins full_name]
    # puts "DRVS:$drivers"
    # puts "LOADS:$loads"

    # set driver_arrival_fall [get_attribute $c_driver_pins arrival_max_fall]
    # set driver_arrival_rise [get_attribute $c_driver_pins arrival_max_rise]
    # set driver_arrival_fall_max [tcl::mathfunc::max {*}$driver_arrival_fall]
    # set driver_arrival_rise_max [tcl::mathfunc::max {*}$driver_arrival_rise]

    # set load_arrival_fall [get_attribute $c_load_pins arrival_max_fall]
    # set load_arrival_rise [get_attribute $c_load_pins arrival_max_rise]
    # # set load_arrival_fall [lsort -real $load_arrival_fall]
    # # set load_arrival_rise [lsort -real $load_arrival_rise]
    # set net_delay_fall {}
    # foreach arrival $load_arrival_fall {
    #   lappend net_delay_fall [expr {$arrival - $driver_arrival_fall_max}]
    # }
    # set net_delay_rise {}
    # foreach arrival $load_arrival_rise {
    #   lappend net_delay_rise [expr {$arrival - $driver_arrival_rise_max}]
    # }

    # puts "DF:$driver_arrival_fall"
    # puts "DR:$driver_arrival_rise"

    # puts "LF:$load_arrival_fall"
    # puts "LR:$load_arrival_rise"
    # puts "D:$driver_arrival_fall_max,$driver_arrival_rise_max"
    # puts "DF:$net_delay_fall"
    # puts "DR:$net_delay_rise"
  }

  close $chan
}

proc readNetInfo {fileName} {
  set fileId [open $fileName "r"]

  # Read the header line and ignore it
  gets $fileId header

  # Initialize an empty list to store net_name values
  set net_name_list {}

  # Read each line of the file
  while {[gets $fileId line] != -1} {
      # Split the line by commas
      set fields [split $line ","]
      
      # Extract the net_name value (the first column)
      set net_name [lindex $fields 0]
      
      # Add the net_name to the list if it's not already present
      if {[lsearch -exact $net_name_list $net_name] == -1} {
          lappend net_name_list $net_name
      }
  }

  # Close the file
  close $fileId

  # Avoid detour
  foreach name $net_name_list {
      puts "setAttribute -net $name -weight 4 -avoid_detour true"
      setAttribute -net $name -weight 4 -avoid_detour true
  }
}

proc offAvoidDetour {} {
  foreach_in_collection net [get_nets] {
    set net_name [get_attribute $net name]
    setAttribute -net $net_name -avoid_detour false
  }
}

proc onAvoidDetour {} {
  foreach_in_collection net [get_nets] {
    set net_name [get_attribute $net name]
    setAttribute -net $net_name -avoid_detour true
  }
}