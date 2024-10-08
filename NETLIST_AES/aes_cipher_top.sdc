###################################################################

# Created by write_sdc on Mon Oct  7 06:21:50 2024

###################################################################
set sdc_version 1.9

set_units -time ps -resistance kOhm -capacitance fF -voltage V -current mA
set_max_fanout 20 [current_design]
set_ideal_network [get_ports rst]
create_clock [get_ports clk]  -period 500  -waveform {0 250}
set_propagated_clock [get_clocks clk]
set_false_path   -from [get_ports rst]
