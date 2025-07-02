library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity counter_custom_mod4 is
    Port (
        clk   : in  STD_LOGIC;
        reset : in  STD_LOGIC;
        Q     : out STD_LOGIC_VECTOR(2 downto 0)
    );
end counter_custom_mod4;

architecture Behavioral of counter_custom_mod4 is
    signal state : STD_LOGIC_VECTOR(2 downto 0) := "000";
begin
    process(clk, reset)
    begin
        if reset = '1' then
            state <= "000"; -- b?t ð?u t? 0
        elsif rising_edge(clk) then
            case state is
                when "000" => state <= "010"; -- 0 ? 2
                when "010" => state <= "100"; -- 2 ? 4
                when "100" => state <= "110"; -- 4 ? 6
                when "110" => state <= "000"; -- 6 ? 0
                when others => state <= "000"; -- reset n?u sai tr?ng thái
            end case;
        end if;
    end process;

    Q <= state;
end Behavioral;
