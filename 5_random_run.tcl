source 3_ccopt.enc

set timestamp [clock format [clock seconds] -format "%y%m%d_%H%M%S"]
puts $timestamp

set avoid_prob [expr {(int(rand() * 5) + 1) * 0.1}]  ;# 0.1에서 0.5 사이

set dataList {}

foreach_in_collection net [get_nets] {
    set random_weight [expr {int(rand() * 4) + 2}] ; # 2에서 5 사이의 값
    set avoid [expr {rand() < ${avoid_prob} ? "true" : "false"}]
    set net_name [get_property $net name]
    setAttribute -net $net_name -weight $random_weight -avoid_detour $avoid

    lappend dataList [list $net_name $random_weight $avoid]
}

routeDesign

# Write the data to the CSV file
set fileId [open "random_${timestamp}_${avoid_prob}.nets.csv" "w"]
# Write the header
puts $fileId "Net,Weight,Avoid_Detour"
# Write each row from the data list
foreach row $dataList {
    puts $fileId [join $row ","]
}
# Close the file
close $fileId

report_analysis_summary > "random_${timestamp}_${avoid_prob}.timing"
report_power > "random_${timestamp}_${avoid_prob}.power"

exit