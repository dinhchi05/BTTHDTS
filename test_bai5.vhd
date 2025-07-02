library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_bai5 is
end tb_bai5;

architecture sim of tb_bai5 is
    -- Component tham chi?u ??n module bai4
    component bai5
        Port(
            clk : in std_logic;
            Q : out std_logic_vector(2 downto 0)
        );
    end component;

    signal clk : std_logic := '0';
    signal Q : std_logic_vector(2 downto 0);

begin
    -- K?t n?i module c?n test
    uut: bai5 port map (
        clk => clk,
        Q => Q
    );

    -- Xung clock 10ns chu k? (100MHz)
    clk_process : process
    begin
        while true loop
            clk <= '0'; wait for 5 ns;
            clk <= '1'; wait for 5 ns;
        end loop;
    end process;

    -- Mô ph?ng 200ns
    stim_proc : process
    begin
        wait for 200 ns;
        wait;
    end process;
end sim;