library ieee;
use ieee.std_logic_1164.all;

use ieee.std_logic_signed.all;

--mux(b_in, sel, b_out)
entity mux is
port(
b_in: in std_logic_vector(2 downto 0);
sel: in std_logic;
b_out: out std_logic_vector(2 downto 0)
);
end;

architecture arq of mux is
--signal mid: std_logic_vector(4 downto 0);--un bit que a y b
begin

with sel select
b_out <= b_in when '0',
			not (b_in) when '1';

end;