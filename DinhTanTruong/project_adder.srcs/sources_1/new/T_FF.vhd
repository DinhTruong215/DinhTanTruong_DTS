----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/01/2025 09:55:17 PM
-- Design Name: 
-- Module Name: T_FF - Behavioral
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

entity T_FF is
    Port ( T : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Q : buffer STD_LOGIC;
           Q_inv : buffer STD_LOGIC);
end T_FF;

architecture Behavioral of T_FF is
signal Q_tap : STD_LOGIC :='0';
begin
process(CLK)
begin
      if falling_edge(CLK) then
        if T='0' Then
           Q_tap <= Q_tap;
        else 
           Q_tap <= not Q_tap;
        end if;
        end if;
end process;
Q <= Q_tap;
Q_inv <= not Q_tap;

end Behavioral;
