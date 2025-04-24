----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/30/2024 12:33:37 PM
-- Design Name: 
-- Module Name: TOPLevel - Behavioral
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

entity TOPLevel is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           CLk : in STD_LOGIC;
           E : out STD_LOGIC;
           RS : out STD_LOGIC;
           RW : out STD_LOGIC;
           Data : out STD_LOGIC_VECTOR (7 downto 0));
end TOPLevel;

architecture Behavioral of TOPLevel is
signal forSum:std_logic_vector(4 downto 0);
component LCD_ADDER is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           Clk : in STD_LOGIC;
           SUM : in STD_LOGIC_VECTOR (4 downto 0);
           E : out STD_LOGIC;
           RS : out STD_LOGIC;
           RW : out STD_LOGIC;
           DATA : out STD_LOGIC_VECTOR (7 downto 0));
end component;
component fourBitAdder is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           SUM : out STD_LOGIC_VECTOR (4 downto 0));
end component;
begin
uut0:fourBitAdder 
    Port map ( A ,
           B ,
           forSUM);

uut1:LCD_ADDER 
    Port map ( A,
           B,
           Clk ,
           forSUM ,
           E,
           RS ,
           RW,
           DATA);

end Behavioral;