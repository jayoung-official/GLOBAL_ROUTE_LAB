set vars(CCOpt,top_top)			6
set vars(CCOpt,top_bottom)		5
set vars(CCOpt,trunk_top)		5
set vars(CCOpt,trunk_bottom)	2
set vars(CCOpt,leaf_top)		2
set vars(CCOpt,leaf_bottom)		1
set vars(tech,cts_buffer_cells) "BUFx2_ASAP7_75t_R"
set vars(tech,cts_inverter_cells) "INVx1_ASAP7_75t_R"

set_interactive_constraint_modes [all_constraint_modes -active]
set_clock_uncertainty 0 [all_clocks]
setOptMode -addInstancePrefix ccOPT_
setAnalysisMode -analysisType onChipVariation \
-cppr both
if [dbGet -p head.routeTypes.name top] {
} else {
create_route_type -name top \
    -preferred_routing_layer_effort medium \
    -top_preferred_layer $vars(CCOpt,top_top) \
    -bottom_preferred_layer $vars(CCOpt,top_bottom)
}
if [dbGet -p head.routeTypes.name trunk] {
} else {
create_route_type -name  trunk \
    -preferred_routing_layer_effort medium \
    -top_preferred_layer $vars(CCOpt,trunk_top) \
    -bottom_preferred_layer $vars(CCOpt,trunk_bottom)
}
if [dbGet -p head.routeTypes.name leaf] {
} else {
create_route_type -name leaf \
    -preferred_routing_layer_effort medium \
    -top_preferred_layer $vars(CCOpt,leaf_top) \
    -bottom_preferred_layer $vars(CCOpt,leaf_bottom)
}
set_ccopt_property route_type -net_type top top
set_ccopt_property route_type -net_type trunk trunk
set_ccopt_property route_type -net_type leaf leaf
set_ccopt_property buffer_cells $vars(tech,cts_buffer_cells)
set_ccopt_property inverter_cells $vars(tech,cts_inverter_cells)
set_ccopt_property target_skew auto
set_ccopt_property target_max_trans -net_type leaf auto
set_ccopt_property target_max_trans -net_type top auto
set_ccopt_property target_max_trans -net_type trunk auto
set_ccopt_property use_inverters true
create_ccopt_clock_tree_spec -immediate
set_ccopt_effort -high

ccopt_design