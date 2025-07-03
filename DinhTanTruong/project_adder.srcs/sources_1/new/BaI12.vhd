----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/01/2025 11:52:58 PM
-- Design Name: 
-- Module Name: BaI12 - Behavioral
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

entity BaI12 is
Port ( CLK : in STD_LOGIC;
           Q : buffer STD_LOGIC_VECTOR(2 downto 0);
           Q_inv : buffer STD_LOGIC_VECTOR(2 downto 0);
           y : out STD_LOGIC);
end BaI12;

architecture Behavioral of BaI12 is
component D_FF is
   Port ( D : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Q : buffer STD_LOGIC;
           Q_inv : buffer STD_LOGIC);
           end component;
           
           signal D : STD_LOGIC_VECTOR(2 downto 0);
begin
D(0) <= ( Q_inv(3) and Q(2) and Q(1))or (Q(3) and (Q_inv(2) or Q_inv(1)));
D(1) <= Q(2) xor Q(1);
D(2) <=  Q_inv(1) and Q(0);
D(3) <=  Q_inv(3) or Q_inv(2) or Q_inv(1);

DFF1: D_FF port map(D=>D(0),CLK=>CLK,Q=>Q(0),Q_inv=>Q_inv(0));
DFF2: D_FF port map(D=>D(1),CLK=>CLK,Q=>Q(1),Q_inv=>Q_inv(1));
DFF3: D_FF port map(D=>D(2),CLK=>CLK,Q=>Q(2),Q_inv=>Q_inv(2));
DFF4: D_FF port map(D=>D(3),CLK=>CLK,Q=>Q(3),Q_inv=>Q_inv(3));
y <= Q(1) and Q(2)and Q(3) ;

end Behavioral;
