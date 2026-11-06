# ####################################################################

#  Created by Genus(TM) Synthesis Solution 23.16-s067_1 on Tue Apr 21 15:20:39 IST 2026

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design sram

create_clock -name "mclk" -period 5.4 -waveform {0.0 2.7} [get_ports clk_i]
create_clock -name "vclk" -period 5.4 -waveform {0.0 2.7} 
set_load -pin_load 0.008 [get_ports {rdata_o[7]}]
set_load -pin_load 0.008 [get_ports {rdata_o[6]}]
set_load -pin_load 0.008 [get_ports {rdata_o[5]}]
set_load -pin_load 0.008 [get_ports {rdata_o[4]}]
set_load -pin_load 0.008 [get_ports {rdata_o[3]}]
set_load -pin_load 0.008 [get_ports {rdata_o[2]}]
set_load -pin_load 0.008 [get_ports {rdata_o[1]}]
set_load -pin_load 0.008 [get_ports {rdata_o[0]}]
set_load -pin_load 0.008 [get_ports ready_o]
set_clock_gating_check -setup 0.0 
set_input_delay -clock [get_clocks vclk] -add_delay 1.0 [get_ports rst_i]
set_input_delay -clock [get_clocks vclk] -add_delay 1.0 [get_ports wr_rd_i]
set_input_delay -clock [get_clocks vclk] -add_delay 1.0 [get_ports {addr_i[3]}]
set_input_delay -clock [get_clocks vclk] -add_delay 1.0 [get_ports {addr_i[2]}]
set_input_delay -clock [get_clocks vclk] -add_delay 1.0 [get_ports {addr_i[1]}]
set_input_delay -clock [get_clocks vclk] -add_delay 1.0 [get_ports {addr_i[0]}]
set_input_delay -clock [get_clocks vclk] -add_delay 1.0 [get_ports {wdata_i[7]}]
set_input_delay -clock [get_clocks vclk] -add_delay 1.0 [get_ports {wdata_i[6]}]
set_input_delay -clock [get_clocks vclk] -add_delay 1.0 [get_ports {wdata_i[5]}]
set_input_delay -clock [get_clocks vclk] -add_delay 1.0 [get_ports {wdata_i[4]}]
set_input_delay -clock [get_clocks vclk] -add_delay 1.0 [get_ports {wdata_i[3]}]
set_input_delay -clock [get_clocks vclk] -add_delay 1.0 [get_ports {wdata_i[2]}]
set_input_delay -clock [get_clocks vclk] -add_delay 1.0 [get_ports {wdata_i[1]}]
set_input_delay -clock [get_clocks vclk] -add_delay 1.0 [get_ports {wdata_i[0]}]
set_input_delay -clock [get_clocks vclk] -add_delay 1.0 [get_ports valid_i]
set_output_delay -clock [get_clocks vclk] -add_delay 1.0 [get_ports {rdata_o[7]}]
set_output_delay -clock [get_clocks vclk] -add_delay 1.0 [get_ports {rdata_o[6]}]
set_output_delay -clock [get_clocks vclk] -add_delay 1.0 [get_ports {rdata_o[5]}]
set_output_delay -clock [get_clocks vclk] -add_delay 1.0 [get_ports {rdata_o[4]}]
set_output_delay -clock [get_clocks vclk] -add_delay 1.0 [get_ports {rdata_o[3]}]
set_output_delay -clock [get_clocks vclk] -add_delay 1.0 [get_ports {rdata_o[2]}]
set_output_delay -clock [get_clocks vclk] -add_delay 1.0 [get_ports {rdata_o[1]}]
set_output_delay -clock [get_clocks vclk] -add_delay 1.0 [get_ports {rdata_o[0]}]
set_output_delay -clock [get_clocks vclk] -add_delay 1.0 [get_ports ready_o]
set_driving_cell -lib_cell BUFX12 -library slow_vdd1v0 -pin "Y" [get_ports clk_i]
set_driving_cell -lib_cell BUFX12 -library slow_vdd1v0 -pin "Y" [get_ports rst_i]
set_driving_cell -lib_cell BUFX12 -library slow_vdd1v0 -pin "Y" [get_ports wr_rd_i]
set_driving_cell -lib_cell BUFX12 -library slow_vdd1v0 -pin "Y" [get_ports {addr_i[3]}]
set_driving_cell -lib_cell BUFX12 -library slow_vdd1v0 -pin "Y" [get_ports {addr_i[2]}]
set_driving_cell -lib_cell BUFX12 -library slow_vdd1v0 -pin "Y" [get_ports {addr_i[1]}]
set_driving_cell -lib_cell BUFX12 -library slow_vdd1v0 -pin "Y" [get_ports {addr_i[0]}]
set_driving_cell -lib_cell BUFX12 -library slow_vdd1v0 -pin "Y" [get_ports {wdata_i[7]}]
set_driving_cell -lib_cell BUFX12 -library slow_vdd1v0 -pin "Y" [get_ports {wdata_i[6]}]
set_driving_cell -lib_cell BUFX12 -library slow_vdd1v0 -pin "Y" [get_ports {wdata_i[5]}]
set_driving_cell -lib_cell BUFX12 -library slow_vdd1v0 -pin "Y" [get_ports {wdata_i[4]}]
set_driving_cell -lib_cell BUFX12 -library slow_vdd1v0 -pin "Y" [get_ports {wdata_i[3]}]
set_driving_cell -lib_cell BUFX12 -library slow_vdd1v0 -pin "Y" [get_ports {wdata_i[2]}]
set_driving_cell -lib_cell BUFX12 -library slow_vdd1v0 -pin "Y" [get_ports {wdata_i[1]}]
set_driving_cell -lib_cell BUFX12 -library slow_vdd1v0 -pin "Y" [get_ports {wdata_i[0]}]
set_driving_cell -lib_cell BUFX12 -library slow_vdd1v0 -pin "Y" [get_ports valid_i]
set_wire_load_mode "enclosed"
set_clock_uncertainty -setup 0.1 [get_clocks mclk]
set_clock_uncertainty -hold 0.1 [get_clocks mclk]
set_clock_uncertainty -setup 0.1 [get_clocks vclk]
set_clock_uncertainty -hold 0.1 [get_clocks vclk]
