###################################################################

# Created by write_sdc on Sun Jan  1 17:02:00 2017

###################################################################
set sdc_version 1.9

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current mA
set_false_path -hold   -from [list [get_ports a] [get_ports b] [get_ports cin]]
set_false_path -hold   -to [list [get_ports sum] [get_ports cout]]
