###################################################################

# Created by write_sdc on Sun Jan  1 17:07:16 2017

###################################################################
set sdc_version 1.9

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current mA
create_clock [get_ports clk]  -period 13  -waveform {0 6.5}
set_clock_uncertainty 0.35  [get_clocks clk]
set_false_path -hold   -from [list [get_ports reset] [get_ports {in[31]}] [get_ports {in[30]}]       \
[get_ports {in[29]}] [get_ports {in[28]}] [get_ports {in[27]}] [get_ports      \
{in[26]}] [get_ports {in[25]}] [get_ports {in[24]}] [get_ports {in[23]}]       \
[get_ports {in[22]}] [get_ports {in[21]}] [get_ports {in[20]}] [get_ports      \
{in[19]}] [get_ports {in[18]}] [get_ports {in[17]}] [get_ports {in[16]}]       \
[get_ports {in[15]}] [get_ports {in[14]}] [get_ports {in[13]}] [get_ports      \
{in[12]}] [get_ports {in[11]}] [get_ports {in[10]}] [get_ports {in[9]}]        \
[get_ports {in[8]}] [get_ports {in[7]}] [get_ports {in[6]}] [get_ports         \
{in[5]}] [get_ports {in[4]}] [get_ports {in[3]}] [get_ports {in[2]}]           \
[get_ports {in[1]}] [get_ports {in[0]}]]
set_false_path -hold   -to [list [get_ports {out[31]}] [get_ports {out[30]}] [get_ports {out[29]}]   \
[get_ports {out[28]}] [get_ports {out[27]}] [get_ports {out[26]}] [get_ports   \
{out[25]}] [get_ports {out[24]}] [get_ports {out[23]}] [get_ports {out[22]}]   \
[get_ports {out[21]}] [get_ports {out[20]}] [get_ports {out[19]}] [get_ports   \
{out[18]}] [get_ports {out[17]}] [get_ports {out[16]}] [get_ports {out[15]}]   \
[get_ports {out[14]}] [get_ports {out[13]}] [get_ports {out[12]}] [get_ports   \
{out[11]}] [get_ports {out[10]}] [get_ports {out[9]}] [get_ports {out[8]}]     \
[get_ports {out[7]}] [get_ports {out[6]}] [get_ports {out[5]}] [get_ports      \
{out[4]}] [get_ports {out[3]}] [get_ports {out[2]}] [get_ports {out[1]}]       \
[get_ports {out[0]}]]
set_input_delay -clock clk  -max 1  [get_ports reset]
set_input_delay -clock clk  -max 1  [get_ports {in[31]}]
set_input_delay -clock clk  -max 1  [get_ports {in[30]}]
set_input_delay -clock clk  -max 1  [get_ports {in[29]}]
set_input_delay -clock clk  -max 1  [get_ports {in[28]}]
set_input_delay -clock clk  -max 1  [get_ports {in[27]}]
set_input_delay -clock clk  -max 1  [get_ports {in[26]}]
set_input_delay -clock clk  -max 1  [get_ports {in[25]}]
set_input_delay -clock clk  -max 1  [get_ports {in[24]}]
set_input_delay -clock clk  -max 1  [get_ports {in[23]}]
set_input_delay -clock clk  -max 1  [get_ports {in[22]}]
set_input_delay -clock clk  -max 1  [get_ports {in[21]}]
set_input_delay -clock clk  -max 1  [get_ports {in[20]}]
set_input_delay -clock clk  -max 1  [get_ports {in[19]}]
set_input_delay -clock clk  -max 1  [get_ports {in[18]}]
set_input_delay -clock clk  -max 1  [get_ports {in[17]}]
set_input_delay -clock clk  -max 1  [get_ports {in[16]}]
set_input_delay -clock clk  -max 1  [get_ports {in[15]}]
set_input_delay -clock clk  -max 1  [get_ports {in[14]}]
set_input_delay -clock clk  -max 1  [get_ports {in[13]}]
set_input_delay -clock clk  -max 1  [get_ports {in[12]}]
set_input_delay -clock clk  -max 1  [get_ports {in[11]}]
set_input_delay -clock clk  -max 1  [get_ports {in[10]}]
set_input_delay -clock clk  -max 1  [get_ports {in[9]}]
set_input_delay -clock clk  -max 1  [get_ports {in[8]}]
set_input_delay -clock clk  -max 1  [get_ports {in[7]}]
set_input_delay -clock clk  -max 1  [get_ports {in[6]}]
set_input_delay -clock clk  -max 1  [get_ports {in[5]}]
set_input_delay -clock clk  -max 1  [get_ports {in[4]}]
set_input_delay -clock clk  -max 1  [get_ports {in[3]}]
set_input_delay -clock clk  -max 1  [get_ports {in[2]}]
set_input_delay -clock clk  -max 1  [get_ports {in[1]}]
set_input_delay -clock clk  -max 1  [get_ports {in[0]}]
set_output_delay -clock clk  -max 1  [get_ports {out[31]}]
set_output_delay -clock clk  -max 1  [get_ports {out[30]}]
set_output_delay -clock clk  -max 1  [get_ports {out[29]}]
set_output_delay -clock clk  -max 1  [get_ports {out[28]}]
set_output_delay -clock clk  -max 1  [get_ports {out[27]}]
set_output_delay -clock clk  -max 1  [get_ports {out[26]}]
set_output_delay -clock clk  -max 1  [get_ports {out[25]}]
set_output_delay -clock clk  -max 1  [get_ports {out[24]}]
set_output_delay -clock clk  -max 1  [get_ports {out[23]}]
set_output_delay -clock clk  -max 1  [get_ports {out[22]}]
set_output_delay -clock clk  -max 1  [get_ports {out[21]}]
set_output_delay -clock clk  -max 1  [get_ports {out[20]}]
set_output_delay -clock clk  -max 1  [get_ports {out[19]}]
set_output_delay -clock clk  -max 1  [get_ports {out[18]}]
set_output_delay -clock clk  -max 1  [get_ports {out[17]}]
set_output_delay -clock clk  -max 1  [get_ports {out[16]}]
set_output_delay -clock clk  -max 1  [get_ports {out[15]}]
set_output_delay -clock clk  -max 1  [get_ports {out[14]}]
set_output_delay -clock clk  -max 1  [get_ports {out[13]}]
set_output_delay -clock clk  -max 1  [get_ports {out[12]}]
set_output_delay -clock clk  -max 1  [get_ports {out[11]}]
set_output_delay -clock clk  -max 1  [get_ports {out[10]}]
set_output_delay -clock clk  -max 1  [get_ports {out[9]}]
set_output_delay -clock clk  -max 1  [get_ports {out[8]}]
set_output_delay -clock clk  -max 1  [get_ports {out[7]}]
set_output_delay -clock clk  -max 1  [get_ports {out[6]}]
set_output_delay -clock clk  -max 1  [get_ports {out[5]}]
set_output_delay -clock clk  -max 1  [get_ports {out[4]}]
set_output_delay -clock clk  -max 1  [get_ports {out[3]}]
set_output_delay -clock clk  -max 1  [get_ports {out[2]}]
set_output_delay -clock clk  -max 1  [get_ports {out[1]}]
set_output_delay -clock clk  -max 1  [get_ports {out[0]}]
