----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/09/2024 02:37:29 PM
-- Design Name: 
-- Module Name: debouncer - Behavioral
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

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity debouncer is
    Port (
        CLK : in STD_LOGIC;
        PB : in STD_LOGIC;
        PB_debounced : out STD_LOGIC
    );
end entity debouncer;

architecture Behavioral of debouncer is
    signal on_chang : STD_LOGIC := '0';
    signal old_pb : STD_LOGIC;
    signal count : INTEGER := 0;
begin
    PB_debounced <= old_pb;

    process (CLK)
    begin
        if rising_edge(CLK) then
            if on_chang = '0' then
                if PB /= old_pb then
                    on_chang <= '1';
                    old_pb <= not old_pb;
                end if;
            else
                if count = 1000000 then
                    on_chang <= '0';
                    count <= 0;
                else
                    count <= count + 1;
                end if;
            end if;
        end if;
    end process;

end architecture Behavioral;
