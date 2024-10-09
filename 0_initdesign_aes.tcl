set SDC_FILES "NETLIST_AES/aes_cipher_top.sdc"
set VERILOG_FILES "NETLIST_AES/aes_cipher_top.netlist.v"
set LEF_FILES ""
set LIB_FILES ""
set QX_TECH_FILE "PDK_ASAP7/qrc/qrcTechFile_typ03_scaled4xV06.tch"
set vars(LibUnit,Time) 1ps
set vars(LibUnit,Cap) 1fF
set FLOORPLAN_DENSITY 0.7

# Search LEF_FILES
puts "Searching LEF files..."
append LEF_FILES "PDK_ASAP7/techlef/asap7_tech_4x_201209.lef"
foreach fileName [glob -nocomplain -d "PDK_ASAP7/lef" "*.lef"] {
    append LEF_FILES " $fileName"
}

# Search LIB_FILES
puts "Searching LIB files..."
foreach fileName [glob -nocomplain -d "PDK_ASAP7/lib" "*.lib"] {
    append LIB_FILES " $fileName"
}

setLibraryUnit -time $vars(LibUnit,Time) -cap $vars(LibUnit,Cap)

global init
set init_import_mode {-treatUndefinedCellAsBbox 0 -keepEmptyModule 1 }
set init_verilog "$VERILOG_FILES"
set init_design_netlisttype Verilog
set init_design_settop {0}
set init_top_cell {}
set init_io_file ""
set init_lef_file "$LEF_FILES"
set init_oa_ref_lib {}
set init_abstract_view {}
set init_layout_view {}
set init_pwr_net "VDD"
set init_gnd_net "VSS"

create_rc_corner -name typical_rc \
    -T 25 \
    -preRoute_res 1.0 \
    -preRoute_cap 1.0 \
    -preRoute_clkres 0.0 \
    -preRoute_clkcap 0.0 \
    -postRoute_res 1.0 \
    -postRoute_cap 1.0 \
    -postRoute_xcap 1.0 \
    -postRoute_clkres 0.0 \
    -postRoute_clkcap 0.0 \
    -qx_tech_file "$QX_TECH_FILE"
create_library_set -name typical_lib -timing "$LIB_FILES"
create_constraint_mode -name default_constraint -sdc_files "$SDC_FILES"
create_delay_corner -name typical_delay -library_set typical_lib -rc_corner typical_rc
create_analysis_view -name typical_analysis_view -constraint_mode default_constraint -delay_corner typical_delay

init_design -setup typical_analysis_view -hold typical_analysis_view
set_analysis_view \
    -setup typical_analysis_view \
    -hold typical_analysis_view

setDesignMode -reset
setDesignMode -process 7 -flowEffort standard -powerEffort high