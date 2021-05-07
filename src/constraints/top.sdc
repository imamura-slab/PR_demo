create_clock -name clk1 -period 20.000 [get_ports {clk}]
derive_pll_clocks
derive_clock_uncertainty


# input
set_false_path -from [get_ports {clk}]
set_false_path -from [get_ports {btn*}]
set_false_path -from [get_ports {sw*}]



# output
set_false_path -from * -to [get_ports {seg7led*}]
set_false_path -from * -to [get_ports {led*}]


