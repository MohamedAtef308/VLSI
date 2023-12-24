###################################################################

# Created by write_sdc on Sun Jan  1 17:01:41 2017

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
cin]]
set_false_path -hold   -to [list [get_ports {sum[63]}] [get_ports {sum[62]}] [get_ports {sum[61]}]   \
[get_ports {sum[60]}] [get_ports {sum[59]}] [get_ports {sum[58]}] [get_ports   \
{sum[57]}] [get_ports {sum[56]}] [get_ports {sum[55]}] [get_ports {sum[54]}]   \
[get_ports {sum[53]}] [get_ports {sum[52]}] [get_ports {sum[51]}] [get_ports   \
{sum[50]}] [get_ports {sum[49]}] [get_ports {sum[48]}] [get_ports {sum[47]}]   \
[get_ports {sum[46]}] [get_ports {sum[45]}] [get_ports {sum[44]}] [get_ports   \
{sum[43]}] [get_ports {sum[42]}] [get_ports {sum[41]}] [get_ports {sum[40]}]   \
[get_ports {sum[39]}] [get_ports {sum[38]}] [get_ports {sum[37]}] [get_ports   \
{sum[36]}] [get_ports {sum[35]}] [get_ports {sum[34]}] [get_ports {sum[33]}]   \
[get_ports {sum[32]}] [get_ports {sum[31]}] [get_ports {sum[30]}] [get_ports   \
{sum[29]}] [get_ports {sum[28]}] [get_ports {sum[27]}] [get_ports {sum[26]}]   \
[get_ports {sum[25]}] [get_ports {sum[24]}] [get_ports {sum[23]}] [get_ports   \
{sum[22]}] [get_ports {sum[21]}] [get_ports {sum[20]}] [get_ports {sum[19]}]   \
[get_ports {sum[18]}] [get_ports {sum[17]}] [get_ports {sum[16]}] [get_ports   \
{sum[15]}] [get_ports {sum[14]}] [get_ports {sum[13]}] [get_ports {sum[12]}]   \
[get_ports {sum[11]}] [get_ports {sum[10]}] [get_ports {sum[9]}] [get_ports    \
{sum[8]}] [get_ports {sum[7]}] [get_ports {sum[6]}] [get_ports {sum[5]}]       \
[get_ports {sum[4]}] [get_ports {sum[3]}] [get_ports {sum[2]}] [get_ports      \
{sum[1]}] [get_ports {sum[0]}] [get_ports cout] [get_ports overflow]]
