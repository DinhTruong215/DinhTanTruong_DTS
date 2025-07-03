----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/02/2025 08:25:14 AM
-- Design Name: 
-- Module Name: tb - Behavioral
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

entity tb is
--  Port ( );
end tb;

architecture Behavioral of tb is
component Bai13 is
Port (
        clk    : in  STD_LOGIC;
        Q      : buffer STD_LOGIC_VECTOR(3 downto 0);
        Q_inv  : buffer STD_LOGIC_VECTOR(3 downto 0);
        y      : out STD_LOGIC
    );
           end component;
           
           signal CLK: STD_LOGIC:='0';
           signal y : STD_LOGIC;   
           signal Q: STD_LOGIC_VECTOR(3 downto 0):="0000";
           signal Q_inv:STD_LOGIC_VECTOR(3 downto 0):="1111";
            
            
            constant CLK_PERIOD :time :=10ns;
            
begin

uut: Bai13 port map (
      clk => clk,
      y=>y,
      Q=>Q,
      Q_inv=>Q_inv);
      
      CLK_process: process 
      begin
      while true loop
        clk <= '0';
        wait for CLK_PERIOD /2;
        clk <= '1';
        wait for CLK_PERIOD /2;
        end loop;
        end process;
        
        stim_proc: process
        begin
         wait for CLK_PERIOD;
         wait for 100ns;
         wait;
         end process;

end Behavioral;
