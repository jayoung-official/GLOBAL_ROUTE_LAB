  set_interactive_constraint_modes [all_constraint_modes -active]
  set_clock_uncertainty $vars(ClockUncertainty,postRoute) [all_clocks]

  setDelayCalMode -siAware true
  setAnalysisMode -analysisType onChipVariation -cppr both
  setOptMode -addInstancePrefix postrouteOPT_

  optDesign -postRoute