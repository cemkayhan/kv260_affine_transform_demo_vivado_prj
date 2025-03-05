set_property DIFF_TERM_ADV TERM_100 [get_ports {mipi_phy_if_0_clk_p}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {mipi_phy_if_0_clk_n}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {mipi_phy_if_0_data_n[*]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {mipi_phy_if_0_data_n[*]}]

set_property PACKAGE_PIN G11 [get_ports iic_rtl_scl_io]
set_property IOSTANDARD LVCMOS33 [get_ports iic_rtl_scl_io]
set_property SLEW SLOW [get_ports iic_rtl_scl_io]
set_property DRIVE 4 [get_ports iic_rtl_scl_io]

set_property PACKAGE_PIN F10 [get_ports iic_rtl_sda_io]
set_property IOSTANDARD LVCMOS33 [get_ports iic_rtl_sda_io]
set_property SLEW SLOW [get_ports iic_rtl_sda_io]
set_property DRIVE 4 [get_ports iic_rtl_sda_io]

set_property PACKAGE_PIN J10 [get_ports {ap1302_standby[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ap1302_standby[0]}]
set_property DRIVE 4 [get_ports {ap1302_standby[0]}]
set_property SLEW SLOW [get_ports {ap1302_standby[0]}]

set_property PACKAGE_PIN J11 [get_ports {ap1302_rst_b[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ap1302_rst_b[0]}]
set_property SLEW SLOW [get_ports {ap1302_rst_b[0]}]
set_property DRIVE 4 [get_ports {ap1302_rst_b[0]}]

set_property BITSTREAM.CONFIG.OVERTEMPSHUTDOWN ENABLE [current_design]