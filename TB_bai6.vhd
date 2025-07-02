library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_counter_down_mod7 is
end tb_counter_down_mod7;

architecture behavior of tb_counter_down_mod7 is
    signal clk   : STD_LOGIC := '0';
    signal reset : STD_LOGIC := '0';
    signal Q     : STD_LOGIC_VECTOR(2 downto 0);

    component counter_down_mod7
        Port (
            clk   : in  STD_LOGIC;
            reset : in  STD_LOGIC;
            Q     : out STD_LOGIC_VECTOR(2 downto 0)
        );
    end component;

begin
    uut: counter_down_mod7 Port Map (
        clk => clk,
        reset => reset,
        Q => Q
    );

    clk_process :process
    begin
        while true loop
            clk <= '0';
            wait for 10 ns;
            clk <= '1';
            wait for 10 ns;
        end loop;
    end process;

    stim_proc: process
    begin
        reset <= '1';
        wait for 20 ns;
        reset <= '0';
        wait for 200 ns;
        wait;
    end process;
end behavior;
