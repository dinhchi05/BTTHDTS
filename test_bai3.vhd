library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_bai3 is
end tb_bai3;

architecture sim of tb_bai3 is
    -- Component tham chi?u t?i module b?n ?ã vi?t trong bai3.vhd
    component bai3
        Port (
            clk : in  STD_LOGIC;
            Q   : out STD_LOGIC_VECTOR(2 downto 0)
        );
    end component;

    -- Tín hi?u mô ph?ng
    signal clk : std_logic := '0';
    signal Q   : std_logic_vector(2 downto 0);

begin
    -- K?t n?i component
    uut: bai3 port map (
        clk => clk,
        Q   => Q
    );

    -- T?o xung clock: chu k? 10ns
    clk_process : process
    begin
        while true loop
            clk <= '0'; wait for 5 ns;
            clk <= '1'; wait for 5 ns;
        end loop;
    end process;

    -- Cho ch?y mô ph?ng 200ns
    stim_proc : process
    begin
        wait for 200 ns;
        wait;
    end process;
end sim;library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_bai3 is
end tb_bai3;

architecture sim of tb_bai3 is
    -- Component tham chi?u t?i module b?n ?ã vi?t trong bai3.vhd
    component bai3
        Port (
            clk : in  STD_LOGIC;
            Q   : out STD_LOGIC_VECTOR(2 downto 0)
        );
    end component;

    -- Tín hi?u mô ph?ng
    signal clk : std_logic := '0';
    signal Q   : std_logic_vector(2 downto 0);

begin
    -- K?t n?i component
    uut: bai3 port map (
        clk => clk,
        Q   => Q
    );

    -- T?o xung clock: chu k? 10ns
    clk_process : process
    begin
        while true loop
            clk <= '0'; wait for 5 ns;
            clk <= '1'; wait for 5 ns;
        end loop;
    end process;

    -- Cho ch?y mô ph?ng 200ns
    stim_proc : process
    begin
        wait for 200 ns;
        wait;
    end process;
end sim;