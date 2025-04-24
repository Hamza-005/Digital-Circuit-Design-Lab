----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/25/2024 03:17:28 PM
-- Design Name: 
-- Module Name: FourBitAdder - Behavioral
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
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

--entity FourBitAdder is
--    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
--           B : in STD_LOGIC_VECTOR (3 downto 0);
--           S : out STD_LOGIC_VECTOR (3 downto 0);
--           Cout : out STD_LOGIC);
--end FourBitAdder;

--architecture Behavioral of FourBitAdder is
--signal C0,C1,C2:STD_LOGIC;
--component FA is
--    Port ( a : in STD_LOGIC;
--           b : in STD_LOGIC;
--           c_in : in STD_LOGIC;
--           sum : out STD_LOGIC;
--           c_out : out STD_LOGIC);
--end component;

--begin
--FA1:FA Port map(A(0),B(0),'0',S(0),C0);
--FA2:FA Port map(A(1),B(1),C0,S(1),C1);
--FA3:FA Port map(A(2),B(2),C1,S(2),C2);
--FA4:FA Port map(A(3),B(3),C2,S(3),Cout);
--end Behavioral;

entity FourBitAdder is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           S : out STD_LOGIC_VECTOR (3 downto 0);
           Cout : out STD_LOGIC);
end FourBitAdder;

architecture Behavioral of FourBitAdder is
begin
  process(A, B)
    variable temp_sum: STD_LOGIC_VECTOR (4 downto 0);
  begin
   temp_sum:=('0'&A)+('0'&B);
   S<=temp_sum(3 downto 0);
   Cout <= temp_sum(4);
  end process;
end Behavioral;
