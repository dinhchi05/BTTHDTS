library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_bai2_nor_only is
end tb_bai2_nor_only;

architecture sim of tb_bai2_nor_only is
    -- ? S?a tên entity thành "bai2"
    component bai2
        Port (
            A : in  STD_LOGIC;
            B : in  STD_LOGIC;
            C : in  STD_LOGIC;
            F : out STD_LOGIC
        );
    end component;

    signal A, B, C, F : std_logic;

begin
    -- Liên k?t ?úng entity
    uut: bai2 port map (A => A, B => B, C => C, F => F);

    -- C?p tín hi?u mô ph?ng
    process
    begin
        A <= '0'; B <= '0'; C <= '0'; wait for 10 ns;
        A <= '0'; B <= '0'; C <= '1'; wait for 10 ns;
        A <= '0'; B <= '1'; C <= '0'; wait for 10 ns;
        A <= '0'; B <= '1'; C <= '1'; wait for 10 ns;
        A <= '1'; B <= '0'; C <= '0'; wait for 10 ns;
        A <= '1'; B <= '0'; C <= '1'; wait for 10 ns;
        A <= '1'; B <= '1'; C <= '0'; wait for 10 ns;
        A <= '1'; B <= '1'; C <= '1'; wait for 10 ns;
        wait;
    end process;
end sim;
