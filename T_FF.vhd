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

entity T_FF is
    Port(
    clk : in std_logic;
    T : in std_logic;
    Q : out std_logic
    );
end T_FF;

architecture Behavioral of T_FF is
    signal q_int : std_logic := '0';
begin
    process(clk)
    begin
      if rising_edge(clk) then
        if T = '0' then
            q_int <= q_int;      
        elsif T = '1' then
            q_int <= not q_int;
        end if;
      end if;
     end process;
     Q <= q_int;
end Behavioral;
