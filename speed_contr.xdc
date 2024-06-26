set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]

create_clock -period 83.333 [get_ports clk]

set_property IOSTANDARD LVCMOS33 [get_ports {seg4[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg4[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg4[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg4[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg4[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg4[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg4[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg3[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg3[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg3[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg3[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg3[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg3[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg3[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg2[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg2[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg2[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg2[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg2[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg2[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg2[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg1[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg1[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg1[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg1[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg1[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg1[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg1[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports dot]

set_property PACKAGE_PIN R10 [get_ports sensor_a]
set_property PACKAGE_PIN T10 [get_ports sensor_b]
set_property PACKAGE_PIN F5 [get_ports clk]

set_property IOSTANDARD LVCMOS33 [get_ports sensor_a]
set_property IOSTANDARD LVCMOS33 [get_ports sensor_b]
set_property IOSTANDARD LVCMOS33 [get_ports clk]

set_property PACKAGE_PIN C1 [get_ports {seg1[0]}]
set_property PACKAGE_PIN C2 [get_ports {seg1[1]}]
set_property PACKAGE_PIN C3 [get_ports {seg1[2]}]
set_property PACKAGE_PIN F2 [get_ports {seg1[3]}]
set_property PACKAGE_PIN E1 [get_ports {seg1[4]}]
set_property PACKAGE_PIN D3 [get_ports {seg1[5]}]
set_property PACKAGE_PIN E2 [get_ports {seg1[6]}]

set_property PACKAGE_PIN B6 [get_ports {seg2[0]}]
set_property PACKAGE_PIN C7 [get_ports {seg2[1]}]
set_property PACKAGE_PIN A8 [get_ports {seg2[2]}]
set_property PACKAGE_PIN A3 [get_ports {seg2[3]}]
set_property PACKAGE_PIN A4 [get_ports {seg2[4]}]
set_property PACKAGE_PIN A5 [get_ports {seg2[5]}]
set_property PACKAGE_PIN B5 [get_ports {seg2[6]}]

set_property PACKAGE_PIN B11 [get_ports {seg3[0]}]
set_property PACKAGE_PIN A12 [get_ports {seg3[1]}]
set_property PACKAGE_PIN A13 [get_ports {seg3[2]}]
set_property PACKAGE_PIN C8 [get_ports {seg3[3]}]
set_property PACKAGE_PIN A9 [get_ports {seg3[4]}]
set_property PACKAGE_PIN B10 [get_ports {seg3[5]}]
set_property PACKAGE_PIN A10 [get_ports {seg3[6]}]

set_property PACKAGE_PIN C16 [get_ports {seg4[0]}]
set_property PACKAGE_PIN D15 [get_ports {seg4[1]}]
set_property PACKAGE_PIN E15 [get_ports {seg4[2]}]
set_property PACKAGE_PIN A14 [get_ports {seg4[3]}]
set_property PACKAGE_PIN B15 [get_ports {seg4[4]}]
set_property PACKAGE_PIN B16 [get_ports {seg4[5]}]
set_property PACKAGE_PIN A15 [get_ports {seg4[6]}]

set_property PACKAGE_PIN B7 [get_ports dot]