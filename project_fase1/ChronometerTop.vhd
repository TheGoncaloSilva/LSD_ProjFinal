-- Projeto número 9 - Cronometro Digital
-- Gonçalo Silva e Samuel Teixeira

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity ChronometerTop is
	port(	CLOCK_50	: in  std_logic;
			SW  		: in std_logic_vector(17 downto 0);
			KEY 		: in std_logic_vector(3 downto 0);
			HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7 : out std_logic_vector(6 downto 0);
			LEDR		: out std_logic_vector(17 downto 0)); -- Led(0) usado para os segundos e Outros Leds para debugging
end ChronometerTop;

architecture Behavioral of ChronometerTop is
	
	-- Fio para o sinal do clock com os segundos
	signal s_seconds : std_logic;
	
	-- Fio do Debouncer
	signal s_start_stop : std_logic; -- Debouncer start and stop
	signal s_reset  : std_logic; -- Debouncer sinal reset global
	
	-- Fios Para o TC do counter que irá servir como enable para o counter seguinte
	signal s_TC0_1 : std_logic;
	signal s_TC1_2 : std_logic;
	signal s_TC2_3 : std_logic;
	signal s_TC3_4 : std_logic;
	signal s_TC4_5 : std_logic;
	--signal s_TC_final : std_logic; Não é preciso nesta fase

	-- Fios para o valor final do counter
	signal s_Q0 : std_logic_vector(3 downto 0);
	signal s_Q1 : std_logic_vector(3 downto 0);
	signal s_Q2 : std_logic_vector(3 downto 0);
	signal s_Q3 : std_logic_vector(3 downto 0);
	signal s_Q4 : std_logic_vector(3 downto 0);
	signal s_Q5 : std_logic_vector(3 downto 0);
	
	-- Fio de ligação do Multiplexer para o bin7SegDecoder
	signal s_mux_dec: std_logic_vector(3 downto 0);
	
	-- Fio de ligação do bin7SegDecoder aos Registers
	signal s_dec_regN: std_logic_vector(6 downto 0);
	
	-- Fio para que sai do DisplayCntrl e é usado nos Registers
	signal s_sel_reg : std_logic_vector(7 downto 0);
	
	-- Fio proveniente do DisplayCntrl para conectar ao multiplexer e escoher os displays com valores
	signal s_sel_mux : std_logic_vector(3 downto 0);
	
	-- Fio que sai do componente SyncGen e liga no enable do DisplayCntrl
	signal s_Display_Clock : std_logic;
	
	-- Fio que sai do componente SyncGen e liga no enable do Pcounter4
	signal s_time_Clock : std_logic;

	-- Fio da FSM para o DisplayCntrl
	signal s_main_Display : std_logic;
	
	-- Fio que indica valor mínimo do cronómetro(00:00:00)
	signal s_max_value : std_logic;
	
begin

	clkDiv : entity work.ClkDividerN(Behavioral)
		generic map(divFactor => 50000000) -- Piscar a 1hz
		port map(clkIn		=> CLOCK_50,
					clkOut	=> s_seconds);
	
	LEDR(0) <= s_seconds; --> PASSAGEM DOS SEGUNDOS
	
	-- usar o divisor de frequencia apenas para o controlar o display a piscar
	
	deb2 : entity work.DebounceUnit(Behavioral)
		port map(refClk	=> CLOCK_50,
					dirtyIn	=> SW(0), -- Switch do reset
					cleanOut	=> s_reset);
					
	SyncGen : entity work.SyncGen(Behavioral)
		generic map(numberSteps	=> 50000000,
						out0CompVal	=> 500000, -- Frequência dos counter para contar os centésimos de segundo
						out1CompVal	=> 50000) -- Frequência do display (1 khz)
		port map(clkIn				=> CLOCK_50,
					DisplayClock	=>	s_Display_Clock,
					TimeClock		=> s_Time_Clock);

	counter0 : entity work.PCounter4(Behav) -- contadores das unidades das centésimas de segundo
		generic map (	max => 9, -- valor máximo
							min => 0) -- valor mínimo
		port map(clk 		=> CLOCK_50,
					reset 	=> s_reset,
					mainEn	=>	s_max_value, -- Se o valor máximo foi atingido o contador não decrementa
					enable	=> s_Time_Clock, -- O enable do primeiro contador é o clock dos contadores
					TC			=> s_TC0_1, -- Tick que irá abilitar o próximo contador
					Q			=> s_Q0);
					
	counter1 : entity work.PCounter4(Behav) -- contadores das dezenas das centésimas de segundo
		generic map (	max => 9, -- valor máximo
							min => 0) -- valor mínimo
		port map(clk 		=> CLOCK_50,
					reset		=> s_reset,
					mainEn	=>	s_max_value, -- Se o valor máximo foi atingido o contador não decrementa
					enable	=> s_TC0_1, -- O enable do contador é o Tick do contador anterior
					TC			=> s_TC1_2, -- Tick que irá abilitar o próximo contador
					Q			=> s_Q1);
					
	counter2 : entity work.PCounter4(Behav) -- contadores das unidades dos segundos
		generic map (	max => 9, -- valor máximo
							min => 0) -- valor mínimo
		port map(clk 		=> CLOCK_50,
					reset		=> s_reset,
					mainEn	=>	s_max_value, -- Se o valor máximo foi atingido o contador não decrementa
					enable	=> s_TC1_2, -- O enable do contador é o Tick do contador anterior
					TC			=> s_TC2_3, -- Tick que irá abilitar o próximo contador
					Q			=> s_Q2);
					
	counter3 : entity work.PCounter4(Behav) -- contadores das dezenas dos segundos
		generic map (	max => 5, -- valor máximo
							min => 0) -- valor mínimo
		port map(clk 		=> CLOCK_50,
					reset		=> s_reset,
					mainEn	=>	s_max_value, -- Se o valor máximo foi atingido o contador não decrementa
					enable	=> s_TC2_3, -- O enable do contador é o Tick do contador anterior
					TC			=> s_TC3_4, -- Tick que irá abilitar o próximo contador
					Q			=> s_Q3);
					
	counter4 : entity work.PCounter4(Behav) -- contadores das unidades dos minutos
		generic map (	max => 9, -- 9 -- valor máximo
							min => 1) -- 0 -- valor mínimo
		port map(clk 		=> CLOCK_50,
					reset		=> s_reset,
					mainEn	=>	s_max_value, -- Se o valor máximo foi atingido o contador não decrementa
					enable	=> s_TC3_4, -- O enable do contador é o Tick do contador anterior
					TC			=> s_TC4_5, -- Tick que irá abilitar o próximo contador
					Q			=> s_Q4);
					
	counter5 : entity work.PCounter4(Behav) -- contadores das dezenas dos minutos
		generic map (	max => 5, -- valor máximo
							min => 0) -- valor mínimo
		port map(clk 		=> CLOCK_50,
					reset		=> s_reset,
					mainEn	=>	s_max_value, -- Se o valor máximo foi atingido o contador não decrementa
					enable	=> s_TC4_5, -- O enable do contador é o Tick do contador anterior
					TC			=> open, -- s_TC_final, -- Tick final do último contador
					Q			=> s_Q5);
	
	process(S_Q0, S_Q1, S_Q2, S_Q3, S_Q4, S_Q5)
		begin
			if(S_Q0 = "0000" and S_Q1 = "0000" and S_Q2 = "0000" and S_Q3= "0000" and
              S_Q4 = "0000" and S_Q5 = "0000") then -- Verificar se o valor máximo foi atingido
				s_max_value <= '0';
			else
            s_max_value <= '1';
			end if;
	end process;
					
