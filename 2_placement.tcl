# place_opt_design = place_design + optDesign -preCTS
place_opt_design

if { [getPlaceMode -placeIoPins] == "false" } {
    assignPtnPin
    assignIoPins -align
}

saveDesign 2_placement.enc