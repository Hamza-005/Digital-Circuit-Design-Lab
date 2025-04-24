----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/09/2024 03:02:11 PM
-- Design Name: 
-- Module Name: Time_Mux - Behavioral
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

entity Time_Mux is
Port( CLK : in STD_LOGIC;
Digit0: in STD_LOGIC_VECTOR(3 downto 0);
Digit1: in STD_LOGIC_VECTOR(3 downto 0);
Data: out STD_LOGIC_VECTOR(3 downto 0);
DigSelect: out STD_LOGIC);
end Time_Mux;

architecture Behavioral of Time_Mux is
signal counter:integer range 0 to 999999:=0;
signal DigSelect_internal: STD_LOGIC:='0';

begin
  process(CLK)
   begin
    if rising_edge(CLK) then
        if counter = 999999 then
            counter<=0;
            DigSelect_internal<= not DigSelect_internal;
        else
            counter<= counter+1;
        end if;
        
        if(DigSelect_internal ='0')then
        Data<=Digit0;
        else
        Data<=Digit1;
        end if;
    end if;
end process;
 DigSelect <=Digselect_internal;
end Behavioral;
