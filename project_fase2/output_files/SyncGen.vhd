library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity SyncGen is
	generic(numberSteps	: positive := 8;
			  out0CompVal	: natural  := 2;
			  out1CompVal	: natural  := 4;
			  out2CompVal	: natural  := 4);
	port(	clkIn			: in  std_logic;
			DisplayClock: out std_logic;
			TimeClock	: out std_logic;
			ProgClock	: out std_logic);
end SyncGen;

architecture Behavioral of SyncGen is

	subtype TCounter is natural range 0 to (numberSteps - 1);

	signal s_counter : TCounter;

begin
	count_proc : process(clkIn)
	begin
		if (rising_edge(clkIn)) then
			if (s_counter >= (numberSteps - 1)) then
				s_counter <= 0;
			else
				s_counter <= s_counter + 1;
			end if;
		end if;
	end process;

	TimeClock <= '1' when ((s_counter rem out0CompVal) = 0) else
					 '0';

	DisplayClock <= '1' when ((s_counter rem out1CompVal) = 0) else
					 '0';
	
	ProgClock <= '1' when ((s_counter rem out2CompVal) = 0) else
					 '0';

end Behavioral;

