----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/02/2025 09:42:18 AM
-- Design Name: 
-- Module Name: bai3 - Behavioral
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

entity bai4 is
    Port(
        clk : in std_logic;
        Q : out std_logic_vector(2 downto 0) -- Q3Q2Q1
    );
end bai4;

architecture Behavioral of bai4 is
    component T_FF
        port(
            clk : in std_logic;
            T : in std_logic;
            Q : out std_logic
        );
        end component;
        signal Q1,Q2,Q3 : std_logic;
        signal T1,T2,T3 : std_logic;
begin
    T1 <= (not Q3) or (not Q2) or Q1;
    T3 <= ((not Q3) and Q2 and Q1) or (Q3 and Q2 and (not Q1));
    T2 <= ((not Q3) and Q1) or ((not Q2) and Q1) or (Q3 and Q2 and (not Q1));
    FF1: t_ff port map (clk => clk, T => T1, Q => Q1);
    FF2: t_ff port map (clk => clk, T => T2, Q => Q2);
    FF3: t_ff port map (clk => clk, T => T3, Q => Q3);
    Q <= Q3 & Q2 & Q1;
end Behavioral;
