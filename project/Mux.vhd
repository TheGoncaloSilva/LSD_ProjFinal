library ieee;
use ieee.std_logic_1164.all;

entity Mux is
   port(dataIn : in std_logic_vector(7 downto 0);
	     sel    : in std_logic_vector(2 downto 0);
        dataOut: out std_logic;
end Mux;

architecture Behav of Mux is
begin
   process(sel)
	begin 
	   if(sel = "000") then
		   dataOut <= dataIn(0);
		elsif(sel = "001") then
		   dataout <= dataIn(1);
		elsif(sel = "010") then
		   dataout <= dataIn(2);
		elsif(sel = "011") then
		   dataout <= dataIn(3);
		elsif(sel = "100") then
		   dataout <= dataIn(4);
		elsif(sel = "101") then
		   dataout <= dataIn(5);
		elsif(sel = "110") then
		   dataout <= dataIn(6);
		else
		   dataout <= dataIn(7);
		
end Mux;