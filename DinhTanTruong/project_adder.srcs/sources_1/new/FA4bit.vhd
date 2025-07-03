----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/23/2025 08:25:52 AM
-- Design Name: 
-- Module Name: FA4bit - Behavioral
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

entity FA4bit is
  Port ( 
        a : in std_logic_vector (3 downto 0);
        b: in std_logic_vector( 3 downto 0);
        Cin: in std_logic; 
        s: out std_logic_vector( 3 downto 0);
        Cout: out std_logic);
        
end FA4bit;

architecture Behavioral of FA4bit is
component Fulladder is
 Port ( a : in std_logic_vector(3 downto 0);
           b : in std_logic_vector( 3 downto 0);
           Cin : in STD_LOGIC;
           s : out std_logic_vector(3 downto 0);
           Cout : out STD_LOGIC);
           end component;
signal c1: std_logic;
signal c2: std_logic; 
signal c3: std_logic;
signal s0,s1,s2,s3: std_logic_vector; 
           
begin
FA1: Fulladder port map(a=>a,b=>b,Cin=>Cin,s=>s0,Cout=>c1);
FA2: Fulladder port map(a=>a,b=>b,s=>s1,Cin=>c1,Cout=>c2);
FA3: Fulladder port map(a=>a,b=>b, Cin=>c2,s=>s2, Cout=>c3);
FA4: Fulladder port map(a=>a,b=>b,Cin=>c3,s=>s3,Cout=>Cout);
 
end Behavioral;
