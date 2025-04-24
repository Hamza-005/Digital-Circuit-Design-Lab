----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/30/2024 12:32:11 PM
-- Design Name: 
-- Module Name: LCD_ADDER - Behavioral
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
use IEEE.std_logic_arith.ALL;
use IEEE.std_logic_unsigned.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity LCD_ADDER is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           Clk : in STD_LOGIC;
           SUM : in STD_LOGIC_VECTOR (4 downto 0);
           E : out STD_LOGIC;
           RS : out STD_LOGIC;
           RW : out STD_LOGIC;
           DATA : out STD_LOGIC_VECTOR (7 downto 0));
end LCD_ADDER;

architecture Behavioral of LCD_ADDER is
signal counter:integer:=0;
signal BCDSUM:std_logic_vector(7 downto 0);
signal RS2:std_logic:='0';
begin

process(Clk)
begin
if(Clk'event and Clk='1') then
Counter<=Counter+1;


if(Counter<20000000) then
E<='0';
Rs<='0';
Rw<='0';
elsif(Counter<20000100) then
E<='1';
Data<="00111000";
elsif(Counter<20004100) then
E<='0';
elsif(Counter<20004200) then
E<='1';
Data<="00000110";
elsif(Counter<20008200) then
E<='0';
elsif(Counter<20008300) then
E<='1';
Data<="00001100";
elsif(Counter<20012300) then
E<='0';
elsif(Counter<20012400) then
E<='1';
Data<="00000001";

elsif(Counter<20176400) then
E<='0';
elsif(Counter<20176500) then
E<='1';
Data<="10000000";
elsif(Counter<20180500) then
E<='0';
elsif(Counter<20180600) then
E<='1';
RS<='1';
Data<="0011"&A; --first number



elsif(Counter<20184600) then --+
E<='0';
elsif(Counter<20184700) then
E<='1';
Data<="00101011";


elsif(Counter<20188700) then --second number
E<='0';
elsif(Counter<20188800) then
E<='1';
Data<="0011"&B; 


elsif(Counter<20192800) then -- =
E<='0';
elsif(Counter<20192900) then
E<='1';
Data<="00111101";




elsif(Counter<20196900) then -- : first summation
E<='0';
elsif(Counter<20197000) then
E<='1';
BCDSUM<=("000"&SUM);
if(SUM>9)then
BCDSUM<="00000110"+("000"&SUM);
end if;
Data<="0011"&BCDSUM(7 downto 4);



elsif(Counter<20201000) then --second summation
E<='0';
elsif(Counter<20201100) then
E<='1';
Data<="0011"&BCDSUM(3 downto 0);
elsif(Counter<20205000) then --second summation
E<='0';
else
Counter<=20176400;
RS<='0';



end if;
end if;
end process;

end Behavioral;