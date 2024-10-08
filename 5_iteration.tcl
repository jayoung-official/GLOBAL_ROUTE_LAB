source 0_utility.tcl

# 반복 횟수 설정
set repeat_count 10

# 반복 수행
for {set i 0} {$i < $repeat_count} {incr i} {
    puts "Iteration $i"

    source 3_ccopt.enc

    set random_prob [expr {rand() * 0.5}]  ;# 0에서 0.5 사이의 확률 생성
    
    # 각 네트에 대해 weight 및 랜덤 true/false 설정
    foreach_in_collection net [get_nets] {
        # 랜덤 weight 값 생성 (예: 1에서 10 사이의 값)
        set random_weight [expr {int(rand() * 10) + 1}]
        
        # 랜덤 true/false 값 생성
        set random_bool_value [expr {rand() < $random_prob ? "true" : "false"}]
        set net_name [get_property $net name]

        setAttribute -net $net_name -avoid_detour false
        setAttribute -net $net_name -weight $random_weight -avoid_detour $random_bool_value

        # 설정한 값 출력
        puts "Net: $net, Weight: $random_weight, Avoid Detour: $random_bool_value"
    }

    # 다른 작업 수행 (예: 경로 탐색 또는 배선 작업)
    # performRouting or some other operations...
    
    setNanoRouteMode -routeWithTimingDriven true
    routeDesign
    
    # Optional: 결과 저장, 로그 생성 등
    writeAllNetAttributes "design_iteration_${i}_$random_prob.net"
    report_analysis_summary > "design_iteration_${i}_$random_prob.summary"
}
