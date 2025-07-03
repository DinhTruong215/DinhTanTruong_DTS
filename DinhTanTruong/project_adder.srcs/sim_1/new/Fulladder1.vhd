----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/22/2025 09:48:30 PM
-- Design Name: 
-- Module Name: Fulladder1 - Behavioral
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

entity Fulladder1 is
--  Port ( );
end Fulladder1;

architecture Behavioral of Fulladder1 is
component Fulladder is 
Port (a : in STD_LOGIC;
           b : in STD_LOGIC;
           r : in STD_LOGIC;
           s : out STD_LOGIC;
           ri : out STD_LOGIC);
           end component;
           
           signal a: std_logic :='0';
           signal b: std_logic :='0';
           signal r: std_logic :='0';
           signal s : std_logic;
           signal ri: std_logic;
begin
FUlladder1: Fulladder port map ( a=>a,b=>b,r=>r,s=>s,ri=>ri);
tb: process
begin
wait for 10ns;
a<='0';b<='0';r<='1';
wait for 10ns;
a<='0';b<='1';r<='0';
wait for 10ns;
a<='0';b<='1';r<='1';
wait for 10ns;
a<='1';b<='0';r<='0';
wait for 10ns;
a<='1';b<='0';r<='1';
wait for 10ns;
a<='1';b<='1';r<='0';
wait for 10ns;
a<='1';b<='1';r<='1';
wait for 10ns;
end process;
end Behavioral;
