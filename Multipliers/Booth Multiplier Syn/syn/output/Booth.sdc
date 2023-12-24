###################################################################

# Created by write_sdc on Sun Jan  1 17:09:41 2017

###################################################################
set sdc_version 1.9

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current mA
set_false_path -hold   -from [list [get_ports {a[31]}] [get_ports {a[30]}] [get_ports {a[29]}]       \
[get_ports {a[28]}] [get_ports {a[27]}] [get_ports {a[26]}] [get_ports         \
{a[25]}] [get_ports {a[24]}] [get_ports {a[23]}] [get_ports {a[22]}]           \
[get_ports {a[21]}] [get_ports {a[20]}] [get_ports {a[19]}] [get_ports         \
{a[18]}] [get_ports {a[17]}] [get_ports {a[16]}] [get_ports {a[15]}]           \
[get_ports {a[14]}] [get_ports {a[13]}] [get_ports {a[12]}] [get_ports         \
{a[11]}] [get_ports {a[10]}] [get_ports {a[9]}] [get_ports {a[8]}] [get_ports  \
{a[7]}] [get_ports {a[6]}] [get_ports {a[5]}] [get_ports {a[4]}] [get_ports    \
{a[3]}] [get_ports {a[2]}] [get_ports {a[1]}] [get_ports {a[0]}] [get_ports    \
{b[31]}] [get_ports {b[30]}] [get_ports {b[29]}] [get_ports {b[28]}]           \
[get_ports {b[27]}] [get_ports {b[26]}] [get_ports {b[25]}] [get_ports         \
{b[24]}] [get_ports {b[23]}] [get_ports {b[22]}] [get_ports {b[21]}]           \
[get_ports {b[20]}] [get_ports {b[19]}] [get_ports {b[18]}] [get_ports         \
{b[17]}] [get_ports {b[16]}] [get_ports {b[15]}] [get_ports {b[14]}]           \
[get_ports {b[13]}] [get_ports {b[12]}] [get_ports {b[11]}] [get_ports         \
{b[10]}] [get_ports {b[9]}] [get_ports {b[8]}] [get_ports {b[7]}] [get_ports   \
{b[6]}] [get_ports {b[5]}] [get_ports {b[4]}] [get_ports {b[3]}] [get_ports    \
{b[2]}] [get_ports {b[1]}] [get_ports {b[0]}]]
set_false_path -hold   -to [list [get_ports {result[63]}] [get_ports {result[62]}] [get_ports        \
{result[61]}] [get_ports {result[60]}] [get_ports {result[59]}] [get_ports     \
{result[58]}] [get_ports {result[57]}] [get_ports {result[56]}] [get_ports     \
{result[55]}] [get_ports {result[54]}] [get_ports {result[53]}] [get_ports     \
{result[52]}] [get_ports {result[51]}] [get_ports {result[50]}] [get_ports     \
{result[49]}] [get_ports {result[48]}] [get_ports {result[47]}] [get_ports     \
{result[46]}] [get_ports {result[45]}] [get_ports {result[44]}] [get_ports     \
{result[43]}] [get_ports {result[42]}] [get_ports {result[41]}] [get_ports     \
{result[40]}] [get_ports {result[39]}] [get_ports {result[38]}] [get_ports     \
{result[37]}] [get_ports {result[36]}] [get_ports {result[35]}] [get_ports     \
{result[34]}] [get_ports {result[33]}] [get_ports {result[32]}] [get_ports     \
{result[31]}] [get_ports {result[30]}] [get_ports {result[29]}] [get_ports     \
{result[28]}] [get_ports {result[27]}] [get_ports {result[26]}] [get_ports     \
{result[25]}] [get_ports {result[24]}] [get_ports {result[23]}] [get_ports     \
{result[22]}] [get_ports {result[21]}] [get_ports {result[20]}] [get_ports     \
{result[19]}] [get_ports {result[18]}] [get_ports {result[17]}] [get_ports     \
{result[16]}] [get_ports {result[15]}] [get_ports {result[14]}] [get_ports     \
{result[13]}] [get_ports {result[12]}] [get_ports {result[11]}] [get_ports     \
{result[10]}] [get_ports {result[9]}] [get_ports {result[8]}] [get_ports       \
{result[7]}] [get_ports {result[6]}] [get_ports {result[5]}] [get_ports        \
{result[4]}] [get_ports {result[3]}] [get_ports {result[2]}] [get_ports        \
{result[1]}] [get_ports {result[0]}]]
