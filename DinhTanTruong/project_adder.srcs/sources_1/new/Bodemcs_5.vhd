library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Bodemcs5 is
    Port (
        clk    : in  STD_LOGIC;
        Q      : buffer STD_LOGIC_VECTOR(2 downto 0);
        Q_inv  : buffer STD_LOGIC_VECTOR(2 downto 0);
        y      : out STD_LOGIC
    );
end Bodemcs5 ;

architecture Behavioral of Bodemcs5  is

    component JK_FF
        Port (
            J, K  : in STD_LOGIC;
            CLK   : in STD_LOGIC;
            Q     : buffer STD_LOGIC;
            Q_inv : buffer STD_LOGIC
        );
    end component;

    signal Q_sig     : STD_LOGIC_VECTOR(2 downto 0);
    signal Q_inv_sig : STD_LOGIC_VECTOR(2 downto 0);
    signal and_Q0_Q1 : STD_LOGIC;

begin

    -- JK0
    FF0: JK_FF port map (
        J => '1', K => '1',
        CLK => clk,
        Q => Q_sig(0),
        Q_inv => Q_inv_sig(0)
    );

    -- JK1
    FF1: JK_FF port map (
        J => '1', K => '1',
        CLK => Q_sig(0),
        Q => Q_sig(1),
        Q_inv => Q_inv_sig(1)
    );

    -- JK2
    and_Q0_Q1 <= Q_sig(0) and Q_sig(1);
    FF2: JK_FF port map (
        J => '1', K => '1',
        CLK => and_Q0_Q1,
        Q => Q_sig(2),
        Q_inv => Q_inv_sig(2)
    );

    Q     <= Q_sig;
    Q_inv <= Q_inv_sig;
    y     <= and_Q0_Q1;

end Behavioral;