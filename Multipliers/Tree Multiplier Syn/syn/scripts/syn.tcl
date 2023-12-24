set design TMSeq

set_app_var search_path "/home/standard_cell_libraries/NangateOpenCellLibrary_PDKv1_3_v2010_12/lib/Front_End/Liberty/NLDM \
			 /home/mohamed/Desktop/mips "

set_app_var link_library "* NangateOpenCellLibrary_ss0p95vn40c.db"
set_app_var target_library "NangateOpenCellLibrary_ss0p95vn40c.db"

sh rm -rf work
sh mkdir -p work
define_design_lib work -path ./work

read_file -format verilog  ../rtl/BWAdder.v
read_file -format verilog  ../rtl/CRAdder_64.v
read_file -format verilog  ../rtl/FullAdder.v
read_file -format verilog  ../rtl/regN.v
read_file -format verilog  ../rtl/TM.v
read_file -format verilog  ../rtl/TMSeq.v
analyze -library work -format verilog ../rtl/BWAdder.v
analyze -library work -format verilog ../rtl/CRAdder_64.v
analyze -library work -format verilog ../rtl/FullAdder.v
analyze -library work -format verilog ../rtl/regN.v
analyze -library work -format verilog ../rtl/TM.v
analyze -library work -format verilog ../rtl/TMSeq.v
elaborate $design -lib work
current_design 

check_design
source ./cons/cons.tcl
link

compile -map_effort medium

report_area > ./report/synth_area.rpt
report_cell > ./report/synth_cells.rpt
report_qor  > ./report/synth_qor.rpt
report_resources > ./report/synth_resources.rpt
report_timing -max_paths 10 > ./report/synth_timing.rpt
report_power > ./report/total_power.rpt
 
write_sdc  output/${design}.sdc 

define_name_rules  no_case -case_insensitive
change_names -rule no_case -hierarchy
change_names -rule verilog -hierarchy
set verilogout_no_tri	 true
set verilogout_equation  false

write -hierarchy -format verilog -output output/${design}.v 
write -f ddc -hierarchy -output output/${design}.ddc   

exit
