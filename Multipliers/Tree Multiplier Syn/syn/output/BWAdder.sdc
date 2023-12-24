###################################################################

# Created by write_sdc on Sun Jan  1 16:27:55 2017

###################################################################
set sdc_version 1.9

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current mA
set_false_path -hold   -from [list [get_ports {a[63]}] [get_ports {a[62]}] [get_ports {a[61]}]       \
[get_ports {a[60]}] [get_ports {a[59]}] [get_ports {a[58]}] [get_ports         \
{a[57]}] [get_ports {a[56]}] [get_ports {a[55]}] [get_ports {a[54]}]           \
[get_ports {a[53]}] [get_ports {a[52]}] [get_ports {a[51]}] [get_ports         \
{a[50]}] [get_ports {a[49]}] [get_ports {a[48]}] [get_ports {a[47]}]           \
[get_ports {a[46]}] [get_ports {a[45]}] [get_ports {a[44]}] [get_ports         \
{a[43]}] [get_ports {a[42]}] [get_ports {a[41]}] [get_ports {a[40]}]           \
[get_ports {a[39]}] [get_ports {a[38]}] [get_ports {a[37]}] [get_ports         \
{a[36]}] [get_ports {a[35]}] [get_ports {a[34]}] [get_ports {a[33]}]           \
[get_ports {a[32]}] [get_ports {a[31]}] [get_ports {a[30]}] [get_ports         \
{a[29]}] [get_ports {a[28]}] [get_ports {a[27]}] [get_ports {a[26]}]           \
[get_ports {a[25]}] [get_ports {a[24]}] [get_ports {a[23]}] [get_ports         \
{a[22]}] [get_ports {a[21]}] [get_ports {a[20]}] [get_ports {a[19]}]           \
[get_ports {a[18]}] [get_ports {a[17]}] [get_ports {a[16]}] [get_ports         \
{a[15]}] [get_ports {a[14]}] [get_ports {a[13]}] [get_ports {a[12]}]           \
[get_ports {a[11]}] [get_ports {a[10]}] [get_ports {a[9]}] [get_ports {a[8]}]  \
[get_ports {a[7]}] [get_ports {a[6]}] [get_ports {a[5]}] [get_ports {a[4]}]    \
[get_ports {a[3]}] [get_ports {a[2]}] [get_ports {a[1]}] [get_ports {a[0]}]    \
[get_ports {b[63]}] [get_ports {b[62]}] [get_ports {b[61]}] [get_ports         \
{b[60]}] [get_ports {b[59]}] [get_ports {b[58]}] [get_ports {b[57]}]           \
[get_ports {b[56]}] [get_ports {b[55]}] [get_ports {b[54]}] [get_ports         \
{b[53]}] [get_ports {b[52]}] [get_ports {b[51]}] [get_ports {b[50]}]           \
[get_ports {b[49]}] [get_ports {b[48]}] [get_ports {b[47]}] [get_ports         \
{b[46]}] [get_ports {b[45]}] [get_ports {b[44]}] [get_ports {b[43]}]           \
[get_ports {b[42]}] [get_ports {b[41]}] [get_ports {b[40]}] [get_ports         \
{b[39]}] [get_ports {b[38]}] [get_ports {b[37]}] [get_ports {b[36]}]           \
[get_ports {b[35]}] [get_ports {b[34]}] [get_ports {b[33]}] [get_ports         \
{b[32]}] [get_ports {b[31]}] [get_ports {b[30]}] [get_ports {b[29]}]           \
[get_ports {b[28]}] [get_ports {b[27]}] [get_ports {b[26]}] [get_ports         \
{b[25]}] [get_ports {b[24]}] [get_ports {b[23]}] [get_ports {b[22]}]           \
[get_ports {b[21]}] [get_ports {b[20]}] [get_ports {b[19]}] [get_ports         \
{b[18]}] [get_ports {b[17]}] [get_ports {b[16]}] [get_ports {b[15]}]           \
[get_ports {b[14]}] [get_ports {b[13]}] [get_ports {b[12]}] [get_ports         \
{b[11]}] [get_ports {b[10]}] [get_ports {b[9]}] [get_ports {b[8]}] [get_ports  \
{b[7]}] [get_ports {b[6]}] [get_ports {b[5]}] [get_ports {b[4]}] [get_ports    \
{b[3]}] [get_ports {b[2]}] [get_ports {b[1]}] [get_ports {b[0]}] [get_ports    \
{c[63]}] [get_ports {c[62]}] [get_ports {c[61]}] [get_ports {c[60]}]           \
[get_ports {c[59]}] [get_ports {c[58]}] [get_ports {c[57]}] [get_ports         \
{c[56]}] [get_ports {c[55]}] [get_ports {c[54]}] [get_ports {c[53]}]           \
[get_ports {c[52]}] [get_ports {c[51]}] [get_ports {c[50]}] [get_ports         \
{c[49]}] [get_ports {c[48]}] [get_ports {c[47]}] [get_ports {c[46]}]           \
[get_ports {c[45]}] [get_ports {c[44]}] [get_ports {c[43]}] [get_ports         \
{c[42]}] [get_ports {c[41]}] [get_ports {c[40]}] [get_ports {c[39]}]           \
[get_ports {c[38]}] [get_ports {c[37]}] [get_ports {c[36]}] [get_ports         \
{c[35]}] [get_ports {c[34]}] [get_ports {c[33]}] [get_ports {c[32]}]           \
[get_ports {c[31]}] [get_ports {c[30]}] [get_ports {c[29]}] [get_ports         \
{c[28]}] [get_ports {c[27]}] [get_ports {c[26]}] [get_ports {c[25]}]           \
[get_ports {c[24]}] [get_ports {c[23]}] [get_ports {c[22]}] [get_ports         \
{c[21]}] [get_ports {c[20]}] [get_ports {c[19]}] [get_ports {c[18]}]           \
[get_ports {c[17]}] [get_ports {c[16]}] [get_ports {c[15]}] [get_ports         \
{c[14]}] [get_ports {c[13]}] [get_ports {c[12]}] [get_ports {c[11]}]           \
[get_ports {c[10]}] [get_ports {c[9]}] [get_ports {c[8]}] [get_ports {c[7]}]   \
[get_ports {c[6]}] [get_ports {c[5]}] [get_ports {c[4]}] [get_ports {c[3]}]    \
[get_ports {c[2]}] [get_ports {c[1]}] [get_ports {c[0]}]]
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
{result[1]}] [get_ports {result[0]}] [get_ports {carry[63]}] [get_ports        \
{carry[62]}] [get_ports {carry[61]}] [get_ports {carry[60]}] [get_ports        \
{carry[59]}] [get_ports {carry[58]}] [get_ports {carry[57]}] [get_ports        \
{carry[56]}] [get_ports {carry[55]}] [get_ports {carry[54]}] [get_ports        \
{carry[53]}] [get_ports {carry[52]}] [get_ports {carry[51]}] [get_ports        \
{carry[50]}] [get_ports {carry[49]}] [get_ports {carry[48]}] [get_ports        \
{carry[47]}] [get_ports {carry[46]}] [get_ports {carry[45]}] [get_ports        \
{carry[44]}] [get_ports {carry[43]}] [get_ports {carry[42]}] [get_ports        \
{carry[41]}] [get_ports {carry[40]}] [get_ports {carry[39]}] [get_ports        \
{carry[38]}] [get_ports {carry[37]}] [get_ports {carry[36]}] [get_ports        \
{carry[35]}] [get_ports {carry[34]}] [get_ports {carry[33]}] [get_ports        \
{carry[32]}] [get_ports {carry[31]}] [get_ports {carry[30]}] [get_ports        \
{carry[29]}] [get_ports {carry[28]}] [get_ports {carry[27]}] [get_ports        \
{carry[26]}] [get_ports {carry[25]}] [get_ports {carry[24]}] [get_ports        \
{carry[23]}] [get_ports {carry[22]}] [get_ports {carry[21]}] [get_ports        \
{carry[20]}] [get_ports {carry[19]}] [get_ports {carry[18]}] [get_ports        \
{carry[17]}] [get_ports {carry[16]}] [get_ports {carry[15]}] [get_ports        \
{carry[14]}] [get_ports {carry[13]}] [get_ports {carry[12]}] [get_ports        \
{carry[11]}] [get_ports {carry[10]}] [get_ports {carry[9]}] [get_ports         \
{carry[8]}] [get_ports {carry[7]}] [get_ports {carry[6]}] [get_ports           \
{carry[5]}] [get_ports {carry[4]}] [get_ports {carry[3]}] [get_ports           \
{carry[2]}] [get_ports {carry[1]}] [get_ports {carry[0]}]]
