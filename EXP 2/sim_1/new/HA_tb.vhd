----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/25/2024 01:57:23 PM
-- Design Name: 
-- Module Name: HA_tb - Behavioral
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

entity HA_tb is
--  Port ( );
end HA_tb;

architecture Behavioral of HA_tb is
    component HA
    Port( x : in STD_LOGIC;
           y : in STD_LOGIC;
           z : out STD_LOGIC;
           c : out STD_LOGIC);
end component;

signal x: STD_LOGIC :='0';
signal y: STD_LOGIC :='0';
signal z: STD_LOGIC :='0';
signal c: STD_LOGIC :='0';

begin
uut: HA port map(x=>x,y=>y,z=>z,c=>c);
stimulus: process
begin

x<='0';
y<='0';
wait for 10ns;

x<='1';
y<='0';
wait for 10ns;

x<='0';
y<='1';
wait for 10ns;

x<='1';
y<='1';
wait for 10ns;

x<='0';
y<='0';
wait;
end process;
end Behavioral;
