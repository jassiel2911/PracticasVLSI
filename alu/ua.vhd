library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
--UA a,b,s,cin, salsum,cout
entity UA is
port(
a,b: in std_logic_vector(2 downto 0);--000 001 010 011  100 101 110 111
s: in std_logic_vector(1 downto 0);--s0   s1
 cin: in std_logic;
salsum: out std_logic_vector(2 downto 0); --000 001 010 011  100 101 110 111
cout:out std_logic );
end entity UA;

architecture arqUA of UA is
signal cablemux4B:std_logic_vector(2 downto 0);
begin
u1: entity work.mux4x1(arqmux4x1) port map (s,b,cablemux4B);
u2: entity work.sum(arqsum) port map (a,cablemux4B,cin,salsum,cout);

end architecture arqUA;


--mix4=>s(2),b(3),salmux4x1(3)= cable
--sum=> a(3),b(3),cin,salsum(3), cout