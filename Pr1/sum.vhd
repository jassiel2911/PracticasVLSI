-- Suma binaria

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

entity sum is
port(a, b: in std_logic_vector(3 downto 0);
      cin: in std_logic;
		c: out std_logic_vector(3 downto 0);
		cout: out std_logic);
end entity sum;

architecture arqsum of sum is
signal mid: std_logic_vector(4 downto 0);--un bit que a y b
begin

mid<=('0' & a) + ('0' & b) + cin;  --aqui se hace la suma. (amperson sirve para concatenar y aumenta el numero de bits)
c<= mid(3 downto 0);
cout <=mid(4);-- con este truco recupero el cout. la operacion a+b solo sale s no cout

end architecture arqsum;