library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity ALU is
port(
a,b: in std_logic_vector(2 downto 0);--000 001 010 011  100 101 110 111
s: in std_logic_vector(1 downto 0);--s0   s1
s2: in std_logic;
cin: in std_logic;
F: out std_logic_vector(2 downto 0); --000 001 010 011  100 101 110 111
cout:out std_logic;
tra: out std_logic;
HEX: out std_logic_vector(7 downto 0)
);
end;

architecture arqALU of ALU is

signal cableUAMUX0:std_logic_vector(2 downto 0);
signal cableULMUX1:std_logic_vector(2 downto 0);
signal cableD: std_logic_vector(2 downto 0);
signal dbc: std_logic_vector(3 downto 0);
begin
u1: entity work.UA(arqUA) port map (a,b,s, cin,cableUAMUX0,cout);
u2: entity work.UL(arqUL) port map (a,b,s,cableULMUX1);
U3: entity work.MUX2x1(arqMUX2x1) port map (cableUAMUX0, cableULMUX1, s2,F, cableD);

dbc <= ('0' & cableD);

u4: entity work.bcd7(arq) port map (dbc,HEX);

end;

--UA a,b,s,cin, salsum,cout
--unidadUL=> a(3),b(3),s(2),F(3)


--mux --port ua,ul, sel, salmux2x1(3)