-- Projeto número 9 - Cronometro Digital
-- Gonçalo Silva e Samuel Teixeira

library ieee;
use ieee.std_logic_1164.all;

entity Mux is
   port(dataIn0, dataIn1, dataIn2, dataIn3, dataIn4, dataIn5, dataIn6, dataIn7 	: in std_logic_vector(3 downto 0);
	     sel    : in std_logic_vector(3 downto 0);
        dataOut: out std_logic_vector(3 downto 0));
end Mux;

architecture Behav of Mux is
begin
   process(sel, dataIn0, dataIn1, dataIn2, dataIn3, dataIn4, dataIn5, dataIn6, dataIn7)
	begin 
	   if(sel = "0001") then
		   dataOut <= dataIn0;
		elsif(sel = "0010") then
		   dataOut <= dataIn1;
		elsif(sel = "0011") then
		   dataOut <= dataIn2;
		elsif(sel = "0100") then
		   dataOut <= dataIn3;
		elsif(sel = "0101") then
		   dataOut <= dataIn4;
		elsif(sel = "0110") then
		   dataOut <= dataIn5;
		elsif(sel = "0111") then
		   dataOut <= dataIn6;
		elsif(sel = "1000") then
		   dataOut <= dataIn7;
		else
			dataOut <= "0000";
		end if;
	end process;
end Behav;