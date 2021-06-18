-- Projeto número 9 - Cronometro Digital
-- Gonçalo Silva e Samuel Teixeira

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Reg is
	port(clk			: in  std_logic;
		  enable		: in  std_logic;
		  reset		: in  std_logic;
		  dataIn		: in  std_logic_vector(6 downto 0);
		  dataOut	: out std_logic_vector(6 downto 0));
end Reg;

architecture Behavioral of Reg is
begin
	reg_proc : process(clk)
	begin
		if (rising_edge(clk)) then
			if (enable = '1') then
				if (reset = '1') then
					dataOut <= (others => '0');
				else
					dataOut <= dataIn;
				end if;
			end if;
		end if;
	end process;
end Behavioral;
