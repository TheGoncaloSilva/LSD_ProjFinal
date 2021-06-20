-- Projeto número 9 - Cronometro Digital
-- Gonçalo Silva e Samuel Teixeira

library IEEE;
use IEEE.std_logic_1164.all;

-- Entidade sem portos
entity ChronometerTop_Tb is
end ChronometerTop_Tb;

architecture Stimulus of ChronometerTop_Tb is

	-- Sinais para ligar às entradas da UUT
	signal s_clock_50 : std_logic;
	signal s_sw : std_logic_vector(17 downto 0);
	signal s_key : std_logic_vector(3 downto 0);
	
	-- Sinais para ligar às saídas da UUT
	signal s_hex0, s_hex1, s_hex2, s_hex3, s_hex4, s_hex5, s_hex6, s_hex7 : std_logic_vector(6 downto 0);
	signal s_ledr : std_logic_vector(17 downto 0);
	
begin 
	-- Instanciação da Unit Under Test (UUT)
	uut : entity work.ChronometerTop(Behavioral)
		port map(CLOCK_50	=> s_clock_50,
					SW		=> s_sw,
					KEY	=> s_key,
					HEX0	=> s_hex0,
					HEX1	=> s_hex1,
					HEX2	=> s_hex2,
					HEX3	=> s_hex3,
					HEX4	=> s_hex4,
					HEX5	=> s_hex5,
					HEX6	=> s_hex6,
					HEX7	=> s_hex7,
					LEDR	=> s_ledr);
					
	-- Process Stim
	stim_proc : process
	begin
		wait for 100 ns;
		s_sw(0) <= '1';
		wait for 50 ns;
		s_sw(0) <= '0';
		wait for 5 sec;
	
	end process;	
end Stimulus;