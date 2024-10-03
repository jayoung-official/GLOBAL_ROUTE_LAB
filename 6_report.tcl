extractRC
rcOut -spef SPEF/gcd.spef.gz
saveNetlist gcd.final.v
set lefDefOutVersion 5.7
defOut -floorplan -netlist -routing gcd.final.def
summaryReport -outfile gcd.summary.rpt -noHtml
report_analysis_summary > gcd.analysis.summary.rpt
report_resource -verbose