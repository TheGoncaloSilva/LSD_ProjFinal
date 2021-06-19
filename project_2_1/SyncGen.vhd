-- Projeto número 9 - Cronometro Digital
-- Gonçalo Silva e Samuel Teixeira

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity SyncGen is
	generic(numberSteps	: positive := 8;
			  out0CompVal	: natural  := 2;
			  out1CompVal	: natural  := 4);
	port(	clkIn			: in  std_logic;
			DisplayClock: out std_logic;
			TimeClock	: out std_logic);
end SyncGen;

architecture Behavioral of SyncGen is

	subtype TCounter is natural range 0 to (numberSteps - 1);

	signal s_counter : TCounter;

begin
	count_proc : process(clkIn)
	begin
		if (rising_edge(clkIn)) then
			if (s_counter >= (numberSteps - 1)) then -- contar até numberofsteps(50 milhões de acordo com a frequência da placa)
				s_counter <= 0;
			else
				s_counter <= s_counter + 1;
			end if;
		end if;
	end process;

	TimeClock <= '1' when ((s_counter rem out0CompVal) = 0) else -- quando for múltiplo de out0CompVal
					 '0';

	DisplayClock <= '1' when ((s_counter rem out1CompVal) = 0) else -- quando for múltiplo de out1CompVal
					 '0';

end Behavioral;

