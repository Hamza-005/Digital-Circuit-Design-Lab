----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/23/2024 12:35:14 PM
-- Design Name: 
-- Module Name: dgdgd - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity LCD is
    Port (
        clk : in std_logic;
        E : out std_logic;
        RS : out std_logic;
        RW : out std_logic;
        D : out std_logic_vector(7 downto 0)
    );
end LCD;
architecture Behavioral of LCD is
    signal counter : integer := 0;
    signal E_reg : std_logic := '0';
    signal RS_reg : std_logic := '0';
    signal RW_reg : std_logic := '0';
    signal D_reg : std_logic_vector(7 downto 0) := (others => '0');
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if counter = 10 then
                RS_reg <= '0';
                RW_reg <= '0';
                E_reg <= '0';
            elsif counter = 2000000 then
                E_reg <= '1';
                D_reg <= "00111000"; -- Function Set (8'h38)
            elsif counter = 2000100 then
                E_reg <= '0';
            elsif counter = 2004100 then
                E_reg <= '1';
                D_reg <= "00000110"; -- Entry Mode Set (8'h06)
            elsif counter = 2004200 then
                E_reg <= '0';
            elsif counter = 2008200 then
                E_reg <= '1';
                D_reg <= "00001100"; -- Display ON/OFF (8'h0C)
            elsif counter = 2008300 then
                E_reg <= '0';
            elsif counter = 2012200 then
                E_reg <= '1';
                D_reg <= "00000001"; -- Clear Display (8'h01)
            elsif counter = 2012300 then
                E_reg <= '0';
            elsif counter = 2176300 then
                E_reg <= '1';
                RS_reg <= '0';
                D_reg <= "10000000"; -- Set DDRAM Address to start (8'hC0)
            elsif counter = 2176400 then
                E_reg <= '0';
            elsif counter = 2180400 then
                E_reg <= '1';
                RS_reg <= '1';
                D_reg <= "01100001"; -- 'a'
            elsif counter = 2180500 then
                E_reg <= '0';
            elsif counter = 2184500 then
                E_reg <= '1';
                D_reg <= "01101000"; -- 'h'
            elsif counter = 2184600 then
                E_reg <= '0';
            elsif counter = 2188600 then
                E_reg <= '1';
                D_reg <= "01101101"; -- 'm'
            elsif counter = 2188700 then
                E_reg <= '0';
            elsif counter = 2192700 then
                E_reg <= '1';
                D_reg <= "01100001"; -- 'a'
            elsif counter = 2192800 then
                E_reg <= '0';
            elsif counter = 2196800 then
                E_reg <= '1';
                D_reg <= "01100100"; -- 'd'
            elsif counter = 2196900 then
                E_reg <= '0';
            elsif counter = 2200900 then
                E_reg <= '1';
                D_reg <= "00100000"; -- Space (' ')
            elsif counter = 2201000 then
                E_reg <= '0';
            elsif counter = 2205000 then
                E_reg <= '1';
                D_reg <= "01101000"; -- 'h'
            elsif counter = 2205100 then
                E_reg <= '0';
            elsif counter = 2209100 then
                E_reg <= '1';
                D_reg <= "01100001"; -- 'a'
            elsif counter = 2209200 then
                E_reg <= '0';
            elsif counter = 2213200 then
                E_reg <= '1';
                D_reg <= "01101101"; -- 'm'
            elsif counter = 2213300 then
                E_reg <= '0';
            elsif counter = 2217300 then
                E_reg <= '1';
                D_reg <= "01111010"; -- 'z'
            elsif counter = 2217400 then
                E_reg <= '0';
            elsif counter = 2221400 then
                E_reg <= '1';
                D_reg <= "01100001"; -- 'a'
            elsif counter = 2221500 then
                E_reg <= '0';
            elsif counter = 2225500 then
                E_reg <= '1';
                D_reg <= "00100000"; -- Space (' ')
            elsif counter = 2225600 then
                E_reg <= '0';
            elsif counter = 2229600 then
                E_reg <= '1';
                D_reg <= "00110010"; -- '2'
            elsif counter = 2229700 then
                E_reg <= '0';
            elsif counter = 2233700 then
                E_reg <= '1';
                D_reg <= "00110000"; -- '0'
            elsif counter = 2233800 then
                E_reg <= '0';
            elsif counter = 2237800 then
                E_reg <= '1';
                D_reg <= "00110010"; -- '2'
            elsif counter = 2237900 then
                E_reg <= '0';
            elsif counter = 2241900 then
                E_reg <= '1';
                D_reg <= "00110100"; -- '4'
            elsif counter = 2242000 then
                E_reg <= '0';
            end if;
            
            counter <= counter + 1;
        end if;
    end process;

    E <= E_reg;
    RS <= RS_reg;
    RW <= RW_reg;
    D <= D_reg;

end Behavioral;
