library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity LCD is
    Port ( clk : in STD_LOGIC;
           X : in STD_LOGIC_VECTOR(3 downto 0);
           Y : in STD_LOGIC_VECTOR(3 downto 0);
           D : out STD_LOGIC_VECTOR(7 downto 0);
           E : out STD_LOGIC;
           RS : out STD_LOGIC;
           RW : out STD_LOGIC);
end LCD;

architecture Behavioral of LCD is
    signal S : STD_LOGIC_VECTOR(4 downto 0);
    signal f : STD_LOGIC := '0';
    signal xt, yt : STD_LOGIC_VECTOR(3 downto 0);
    signal counter : integer := 0;
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if counter = 10 then
                RS <= '0';
                RW <= '0';
                E <= '0';
            elsif counter = 2000000 then
                E <= '1';
                D <= x"38";
            elsif counter = 2000100 then
                E <= '0';
            elsif counter = 2004100 then
                E <= '1';
                D <= x"06";
            elsif counter = 2004200 then
                E <= '0';
            elsif counter = 2008200 then
                E <= '1';
                D <= x"0C";
            elsif counter = 2008300 then
                E <= '0';
            elsif counter = 2012200 then
                E <= '1';
                D <= x"01";
            elsif counter = 2012300 then
                E <= '0';
            elsif counter = 2176300 then
                E <= '1';
                RS <= '0';
                D <= x"80";
            elsif counter = 2176400 then
                E <= '0';
            elsif counter = 2180400 then
                E <= '1';
                RS <= '1';
                D <= "0011" & X; -- A digit
            elsif counter = 2180500 then
                E <= '0';
            elsif counter = 2184500 then
                E <= '1';
                D <= "00101011"; -- plus sign
            elsif counter = 2184600 then
                E <= '0';
            elsif counter = 2188600 then
                E <= '1';
                D <= "0011" & Y; -- B digit
            elsif counter = 2188700 then
                E <= '0';
            elsif counter = 2192700 then
                E <= '1';
                D <= "00111101"; -- display equal
            elsif counter = 2192800 then
                E <= '0';
            elsif counter = 2196800 then
                E <= '1';
                S <= ('0' & X) + ('0' & Y);
                if S <= "1001" then
                    D <= "00110000"; -- display zero
                else
                    D <= "00110001"; -- display one
                end if;
            elsif counter = 2196900 then
                E <= '0';
            elsif counter = 2200900 then
                E <= '1';
                if S <= "1001" then -- to display second digit from sum
                    D <= "00110000" + ("000" & S);
                else
                    S <= S - "01010";
                    D <= "00110001" + ("000" & S);
                end if;
            elsif counter = 2201000 then
                counter <= 2180400;
                E <= '0';
            end if;
            counter <= counter + 1;
        end if;
    end process;
end Behavioral;
