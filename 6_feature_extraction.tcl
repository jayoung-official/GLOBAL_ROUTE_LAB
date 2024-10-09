source 4_route.enc

set dataList {}
foreach_in_collection net [get_nets] {
    set weight [expr {int(rand() * 4) + 2}] ; # 2에서 5 사이의 값
    set avoid_detour [expr {rand() < ${avoid_detour_prob} ? "true" : "false"}]
    set net_name [get_property $net name]
    setAttribute -net $net_name -weight $weight -avoid_detour $avoid_detour

    lappend dataList [list $net_name $weight $avoid_detour]
}

routeDesign

# REPORTS
set fileId [open "custom_${timestamp}_${avoid_detour_prob}.nets.csv" "w"]
puts $fileId "Net,Weight,Avoid_Detour"
foreach row $dataList {
    puts $fileId [join $row ","]
}
close $fileId

report_analysis_summary > "custom_${timestamp}_${avoid_detour_prob}.timing"
report_power > "custom_${timestamp}_${avoid_detour_prob}.power"

exit