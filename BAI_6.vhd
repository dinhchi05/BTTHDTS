library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity counter_down_mod7 is
    Port (
        clk   : in  STD_LOGIC;
        reset : in  STD_LOGIC;
        Q     : out STD_LOGIC_VECTOR(2 downto 0)
    );
end counter_down_mod7;

architecture Behavioral of counter_down_mod7 is
    signal count : STD_LOGIC_VECTOR(2 downto 0) := "110"; -- b?t ð?u t? 6
begin
    process(clk, reset)
    begin
        if reset = '1' then
            count <= "110"; -- reset v? 6
        elsif rising_edge(clk) then
            if count = "000" then
                count <= "110"; -- quay l?i 6
            else
                count <= count - 1;
            end if;
        end if;
    end process;

    Q <= count;
end Behavioral;
