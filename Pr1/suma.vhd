library ieee;
use ieee.std_logic_1164.all;


entity suma is
port(
a,b: in std_logic_vector(3 downto 0);
sel: in std_logic;
 cin: in std_logic;
sal: out std_logic_vector(3 downto 0); 
cout:out std_logic );
end;

architecture arq of suma is
signal cable:std_logic_vector(3 downto 0);
begin
 ------sum(a, b, cin,c,cout)                     
u1: entity work.sum(arqsum) port map (a,cable,cin,sal,cout);

--mux(b_in, sel, b_out)
u2: entity work.mux(arq) port map (b, sel,cable);

end;