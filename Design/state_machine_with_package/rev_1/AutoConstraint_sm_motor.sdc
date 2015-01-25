
#Begin clock constraint
define_clock -name {sm_motor|clk} {p:sm_motor|clk} -period 1000.000 -clockgroup Autoconstr_clkgroup_0 -rise 0.000 -fall 500.000 -route 0.000 
#End clock constraint

#Begin clock constraint
define_clock -name {sm_motor|c_state_derived_clock[2]} {n:sm_motor|c_state_derived_clock[2]} -period 1000.000 -clockgroup Autoconstr_clkgroup_0 -rise 0.000 -fall 500.000 -route 0.000 
#End clock constraint

#Begin clock constraint
define_clock -name {sm_motor|c_state_derived_clock[3]} {n:sm_motor|c_state_derived_clock[3]} -period 1000.000 -clockgroup Autoconstr_clkgroup_0 -rise 0.000 -fall 500.000 -route 0.000 
#End clock constraint
