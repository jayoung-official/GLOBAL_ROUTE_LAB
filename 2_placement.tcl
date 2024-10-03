if { [getPlaceMode -placeIoPins] == "false" } {
    assignPtnPin
    assignIoPins -align
}

# place_opt_design = place_design + optDesign -preCTS
place_opt_design