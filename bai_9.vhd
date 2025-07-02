library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity counter_custom_mod5 is
    Port (
        clk   : in  STD_LOGIC;
        reset : in  STD_LOGIC;
        Q     : out STD_LOGIC_VECTOR(2 downto 0)
    );
end counter_custom_mod5;

architecture Behavioral of counter_custom_mod5 is
    signal state : STD_LOGIC_VECTOR(2 downto 0) := "001"; -- b?t ð?u t? 1
begin
    process(clk, reset)
    begin
        if reset = '1' then
            state <= "001"; -- reset v? 1
        elsif rising_edge(clk) then
            case state is
                when "001" => state <= "010"; -- 1 ? 2
                when "010" => state <= "011"; -- 2 ? 3
                when "011" => state <= "101"; -- 3 ? 5
                when "101" => state <= "110"; -- 5 ? 6
                when "110" => state <= "001"; -- 6 ? 1
                when others => state <= "001"; -- reset n?u sai tr?ng thái
            end case;
        end if;
    end process;

    Q <= state;
end Behavioral;
