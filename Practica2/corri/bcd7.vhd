library ieee;
use ieee.std_logic_1164.all;
entity bcd7 is
port(
bcd: in std_logic_vector(3 downto 0);
HEX: out std_logic_vector(7 downto 0);
tra: out std_logic --activar transistor de los leds
);
end;
architecture arqbcd7 of bcd7 is
begin
with bcd select
HEX<= 
"01000000" when "0000", --0
"01111001" when "0001", --1
"00100100" when "0010", --2
"00110000" when "0011", --3
"00011001" when "0100", --4
"00010010" when "0101", --5
"00000010" when "0110", --6
"01111000" when "0111", --7
"00000000" when "1000", --8
"00011000" when "1001", --9
"11111111" when others;
end;