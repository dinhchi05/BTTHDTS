library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity custom_counter is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (2 downto 0));
end custom_counter;

architecture Behavioral of custom_counter is
    signal state : STD_LOGIC_VECTOR (2 downto 0);
begin
    process(clk, reset)
    begin
        if reset = '1' then
            state <= "000"; -- Start at 0
        elsif rising_edge(clk) then
            case state is
                when "000" => state <= "001"; -- 0 ? 1
                when "001" => state <= "011"; -- 1 ? 3
                when "011" => state <= "100"; -- 3 ? 4
                when "100" => state <= "111"; -- 4 ? 7
                when "111" => state <= "001"; -- 7 ? 1
                when others => state <= "000"; -- default
            end case;
        end if;
    end process;

    Q <= state;
end Behavioral;
