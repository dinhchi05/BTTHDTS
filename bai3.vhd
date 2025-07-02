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

entity bai3 is
    Port(
        clk : in std_logic;
        Q : out std_logic_vector(2 downto 0) -- Q3Q2Q1
    );
end bai3;

architecture Behavioral of bai3 is
    component JK_FF
        port(
            clk : in std_logic;
            J : in std_logic;
            K : in std_logic;
            Q : out std_logic
        );
        end component;
        signal Q1,Q2,Q3 : std_logic;
        signal J1,J2,J3,K1,K2,K3 : std_logic;
begin
    J1 <= not Q3 or not Q2;
    K1 <= '1';
    J2 <= Q1;
    K2 <= Q3 or Q1;
    J3 <= Q2 and Q1;
    K3 <= Q2;
    FF1: jk_ff port map (clk => clk, J => J1, K => K1, Q => Q1);
    FF2: jk_ff port map (clk => clk, J => J2, K => K2, Q => Q2);
    FF3: jk_ff port map (clk => clk, J => J3, K => K3, Q => Q3);
    Q <= Q3 & Q2 & Q1;
end Behavioral;
