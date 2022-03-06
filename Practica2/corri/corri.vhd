library ieee;
use ieee.std_logic_1164.all;

entity corri is
port(clk, reset: in std_logic;
	  hex0, hex1, hex2, hex3, hex4: buffer std_logic_vector(7 downto 0);
	  tra1, tra2, tra3, tra4: out std_logic);
end;

architecture a of corri is
signal clkl: std_logic;
signal bcd: std_logic_vector(2 downto 0);

begin
u1: entity work.reloj(arqreloj) port map (clk, clkl);
u2: entity work.contador(arqcontador) port map (clkl, reset, bcd);
u3: entity work.bcd7(arqbcd7) port map ('0'& bcd, hex0);
u4: entity work.display(arqdisp) port map (clkl, hex0, hex1);
u5: entity work.display(arqdisp) port map (clkl, hex1, hex2);
u6: entity work.display(arqdisp) port map (clkl, hex2, hex3);
u7: entity work.display(arqdisp) port map (clkl, hex3, hex4);
end architecture;