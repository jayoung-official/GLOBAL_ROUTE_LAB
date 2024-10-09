source 3_ccopt.enc

set timestamp [clock format [clock seconds] -format "%y%m%d_%H%M%S"]
puts $timestamp

set avoid_detour_prob [expr {(int(rand() * 5) + 1) * 0.1}]  ;# 0.1에서 0.5 사이

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
set fileId [open "random_${timestamp}_${avoid_detour_prob}.nets.csv" "w"]
puts $fileId "Net,Weight,Avoid_Detour"
foreach row $dataList {
    puts $fileId [join $row ","]
}
close $fileId

report_analysis_summary > "random_${timestamp}_${avoid_detour_prob}.timing"
report_power > "random_${timestamp}_${avoid_detour_prob}.power"

exit