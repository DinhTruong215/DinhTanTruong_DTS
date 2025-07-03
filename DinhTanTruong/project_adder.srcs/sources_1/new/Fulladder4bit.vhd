----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/23/2025 07:40:09 AM
-- Design Name: 
-- Module Name: Fulladder4bit - Behavioral
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

entity Fulladder4bit is
Port (a : in STD_LOGIC;
           b : in STD_LOGIC;
           Cin : in STD_LOGIC;
           s : out STD_LOGIC;
           Cout : out STD_LOGIC);
end Fulladder4bit;

architecture Behavioral of Fulladder4bit is
signal sj: std_logic;
signal cj: std_logic;
signal tag: std_logic;
component Halfadder is
Port (  a : in STD_LOGIC;
           b : in STD_LOGIC;
           s : out STD_LOGIC;
           r : out STD_LOGIC);
           end component;

begin
HA1: Halfadder port map(a=>a,b=>b,s=>sj,r=>cj);
HA2: Halfadder port map(a=>sj,b=>cin,s=>s,r=>tag);
   cout <= tag or cj;


end Behavioral;
