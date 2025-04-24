----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/09/2024 01:30:14 PM
-- Design Name: 
-- Module Name: ASM - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ASM is
    port (
        CLK, Reset, S: in STD_LOGIC;
        Number1, Number2: in STD_LOGIC_VECTOR(3 downto 0);
        Q, R: out STD_LOGIC_VECTOR(3 downto 0)
    );
end ASM;

architecture Behavioral of ASM is
    type state_type is (T0, T1, T2, T3,T4,T5);
    signal current_state, next_state: state_type;
    signal A, B, C: STD_LOGIC_VECTOR(3 downto 0);
begin
    state_register: process(CLK, Reset)
    begin
        if Reset = '1' then
            current_state <= T0;
        elsif rising_edge(CLK) then
            current_state <= next_state;
        end if;
    end process;

    next_state_process: process(S, current_state)
    begin
        case current_state is
            when T0 =>
                    next_state <= T1;
            when T1 =>
                if S = '1' then
                    next_state <= T2;
                else
                    next_state <= T1;
                end if;
            when T2 =>
                    next_state <= T3;
            when T3 =>
                 if A<B then
                    next_state <= T5;
                else
                    next_state <= T4;
                end if;
            when T4 =>
                next_state <= T3;
            when T5 =>
                next_state <= T1;
        end case;
    end process;

    output_process: process(CLK)
    begin
        if rising_edge(CLK) then
            case current_state is
                when T0 =>
                    Q <= "0000";
                    R <= "0000";
                when T1 =>
                    null;  -- No operation during checking
                when T2 =>
                    A <= Number1;
                    B <= Number2;
                    C <= "0000";
                when T3 =>
                    null;
                when T4 =>
                    A<= A-B;
                    C<=C+1;
                when T5 =>
                    Q<=C;
                    R<=A;
            end case;
        end if;
    end process;
end Behavioral;
