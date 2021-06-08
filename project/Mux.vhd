-- Projeto número 9 - Cronometro Digital
-- Gonçalo Silva e Samuel Teixeira

library ieee;
use ieee.std_logic_1164.all;

entity Mux is
   port(dataIn0, dataIn1, dataIn2, dataIn3, dataIn4, dataIn5, dataIn6, dataIn7 	: in std_logic_vector(3 downto 0);
	     sel    : in std_logic_vector(2 downto 0);
        dataOut: out std_logic_vector(3 downto 0));
end Mux;

architecture Behav of Mux is
begin
   process(sel, dataIn0, dataIn1, dataIn2, dataIn3, dataIn4, dataIn5, dataIn6, dataIn7)
	begin 
	   if(sel = "000") then
		   dataOut <= dataIn0;
		elsif(sel = "001") then
		   dataOut <= dataIn1;
		elsif(sel = "010") then
		   dataOut <= dataIn2;
		elsif(sel = "011") then
		   dataOut <= dataIn3;
		elsif(sel = "100") then
		   dataOut <= dataIn4;
		elsif(sel = "101") then
		   dataOut <= dataIn5;
		elsif(sel = "110") then
		   dataOut <= dataIn6;
		else
		   dataOut <= dataIn7;
		end if;
	end process;
end Behav;