----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/16/2024 12:36:42 PM
-- Design Name: 
-- Module Name: Binary_To_SevenSeg - Behavioral
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

entity Binary_To_SevenSeg is 
port ( Data: in STD_LOGIC_VECTOR(3 downto 0);
AA: out STD_LOGIC;
AB: out STD_LOGIC;
AC: out STD_LOGIC;
AD: out STD_LOGIC;
AE: out STD_LOGIC;
AF: out STD_LOGIC;
AG: out STD_LOGIC);
end Binary_To_SevenSeg;

architecture Behavioral of Binary_To_SevenSeg is
begin
    process(Data)
    begin
        case Data is
            when"0000"=>
                AA<='1';
                AB<='1';
                AC<='1';
                AD<='1';
                AE<='1';
                AF<='1';
                AG<='0';
            when"0001"=>
                AA<='0';
                AB<='1';
                AC<='1';
                AD<='0';
                AE<='0';
                AF<='0';
                AG<='0';
            when"0010"=>
                AA<='1';
                AB<='1';
                AC<='0';
                AD<='1';
                AE<='1';
                AF<='0';
                AG<='1';
            when"0011"=>
                AA<='1';
                AB<='1';
                AC<='1';
                AD<='1';
                AE<='0';
                AF<='0';
                AG<='1';
            when"0100"=>
                AA<='0';
                AB<='1';
                AC<='1';
                AD<='0';
                AE<='0';
                AF<='1';
                AG<='1';
            when"0101"=>
                AA<='1';
                AB<='0';
                AC<='1';
                AD<='1';
                AE<='0';
                AF<='1';
                AG<='1';
            when"0110"=>
                AA<='1';
                AB<='0';
                AC<='1';
                AD<='1';
                AE<='1';
                AF<='1';
                AG<='1';
            when"0111"=>
                AA<='1';
                AB<='1';
                AC<='1';
                AD<='0';
                AE<='0';
                AF<='0';
                AG<='0';
            when"1000"=>
                AA<='1';
                AB<='1';
                AC<='1';
                AD<='1';
                AE<='1';
                AF<='1';
                AG<='1';
            when"1001"=>
                AA<='1';
                AB<='1';
                AC<='1';
                AD<='1';
                AE<='0';
                AF<='1';
                AG<='1';
            when others=>
                AA<='0';
                AB<='0';
                AC<='0';
                AD<='0';
                AE<='0';
                AF<='0';
                AG<='0';
        end case;
    end process;
end Behavioral;
