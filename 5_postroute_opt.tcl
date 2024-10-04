set_interactive_constraint_modes [all_constraint_modes -active]
set_clock_uncertainty 0 [all_clocks]

setDelayCalMode -siAware true
setAnalysisMode -analysisType onChipVariation -cppr both
setOptMode -addInstancePrefix postrouteOPT_

optDesign -postRoute

report_timing -net > gcd.timing.innovus
report_power > gcd.power.innovus
report_power -no_wrap -instances * -outfile gcd.cellPower.innovus