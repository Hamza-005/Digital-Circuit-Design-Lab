----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/25/2024 03:33:36 PM
-- Design Name: 
-- Module Name: FourBitAdder_tb - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FourBitAdder_tb is
--  Port ( );
end FourBitAdder_tb;

architecture Behavioral of FourBitAdder_tb is
component FourBitAdder is
Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           S : out STD_LOGIC_VECTOR (3 downto 0);
           Cout : out STD_LOGIC);
end component;
signal A,B,S : std_logic_vector (3 downto 0);
signal Cout : std_logic;

begin

uut: FourBitAdder port map(
A => A , B =>B , S=> S, Cout => Cout );

stimulus: process
begin
a <= "0000" ; 
for i in 0 to 15 loop
b <= "0000";
for k in 0 to 15 loop
wait for 10 ns;
b <= b + '1';
end loop;
wait for 10 ns;
a <= a + '1';
end loop;
wait;
end process;
     

end Behavioral;