-- DEBUG DOS TICKS QUE IRÃO ATIVAR OS CONTADORES SEGUINTES
--	LEDR(1) <= s_TC0_1;
--	LEDR(2) <= s_TC1_2;
--	LEDR(3) <= s_TC2_3;
--	LEDR(4) <= s_TC3_4;
--	LEDR(5) <= s_TC4_5;
--	LEDR(6) <= s_TC_final;
	
	Mux : entity work.Mux(Behav)
		port map(dataIn0	=> s_q0,
					dataIn1	=> s_q1,
					dataIn2	=> s_q2,
					dataIn3	=> s_q3,
					dataIn4	=> s_q4,
					dataIn5	=> s_q5,
					dataIn6	=> x"F", -- alterar para modo programação com o texto
					dataIn7	=> x"E", -- alterar para modo programação com o texto
					sel	=> s_sel_mux,
					dataOut	=> s_mux_dec);
	
	segDecoder : entity work.Bin7SegDecoder(Behavioral)
		port map(binInput => s_mux_dec,
					decOut_n => s_dec_regN);
	
	DisplayCntrl : entity work.DisplayCntrl(Behavioral)
		port map(clk		=> CLOCK_50,
					res		=> s_reset,
					sel		=> s_sel_mux,
					regSel	=> s_sel_reg,
					en			=> s_display_Clock,
					start		=> '1', --s_main_Display,
					busy		=> open);					
					
	reg1: entity work.Reg(Behavioral)
		port map(clk		=> CLOCK_50,
					enable	=> s_sel_reg(0), -- Selecionar este display: "10000000"
					reset		=> s_reset,
					dataIn	=> s_dec_regN,
					dataOut	=> Hex0);
					
	reg2: entity work.Reg(Behavioral)
		port map(clk		=> CLOCK_50,
					enable	=> s_sel_reg(1), -- Selecionar este display: "01000000"
					reset		=> s_reset,
					dataIn	=> s_dec_regN,
					dataOut	=> Hex1);
					
	reg3: entity work.Reg(Behavioral)
		port map(clk		=> CLOCK_50,
					enable	=> s_sel_reg(2), -- Selecionar este display: "00100000"
					reset		=> s_reset,
					dataIn	=> s_dec_regN,
					dataOut	=> Hex2);
					
	reg4: entity work.Reg(Behavioral)
		port map(clk		=> CLOCK_50,
					enable	=> s_sel_reg(3), -- Selecionar este display: "00010000"
					reset		=> s_reset,
					dataIn	=> s_dec_regN,
					dataOut	=> Hex3);
					
	reg5: entity work.Reg(Behavioral)
		port map(clk		=> CLOCK_50,
					enable	=> s_sel_reg(4), -- Selecionar este display: "00001000"
					reset		=> s_reset,
					dataIn	=> s_dec_regN,
					dataOut	=> Hex4);
					
	reg6: entity work.Reg(Behavioral)
		port map(clk		=> CLOCK_50,
					enable	=> s_sel_reg(5), -- Selecionar este display: "00000100"
					reset		=> s_reset,
					dataIn	=> s_dec_regN,
					dataOut	=> Hex5);
					
	reg7: entity work.Reg(Behavioral)
		port map(clk		=> CLOCK_50,
					enable	=> s_sel_reg(6), -- Selecionar este display: "00000010"
					reset		=> s_reset,
					dataIn	=> s_dec_regN,
					dataOut	=> Hex6);
					
	reg8: entity work.Reg(Behavioral)
		port map(clk		=> CLOCK_50,
					enable	=> s_sel_reg(7), -- Selecionar este display: "00000001"
					reset		=> s_reset,
					dataIn	=> s_dec_regN,
					dataOut	=> Hex7);

end Behavioral;
