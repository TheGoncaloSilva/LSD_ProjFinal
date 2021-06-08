-- Projeto número 9 - Cronometro Digital
-- Gonçalo Silva e Samuel Teixeira

library ieee;
use ieee.std_logic_1164.all;

entity Decoder3_8 is
	port(enable : in std_logic;
		  inputs : in std_logic_vector(2 downto 0);
		  outputs : out std_logic_vector(7 downto 0));
end Decoder3_8;

architecture Behavioral of Decoder3_8 is
begin
	process(enable, inputs)
	begin
		if(enable = '0') then 
			outputs <= "00000000";
		else
			if(inputs = "000") then
				outputs <= "00000001";
			elsif(inputs = "001") then
				outputs <= "00000010";
			elsif(inputs = "010") then
				outputs <= "00000100";
			elsif(inputs = "011") then
				outputs <= "00001000";
			elsif(inputs = "100") then
				outputs <= "00010000";
			elsif(inputs = "101") then
				outputs <= "00100000";
			elsif(inputs = "110") then
				outputs <= "01000000";
			else
				outputs <= "10000000";
			end if;
		end if;
	end process;
end Behavioral;