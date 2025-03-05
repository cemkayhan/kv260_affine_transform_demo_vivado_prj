----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/05/2024 05:41:18 PM
-- Design Name: 
-- Module Name: top - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top is
   port(
     ap1302_rst_b: out std_logic_vector(0 downto 0);
     ap1302_standby: out std_logic_vector(0 downto 0);
     iic_rtl_scl_io: inout std_logic;
     iic_rtl_sda_io: inout std_logic;
     mipi_phy_if_0_clk_n: in std_logic;
     mipi_phy_if_0_clk_p: in std_logic;
     mipi_phy_if_0_data_n: in std_logic_vector(3 downto 0);
     mipi_phy_if_0_data_p: in std_logic_vector(3 downto 0)
   );
end top;

architecture Behavioral of top is

  component design_1_wrapper 
   port(
     ap1302_rst_b: out std_logic_vector(0 downto 0);
     ap1302_standby: out std_logic_vector(0 downto 0);
     iic_rtl_scl_io: inout std_logic;
     iic_rtl_sda_io: inout std_logic;
     mipi_phy_if_0_clk_n: in std_logic;
     mipi_phy_if_0_clk_p: in std_logic;
     mipi_phy_if_0_data_n: in std_logic_vector(3 downto 0);
     mipi_phy_if_0_data_p: in std_logic_vector(3 downto 0)
   );
  end component;

begin

  i_design_1_wrapper: design_1_wrapper
    port map(
     ap1302_rst_b=>ap1302_rst_b,
     ap1302_standby=>ap1302_standby,
     iic_rtl_scl_io=>iic_rtl_scl_io,
     iic_rtl_sda_io=>iic_rtl_sda_io,
     mipi_phy_if_0_clk_n=>mipi_phy_if_0_clk_n,
     mipi_phy_if_0_clk_p=>mipi_phy_if_0_clk_p,
     mipi_phy_if_0_data_n=>mipi_phy_if_0_data_n,
     mipi_phy_if_0_data_p=>mipi_phy_if_0_data_p
    );

end Behavioral;
