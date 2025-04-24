----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/16/2024 01:03:33 PM
-- Design Name: 
-- Module Name: Top_entity - Behavioral
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

entity Top_entity is
port (S: in STD_LOGIC;
Reset: in STD_LOGIC;
Number1, Number2: in STD_LOGIC_VECTOR(3 downto 0);
CLK: in STD_LOGIC;
AA: out STD_LOGIC;
AB: out STD_LOGIC;
AC: out STD_LOGIC;
AD: out STD_LOGIC;
AE: out STD_LOGIC;
AF: out STD_LOGIC;
AG: out STD_LOGIC;
C: out STD_LOGIC);
end Top_entity;



architecture Behavioral of Top_entity is
signal dbS,dbR:std_logic;
signal internalQ,internalR,internalData:STD_LOGIC_VECTOR(3 downto 0);


--components declaration
component debouncer is port(
CLK : in STD_LOGIC;
PB : in STD_LOGIC;
PB_debounced : out STD_LOGIC);
end component;

component ASM is port(
CLK : in STD_LOGIC;
Reset : in STD_LOGIC;
S : in STD_LOGIC;
Number1 : in STD_LOGIC_VECTOR(3 downto 0);
Number2 : in STD_LOGIC_VECTOR(3 downto 0);
Q : out STD_LOGIC_VECTOR(3 downto 0);
R : out STD_LOGIC_VECTOR(3 downto 0));
end component;

component Time_Mux is port( 
CLK : in STD_LOGIC;
Digit0: in STD_LOGIC_VECTOR(3 downto 0);
Digit1: in STD_LOGIC_VECTOR(3 downto 0);
Data: out STD_LOGIC_VECTOR(3 downto 0);
DigSelect: out STD_LOGIC);
end component;

component Binary_To_SevenSeg is port( 
Data: in STD_LOGIC_VECTOR(3 downto 0);
AA: out STD_LOGIC;
AB: out STD_LOGIC;
AC: out STD_LOGIC;
AD: out STD_LOGIC;
AE: out STD_LOGIC;
AF: out STD_LOGIC;
AG: out STD_LOGIC);
end component;
--end of components declaration

begin
PB1:debouncer port map(CLK,S,dbS);
PB2:debouncer port map(CLK,Reset,dbR);
ASMin:ASM port map(CLK,dbR,dbS,Number1,Number2,internalQ,internalR);
TM:Time_Mux port map(CLK,internalR,internalQ,internalData,C);
BTSS:Binary_To_SevenSeg port map(internalData,AA,AB,AC,AD,AE,AF,AG);
end Behavioral;
