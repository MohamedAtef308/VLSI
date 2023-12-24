###################################################################

# Created by write_sdc on Sun Jan  1 17:20:59 2017

###################################################################
set sdc_version 1.9

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current mA
create_clock [get_ports clk]  -period 13  -waveform {0 6.5}
set_clock_uncertainty 0.35  [get_clocks clk]
set_false_path -hold   -from [list [get_ports {A[31]}] [get_ports {A[30]}] [get_ports {A[29]}]       \
[get_ports {A[28]}] [get_ports {A[27]}] [get_ports {A[26]}] [get_ports         \
{A[25]}] [get_ports {A[24]}] [get_ports {A[23]}] [get_ports {A[22]}]           \
[get_ports {A[21]}] [get_ports {A[20]}] [get_ports {A[19]}] [get_ports         \
{A[18]}] [get_ports {A[17]}] [get_ports {A[16]}] [get_ports {A[15]}]           \
[get_ports {A[14]}] [get_ports {A[13]}] [get_ports {A[12]}] [get_ports         \
{A[11]}] [get_ports {A[10]}] [get_ports {A[9]}] [get_ports {A[8]}] [get_ports  \
{A[7]}] [get_ports {A[6]}] [get_ports {A[5]}] [get_ports {A[4]}] [get_ports    \
{A[3]}] [get_ports {A[2]}] [get_ports {A[1]}] [get_ports {A[0]}] [get_ports    \
{B[31]}] [get_ports {B[30]}] [get_ports {B[29]}] [get_ports {B[28]}]           \
[get_ports {B[27]}] [get_ports {B[26]}] [get_ports {B[25]}] [get_ports         \
{B[24]}] [get_ports {B[23]}] [get_ports {B[22]}] [get_ports {B[21]}]           \
[get_ports {B[20]}] [get_ports {B[19]}] [get_ports {B[18]}] [get_ports         \
{B[17]}] [get_ports {B[16]}] [get_ports {B[15]}] [get_ports {B[14]}]           \
[get_ports {B[13]}] [get_ports {B[12]}] [get_ports {B[11]}] [get_ports         \
{B[10]}] [get_ports {B[9]}] [get_ports {B[8]}] [get_ports {B[7]}] [get_ports   \
{B[6]}] [get_ports {B[5]}] [get_ports {B[4]}] [get_ports {B[3]}] [get_ports    \
{B[2]}] [get_ports {B[1]}] [get_ports {B[0]}] [get_ports reset]]
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
set_input_delay -clock clk  -max 1  [get_ports {A[31]}]
set_input_delay -clock clk  -max 1  [get_ports {A[30]}]
set_input_delay -clock clk  -max 1  [get_ports {A[29]}]
set_input_delay -clock clk  -max 1  [get_ports {A[28]}]
set_input_delay -clock clk  -max 1  [get_ports {A[27]}]
set_input_delay -clock clk  -max 1  [get_ports {A[26]}]
set_input_delay -clock clk  -max 1  [get_ports {A[25]}]
set_input_delay -clock clk  -max 1  [get_ports {A[24]}]
set_input_delay -clock clk  -max 1  [get_ports {A[23]}]
set_input_delay -clock clk  -max 1  [get_ports {A[22]}]
set_input_delay -clock clk  -max 1  [get_ports {A[21]}]
set_input_delay -clock clk  -max 1  [get_ports {A[20]}]
set_input_delay -clock clk  -max 1  [get_ports {A[19]}]
set_input_delay -clock clk  -max 1  [get_ports {A[18]}]
set_input_delay -clock clk  -max 1  [get_ports {A[17]}]
set_input_delay -clock clk  -max 1  [get_ports {A[16]}]
set_input_delay -clock clk  -max 1  [get_ports {A[15]}]
set_input_delay -clock clk  -max 1  [get_ports {A[14]}]
set_input_delay -clock clk  -max 1  [get_ports {A[13]}]
set_input_delay -clock clk  -max 1  [get_ports {A[12]}]
set_input_delay -clock clk  -max 1  [get_ports {A[11]}]
set_input_delay -clock clk  -max 1  [get_ports {A[10]}]
set_input_delay -clock clk  -max 1  [get_ports {A[9]}]
set_input_delay -clock clk  -max 1  [get_ports {A[8]}]
set_input_delay -clock clk  -max 1  [get_ports {A[7]}]
set_input_delay -clock clk  -max 1  [get_ports {A[6]}]
set_input_delay -clock clk  -max 1  [get_ports {A[5]}]
set_input_delay -clock clk  -max 1  [get_ports {A[4]}]
set_input_delay -clock clk  -max 1  [get_ports {A[3]}]
set_input_delay -clock clk  -max 1  [get_ports {A[2]}]
set_input_delay -clock clk  -max 1  [get_ports {A[1]}]
set_input_delay -clock clk  -max 1  [get_ports {A[0]}]
set_input_delay -clock clk  -max 1  [get_ports {B[31]}]
set_input_delay -clock clk  -max 1  [get_ports {B[30]}]
set_input_delay -clock clk  -max 1  [get_ports {B[29]}]
set_input_delay -clock clk  -max 1  [get_ports {B[28]}]
set_input_delay -clock clk  -max 1  [get_ports {B[27]}]
set_input_delay -clock clk  -max 1  [get_ports {B[26]}]
set_input_delay -clock clk  -max 1  [get_ports {B[25]}]
set_input_delay -clock clk  -max 1  [get_ports {B[24]}]
set_input_delay -clock clk  -max 1  [get_ports {B[23]}]
set_input_delay -clock clk  -max 1  [get_ports {B[22]}]
set_input_delay -clock clk  -max 1  [get_ports {B[21]}]
set_input_delay -clock clk  -max 1  [get_ports {B[20]}]
set_input_delay -clock clk  -max 1  [get_ports {B[19]}]
set_input_delay -clock clk  -max 1  [get_ports {B[18]}]
set_input_delay -clock clk  -max 1  [get_ports {B[17]}]
set_input_delay -clock clk  -max 1  [get_ports {B[16]}]
set_input_delay -clock clk  -max 1  [get_ports {B[15]}]
set_input_delay -clock clk  -max 1  [get_ports {B[14]}]
set_input_delay -clock clk  -max 1  [get_ports {B[13]}]
set_input_delay -clock clk  -max 1  [get_ports {B[12]}]
set_input_delay -clock clk  -max 1  [get_ports {B[11]}]
set_input_delay -clock clk  -max 1  [get_ports {B[10]}]
set_input_delay -clock clk  -max 1  [get_ports {B[9]}]
set_input_delay -clock clk  -max 1  [get_ports {B[8]}]
set_input_delay -clock clk  -max 1  [get_ports {B[7]}]
set_input_delay -clock clk  -max 1  [get_ports {B[6]}]
set_input_delay -clock clk  -max 1  [get_ports {B[5]}]
set_input_delay -clock clk  -max 1  [get_ports {B[4]}]
set_input_delay -clock clk  -max 1  [get_ports {B[3]}]
set_input_delay -clock clk  -max 1  [get_ports {B[2]}]
set_input_delay -clock clk  -max 1  [get_ports {B[1]}]
set_input_delay -clock clk  -max 1  [get_ports {B[0]}]
set_input_delay -clock clk  -max 1  [get_ports reset]
set_output_delay -clock clk  -max 1  [get_ports {result[63]}]
set_output_delay -clock clk  -max 1  [get_ports {result[62]}]
set_output_delay -clock clk  -max 1  [get_ports {result[61]}]
set_output_delay -clock clk  -max 1  [get_ports {result[60]}]
set_output_delay -clock clk  -max 1  [get_ports {result[59]}]
set_output_delay -clock clk  -max 1  [get_ports {result[58]}]
set_output_delay -clock clk  -max 1  [get_ports {result[57]}]
set_output_delay -clock clk  -max 1  [get_ports {result[56]}]
set_output_delay -clock clk  -max 1  [get_ports {result[55]}]
set_output_delay -clock clk  -max 1  [get_ports {result[54]}]
set_output_delay -clock clk  -max 1  [get_ports {result[53]}]
set_output_delay -clock clk  -max 1  [get_ports {result[52]}]
set_output_delay -clock clk  -max 1  [get_ports {result[51]}]
set_output_delay -clock clk  -max 1  [get_ports {result[50]}]
set_output_delay -clock clk  -max 1  [get_ports {result[49]}]
set_output_delay -clock clk  -max 1  [get_ports {result[48]}]
set_output_delay -clock clk  -max 1  [get_ports {result[47]}]
set_output_delay -clock clk  -max 1  [get_ports {result[46]}]
set_output_delay -clock clk  -max 1  [get_ports {result[45]}]
set_output_delay -clock clk  -max 1  [get_ports {result[44]}]
set_output_delay -clock clk  -max 1  [get_ports {result[43]}]
set_output_delay -clock clk  -max 1  [get_ports {result[42]}]
set_output_delay -clock clk  -max 1  [get_ports {result[41]}]
set_output_delay -clock clk  -max 1  [get_ports {result[40]}]
set_output_delay -clock clk  -max 1  [get_ports {result[39]}]
set_output_delay -clock clk  -max 1  [get_ports {result[38]}]
set_output_delay -clock clk  -max 1  [get_ports {result[37]}]
set_output_delay -clock clk  -max 1  [get_ports {result[36]}]
set_output_delay -clock clk  -max 1  [get_ports {result[35]}]
set_output_delay -clock clk  -max 1  [get_ports {result[34]}]
set_output_delay -clock clk  -max 1  [get_ports {result[33]}]
set_output_delay -clock clk  -max 1  [get_ports {result[32]}]
set_output_delay -clock clk  -max 1  [get_ports {result[31]}]
set_output_delay -clock clk  -max 1  [get_ports {result[30]}]
set_output_delay -clock clk  -max 1  [get_ports {result[29]}]
set_output_delay -clock clk  -max 1  [get_ports {result[28]}]
set_output_delay -clock clk  -max 1  [get_ports {result[27]}]
set_output_delay -clock clk  -max 1  [get_ports {result[26]}]
set_output_delay -clock clk  -max 1  [get_ports {result[25]}]
set_output_delay -clock clk  -max 1  [get_ports {result[24]}]
set_output_delay -clock clk  -max 1  [get_ports {result[23]}]
set_output_delay -clock clk  -max 1  [get_ports {result[22]}]
set_output_delay -clock clk  -max 1  [get_ports {result[21]}]
set_output_delay -clock clk  -max 1  [get_ports {result[20]}]
set_output_delay -clock clk  -max 1  [get_ports {result[19]}]
set_output_delay -clock clk  -max 1  [get_ports {result[18]}]
set_output_delay -clock clk  -max 1  [get_ports {result[17]}]
set_output_delay -clock clk  -max 1  [get_ports {result[16]}]
set_output_delay -clock clk  -max 1  [get_ports {result[15]}]
set_output_delay -clock clk  -max 1  [get_ports {result[14]}]
set_output_delay -clock clk  -max 1  [get_ports {result[13]}]
set_output_delay -clock clk  -max 1  [get_ports {result[12]}]
set_output_delay -clock clk  -max 1  [get_ports {result[11]}]
set_output_delay -clock clk  -max 1  [get_ports {result[10]}]
set_output_delay -clock clk  -max 1  [get_ports {result[9]}]
set_output_delay -clock clk  -max 1  [get_ports {result[8]}]
set_output_delay -clock clk  -max 1  [get_ports {result[7]}]
set_output_delay -clock clk  -max 1  [get_ports {result[6]}]
set_output_delay -clock clk  -max 1  [get_ports {result[5]}]
set_output_delay -clock clk  -max 1  [get_ports {result[4]}]
set_output_delay -clock clk  -max 1  [get_ports {result[3]}]
set_output_delay -clock clk  -max 1  [get_ports {result[2]}]
set_output_delay -clock clk  -max 1  [get_ports {result[1]}]
set_output_delay -clock clk  -max 1  [get_ports {result[0]}]
