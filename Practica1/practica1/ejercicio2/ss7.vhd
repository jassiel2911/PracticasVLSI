library ieee;
use ieee.std_logic_1164.all;

entity ss7 is
port(a : in integer;
	  b: out std_logic_vector(7 downto 0);
	  tra: out std_logic);
end entity;

architecture arqss7 of ss7 is
begin
	with a select
	b <=	"01000000" when 0,
			"01111001" when 1,
			"00100100" when 2,
			"00110000" when 3,
			"00011001" when 4,
			"00010010" when 5,
			"00000010" when 6,
			"01111000" when 7,
			"00000000" when 8,
			"00011000" when 9,
			"11111111" when others;
end architecture;