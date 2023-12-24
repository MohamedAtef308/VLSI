###################################################################

# Created by write_sdc on Sun Jan  1 17:08:47 2017

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
{q[31]}] [get_ports {q[30]}] [get_ports {q[29]}] [get_ports {q[28]}]           \
[get_ports {q[27]}] [get_ports {q[26]}] [get_ports {q[25]}] [get_ports         \
{q[24]}] [get_ports {q[23]}] [get_ports {q[22]}] [get_ports {q[21]}]           \
[get_ports {q[20]}] [get_ports {q[19]}] [get_ports {q[18]}] [get_ports         \
{q[17]}] [get_ports {q[16]}] [get_ports {q[15]}] [get_ports {q[14]}]           \
[get_ports {q[13]}] [get_ports {q[12]}] [get_ports {q[11]}] [get_ports         \
{q[10]}] [get_ports {q[9]}] [get_ports {q[8]}] [get_ports {q[7]}] [get_ports   \
{q[6]}] [get_ports {q[5]}] [get_ports {q[4]}] [get_ports {q[3]}] [get_ports    \
{q[2]}] [get_ports {q[1]}] [get_ports {q[0]}] [get_ports {m[31]}] [get_ports   \
{m[30]}] [get_ports {m[29]}] [get_ports {m[28]}] [get_ports {m[27]}]           \
[get_ports {m[26]}] [get_ports {m[25]}] [get_ports {m[24]}] [get_ports         \
{m[23]}] [get_ports {m[22]}] [get_ports {m[21]}] [get_ports {m[20]}]           \
[get_ports {m[19]}] [get_ports {m[18]}] [get_ports {m[17]}] [get_ports         \
{m[16]}] [get_ports {m[15]}] [get_ports {m[14]}] [get_ports {m[13]}]           \
[get_ports {m[12]}] [get_ports {m[11]}] [get_ports {m[10]}] [get_ports {m[9]}] \
[get_ports {m[8]}] [get_ports {m[7]}] [get_ports {m[6]}] [get_ports {m[5]}]    \
[get_ports {m[4]}] [get_ports {m[3]}] [get_ports {m[2]}] [get_ports {m[1]}]    \
[get_ports {m[0]}] [get_ports q_1]]
set_false_path -hold   -to [list [get_ports {nextA[31]}] [get_ports {nextA[30]}] [get_ports          \
{nextA[29]}] [get_ports {nextA[28]}] [get_ports {nextA[27]}] [get_ports        \
{nextA[26]}] [get_ports {nextA[25]}] [get_ports {nextA[24]}] [get_ports        \
{nextA[23]}] [get_ports {nextA[22]}] [get_ports {nextA[21]}] [get_ports        \
{nextA[20]}] [get_ports {nextA[19]}] [get_ports {nextA[18]}] [get_ports        \
{nextA[17]}] [get_ports {nextA[16]}] [get_ports {nextA[15]}] [get_ports        \
{nextA[14]}] [get_ports {nextA[13]}] [get_ports {nextA[12]}] [get_ports        \
{nextA[11]}] [get_ports {nextA[10]}] [get_ports {nextA[9]}] [get_ports         \
{nextA[8]}] [get_ports {nextA[7]}] [get_ports {nextA[6]}] [get_ports           \
{nextA[5]}] [get_ports {nextA[4]}] [get_ports {nextA[3]}] [get_ports           \
{nextA[2]}] [get_ports {nextA[1]}] [get_ports {nextA[0]}] [get_ports           \
{nextQ[31]}] [get_ports {nextQ[30]}] [get_ports {nextQ[29]}] [get_ports        \
{nextQ[28]}] [get_ports {nextQ[27]}] [get_ports {nextQ[26]}] [get_ports        \
{nextQ[25]}] [get_ports {nextQ[24]}] [get_ports {nextQ[23]}] [get_ports        \
{nextQ[22]}] [get_ports {nextQ[21]}] [get_ports {nextQ[20]}] [get_ports        \
{nextQ[19]}] [get_ports {nextQ[18]}] [get_ports {nextQ[17]}] [get_ports        \
{nextQ[16]}] [get_ports {nextQ[15]}] [get_ports {nextQ[14]}] [get_ports        \
{nextQ[13]}] [get_ports {nextQ[12]}] [get_ports {nextQ[11]}] [get_ports        \
{nextQ[10]}] [get_ports {nextQ[9]}] [get_ports {nextQ[8]}] [get_ports          \
{nextQ[7]}] [get_ports {nextQ[6]}] [get_ports {nextQ[5]}] [get_ports           \
{nextQ[4]}] [get_ports {nextQ[3]}] [get_ports {nextQ[2]}] [get_ports           \
{nextQ[1]}] [get_ports {nextQ[0]}] [get_ports nextQ_1]]
