#current_design P1Blender
#create_clock [get_ports{clk}] -name clk -period 10 -waveform {0 50}
current_design P1Blender
create_clock [get_ports {clk}]  -name clk -period 100 -waveform {0 50}
