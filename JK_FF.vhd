----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/02/2025 09:53:17 AM
-- Design Name: 
-- Module Name: JK_FF - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity JK_FF is
    Port(
    clk : in std_logic;
    J : in std_logic;
    K : in std_logic;
    Q : out std_logic
    );
end JK_FF;

architecture Behavioral of JK_FF is
    signal q_int : std_logic := '0';
begin
    process(clk)
    begin
      if rising_edge(clk) then
        if J = '0' and K = '0' then
            q_int <= q_int;         -- Gi? nguyên
        elsif J = '0' and K = '1' then
            q_int <= '0';           -- Reset
        elsif J = '1' and K = '0' then
            q_int <= '1';           -- Set
        elsif J = '1' and K = '1' then
            q_int <= not q_int;     -- Toggle
        end if;
     end if;
     end process;
     Q <= q_int;
end Behavioral;
