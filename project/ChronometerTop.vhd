-- Projeto número 9 - Cronometro Digital
-- Gonçalo Silva e Samuel Teixeira

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ChronometerTop is
	port(	CLOCK_50	: in  std_logic;
			SW  		: in std_logic_vector(17 downto 0);
			KEY 		: in std_logic_vector(3 downto 0);
			HEX0, HEX1, HEX2, HEX3, HEX4, HEX3, HEX4, HEX5, HEX6, HEX7 : out std_logic_vector(6 downto 0);
			LEDR		: out std_logic_vector(17 downto 0)); -- saídas apenas para testes necessários no momento
end ChronometerTop;

architecture Behavioral of ChronometerTop is
	
	-- Fio para o sinal do clock
	signal s_clock : std_logic;
	
	-- Fio do Debouncer
	signal s_cleanOut_KEY : std_logic -- Debouncer KEY
	signal s_cleanOut_SW  : std_logic -- Debouncer SW

begin

	process(CLOCK_50)
	begin
		if (rising_edge(CLOCK_50)) then
			s_key <= not KEY;
			s_sw <= SW;
		end if;
	end process;
	
	-- usar o divisor de frequencia apenas para o controlar o display a piscar

	deb1 : entity work.Debouncer(Behavioral)
		port map(clk		=> CLOCK_50, -- s_clock em alternativa para usar o frequency divider
					dirty_In	=> KEY(?????),
					cleanOut	=> s_cleanOut_KEY);
	
	deb2 : entity work.Debouncer(Behavioral)
		port map(clk		=> CLOCK_50, -- s_clock em alternativa para usar o frequency divider
					dirty_In	=> SW(?????),
					cleanOut	=> s_cleanOut_SW);

end Behavioral;
