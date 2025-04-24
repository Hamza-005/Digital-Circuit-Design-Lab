----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/09/2024 01:35:28 PM
-- Design Name: 
-- Module Name: ASM_tb - Behavioral
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
use IEEE.NUMERIC_STD.ALL;  -- Include NUMERIC_STD for to_unsigned function

entity ASM_tb is
-- This testbench does not have ports.
end ASM_tb;

architecture behavior of ASM_tb is

    -- Component Declaration for the ASM
    component ASM
    port(
        CLK : in STD_LOGIC;
        Reset : in STD_LOGIC;
        S : in STD_LOGIC;
        Number1 : in STD_LOGIC_VECTOR(3 downto 0);
        Number2 : in STD_LOGIC_VECTOR(3 downto 0);
        Q : out STD_LOGIC_VECTOR(3 downto 0);
        R : out STD_LOGIC_VECTOR(3 downto 0)
    );
    end component;

    -- Inputs
    signal CLK : STD_LOGIC := '0';
    signal Reset : STD_LOGIC := '0';
    signal S : STD_LOGIC := '0';
    signal Number1 : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal Number2 : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');

    -- Outputs
    signal Q : STD_LOGIC_VECTOR(3 downto 0);
    signal R : STD_LOGIC_VECTOR(3 downto 0);

    -- Clock period definition
    constant CLK_period : time := 4 ns;

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: ASM port map (
        CLK => CLK,
        Reset => Reset,
        S => S,
        Number1 => Number1,
        Number2 => Number2,
        Q => Q,
        R => R
    );

    CLK_process :process
    begin
        while True loop
            CLK <= '0';
            wait for CLK_period/2;
            CLK <= '1';
            wait for CLK_period/2;
        end loop;
    end process;

    stim_proc: process
    begin
        Reset <= '1';
        wait for 5 * CLK_period;
        Reset <= '0';
        wait for CLK_period;

        for i in 0 to 15 loop
            for j in 1 to 14 loop
                Number1 <= std_logic_vector(to_unsigned(i, 4));
                Number2 <= std_logic_vector(to_unsigned(j, 4));
                S <= '1';  -- Start signal activation
                wait for 2 * CLK_period;
                S <= '0';  -- Start signal deactivation
                wait for 40 * CLK_period;  -- Wait for results
            end loop;
        end loop;
        wait;
    end process;

end behavior;
