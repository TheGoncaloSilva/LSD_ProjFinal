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
	signal s_start_stop : std_logic; -- Debouncer start and stop
	signal s_reset  : std_logic; -- Debouncer sinal reset global
	
	-- Fio Para o TC do counter que irá servir como enable para o counter seguinte
	signal s_TC : std_logic;
	
	-- Fio para o valor final do counter
	signal s_Q : std_logic_vector(3 downto 0);
	
	-- Fio de ligação do Multiplexer para o bin7SegDecoder
	signal s_mux_dec: std_logic_vector(3 downto 0);
	
	-- Fio para que sai do Bin7SegDecoder e é usado no RegisterN
	signal s_dec_regN : std_logic_vector(7 downto 0);
	
	-- Fio proveniente do DisplayCntrl para conectar ao decoder de 3 para 8, de forma a ligar os displays e para ligar ao multiplexador
	signal s_sel_mux : std_logic_vector(2 downto 0);
	
	-- Fio para selecionar o display desejado, valor que vem do decoder
	signal s_display_sel : std_logic_vector(7 downto 0);
	

begin
	
	-- LEDR(0) --> PASSAGEM DOS SEGUNDOS
	
	-- usar o divisor de frequencia apenas para o controlar o display a piscar

	deb1 : entity work.DebounceUnit(Behavioral)
		generic map (inPolarity => 0) -- inverter o valor da key
		port map(clk		=> CLOCK_50, -- s_clock em alternativa para usar o frequency divider
					dirty_In	=> KEY(3), -- Key para start and stop
					cleanOut	=> s_start_stop);
	
	deb2 : entity work.DebounceUnit(Behavioral)
		generic map (inPolarity => 0)
		port map(clk		=> CLOCK_50, -- s_clock em alternativa para usar o frequency divider
					dirty_In	=> SW(0), -- Switch do reset
					cleanOut	=> s_reset);
	
	counter1 : entity work.PCounter4(v1)
		port map(clk 	=> CLOCK_50,
					Res 	=> s_reset,
					En		=> '1',
					TC		=> s_TC,
					Q		=> s_Q);
	
	counter2 : entity work.PCounter4(v1)
		port map(clk 	=> CLOCK_50,
					Res 	=> s_reset,
					En		=> s_TC,
					TC		=> s_TC,
					Q		=> s_Q);
					
	counter3 : entity work.PCounter4(v1)
		port map(clk 	=> CLOCK_50,
					Res 	=> s_reset,
					En		=> s_TC,
					TC		=> s_TC,
					Q		=> s_Q);
					
	counter4 : entity work.PCounter4(v1)
		port map(clk 	=> CLOCK_50,
					Res 	=> s_reset,
					En		=> s_TC,
					TC		=> s_TC,
					Q		=> s_Q);
					
	counter5 : entity work.PCounter4(v1)
		port map(clk 	=> CLOCK_50,
					Res 	=> s_reset,
					En		=> s_TC,
					TC		=> s_TC,
					Q		=> s_Q);
					
	counter6 : entity work.PCounter4(v1)
		port map(clk 	=> CLOCK_50,
					Res 	=> s_reset,
					En		=> s_TC,
					TC		=> s_TC,
					Q		=> s_Q);
					
	
	Mux : entity work.Multiplexer(Behavioral)
		port map(clk	=> CLOCK_50,
					Din1	=> ,
					Din2	=> ,
					Din3	=> ,
					Din4	=> ,
					Din5	=> ,
					Din6	=> ,
					sel	=> s_sel_mux(3 downto 1),
					dataOut	=> s_mux_dec,
					Dink	=> open);
	
	segDecoder : entity work.Bin7SegDecoder(Behavioral)
		port map(binInput => s_mux_dec;
					decOut_n => s_dec_regN);
	
	DisplayCntrl : entity work.DisplayCntrl(Behavioral)
		port map(clk	=> CLOCK_50,
					res	=> s_reset,
					sel	=> s_sel_mux,
					en		=> '1',
					start	=> open,
					busy	=> open);
					
	Dec3_8 : entity work.Decoder3_8(Behavioral)
		port(	enable 	=> s_sel_mux(0);
				inputs 	=> s_sel_mux(3 downto 1);
				outputs 	=> s_display_sel);
					
					
	reg1: entity work.RegisterN(Behavioral)
		--generic (N : positive := 8);
		generic map (size => 8)
		port map(clk		=> CLOCK_50,
					enable	=> s_display_sel(0),
					reset		=> s_reset,
					dataIn	=> s_dec_regN,
					dataOut	=> Hex0);
					
	reg2: entity work.RegisterN(Behavioral)
		generic map (size => 8)
		port map(clk		=> CLOCK_50,
					enable	=> s_display_sel(1),
					reset		=> s_reset,
					dataIn	=> s_dec_regN,
					dataOut	=> Hex1);
					
	reg3: entity work.RegisterN(Behavioral)
		generic map (size => 8)
		port map(clk		=> CLOCK_50,
					enable	=> s_display_sel(2),
					reset		=> s_reset,
					dataIn	=> s_dec_regN,
					dataOut	=> Hex2);
					
	reg4: entity work.RegisterN(Behavioral)
		generic map (size => 8)
		port map(clk		=> CLOCK_50,
					enable	=> s_display_sel(3),
					reset		=> s_reset,
					dataIn	=> s_dec_regN,
					dataOut	=> Hex3);
					
	reg5: entity work.RegisterN(Behavioral)
		generic map (size => 8)
		port map(clk		=> CLOCK_50,
					enable	=> s_display_sel(4),
					reset		=> s_reset,
					dataIn	=> s_dec_regN,
					dataOut	=> Hex4);
					
	reg6: entity work.RegisterN(Behavioral)
		generic map (size => 8)
		port map(clk		=> CLOCK_50,
					enable	=> s_display_sel(5),
					reset		=> s_reset,
					dataIn	=> s_dec_regN,
					dataOut	=> Hex5);
					
	reg7: entity work.RegisterN(Behavioral)
		generic map (size => 8)
		port map(clk		=> CLOCK_50,
					enable	=> s_display_sel(6),
					reset		=> s_reset,
					dataIn	=> s_dec_regN,
					dataOut	=> Hex6);
					
	reg8: entity work.RegisterN(Behavioral)
		generic map (size => 8)
		port map(clk		=> CLOCK_50,
					enable	=> s_display_sel(7),
					reset		=> s_reset,
					dataIn	=> s_dec_regN,
					dataOut	=> Hex7);

end Behavioral;
