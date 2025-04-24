----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/25/2024 02:15:23 PM
-- Design Name: 
-- Module Name: FA - Behavioral
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


entity FA is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c_in : in STD_LOGIC;
           sum : out STD_LOGIC;
           c_out : out STD_LOGIC);
end FA;

architecture Behavioral of FA is
signal sum1,cout1,cout2 : STD_LOGIC;
component HA is port(
x,y:in STD_LOGIC;
z,c:out STD_LOGIC);
end component;

begin
H1:HA Port map(a,b,sum1,cout1);
H2:HA Port map(c_in,sum1,sum,cout2);
c_out<=cout1 or cout2;
end behavioral;
