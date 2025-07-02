library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity counter_down_mod5 is
    Port (
        clk   : in  STD_LOGIC;
        reset : in  STD_LOGIC;
        Q     : out STD_LOGIC_VECTOR(2 downto 0)
    );
end counter_down_mod5;

architecture Behavioral of counter_down_mod5 is
    signal count : STD_LOGIC_VECTOR(2 downto 0) := "100"; -- b?t ð?u t? 4
begin
    process(clk, reset)
    begin
        if reset = '1' then
            count <= "100"; -- reset v? 4
        elsif rising_edge(clk) then
            if count = "000" then
                count <= "100"; -- quay l?i 4
            else
                count <= count - 1;
            end if;
        end if;
    end process;

    Q <= count;
end Behavioral;
