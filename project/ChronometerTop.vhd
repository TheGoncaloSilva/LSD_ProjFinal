-- Projeto número 9 - Cronometro Digital
-- Gonçalo Silva e Samuel Teixeira

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ChronometerTop is
	port(	CLOCK_50	: in  std_logic;
			SW  		: in std_logic_vector(17 downto 0);
			KEY 		: in std_logic_vector(3 downto 0);
			HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7 : out std_logic_vector(6 downto 0);
			LEDR		: out std_logic_vector(17 downto 0)); -- saídas apenas para testes necessários no momento
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
	signal s_TC_final : std_logic;

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
	
	-- Fio para que sai do Bin7SegDecoder e é usado no RegisterN
	signal s_sel_reg : std_logic_vector(7 downto 0);
	
	-- Fio proveniente do DisplayCntrl para conectar ao decoder de 3 para 8, de forma a ligar os displays e para ligar ao multiplexador
	signal s_sel_mux : std_logic_vector(2 downto 0);
	
	-- Fio para selecionar o display desejado, valor que vem do decoder
	signal s_display_sel : std_logic_vector(7 downto 0);
	
	-- Fio que sai do componente SyncGen e liga no enable do DisplayCntrl
	signal s_Display_Clock : std_logic;
	
	-- Fio que sai do componente SyncGen e liga no enable do Pcounter4
	signal s_time_Clock : std_logic;
	
	-- Sinais para a FSM que controla o start and stop
	type TState is (stop, start, clear);
	signal s_currentState, s_nextState : TState;
	
	-- Fio da FSM para os counters
	signal s_main_counters : std_logic;

	-- Fio da FSM para o DisplayCntrl
	signal s_main_Display : std_logic;
	
begin

	clkDiv : entity work.ClkDividerN(Behavioral)
		generic map(divFactor => 50000000) -- Piscar a 1hz
		port map(clkIn		=> CLOCK_50,
					clkOut	=> s_seconds);
	
	LEDR(0) <= s_seconds; --> PASSAGEM DOS SEGUNDOS
	
	-- usar o divisor de frequencia apenas para o controlar o display a piscar

	deb1 : entity work.DebounceUnit(Behavioral)
		generic map (inPolarity => '0') -- inverter o valor da key
		port map(refClk	=> CLOCK_50, -- s_clock em alternativa para usar o frequency divider
					dirtyIn	=> KEY(3), -- Key para start and stop
					cleanOut	=> s_start_stop);
	
	deb2 : entity work.DebounceUnit(Behavioral)
		port map(refClk	=> CLOCK_50, -- s_clock em alternativa para usar o frequency divider
					dirtyIn	=> SW(0), -- Switch do reset
					cleanOut	=> s_reset);
					
	SyncGen : entity work.SyncGen(Behavioral)
		generic map(numberSteps	=> 50000000,
						out0CompVal	=> 500000,
						out1CompVal	=> 50000)
		port map(clkIn				=> CLOCK_50,
					DisplayClock	=>	s_Display_Clock,
					TimeClock		=> s_Time_Clock);

	Sync_Start_Stop : process(CLOCK_50)
	begin
		if (rising_edge(CLOCK_50)) then
			if (s_reset = '1') then
				s_currentState <= clear;
			else
				s_currentState <= s_nextState;
			end if;
		end if;
	end process;

	Comb_Start_Stop : process(s_currentState, s_start_stop, s_reset)
	begin
		case (s_currentState) is
			when stop =>
				s_main_counters <= '0';
				s_main_Display <= '0';
				if (s_start_stop = '1') then
					s_nextState <= start;
				else
					s_nextState <= stop;
				end if;
			when clear =>
				s_main_Display <= '1';
				if (s_start_stop = '1') then
					s_nextState <= start;
				else
					s_nextState <= clear;
				end if;		
				
			when start =>
				s_main_counters <= '1';
				s_main_Display <= '1';
				if (s_start_stop = '1') then
					s_nextState <= stop;
				else
					s_nextState <= start;
				end if;
				
			when others => -- caso exista outra condição
				s_nextState <= stop;
				
			end case;
	end process;
	
	counter0 : entity work.PCounter4(Behav)
		generic map (	max => 9,
							min => 0)
		port map(clk 		=> CLOCK_50,
					reset 	=> s_reset,
					mainEn	=>	s_main_counters,
					enable	=> s_Time_Clock, -- Start and stop
					TC			=> s_TC0_1,
					Q			=> s_Q0);
					
					
--	s_TC1_2 <= s_TC1_2 and s_TC0_1;
--	s_TC2_3 <= s_TC2_3 and s_TC1_2;
--	s_TC3_4 <= s_TC3_4 and s_TC2_3;
--	s_TC4_5 <= s_TC4_5 and s_TC3_4;
--	s_TC_final <= s_TC_final and s_TC4_5;
	
	counter1 : entity work.PCounter4(Behav)
		generic map (	max => 9,
							min => 0)
		port map(clk 		=> CLOCK_50,
					reset		=> s_reset,
					mainEn	=>	s_main_counters,
					enable	=> s_TC0_1 and s_time_Clock,
					TC			=> s_TC1_2,
					Q			=> s_Q1);
					
	counter2 : entity work.PCounter4(Behav)
		generic map (	max => 9,
							min => 0)
		port map(clk 		=> CLOCK_50,
					reset		=> s_reset,
					mainEn	=>	s_main_counters,
					enable	=> s_TC1_2 and s_tC0_1 and s_time_Clock,
					TC			=> s_TC2_3,
					Q			=> s_Q2);
					
	counter3 : entity work.PCounter4(Behav)
		generic map (	max => 5,
							min => 0)
		port map(clk 		=> CLOCK_50,
					reset		=> s_reset,
					mainEn	=>	s_main_counters,
					enable	=> s_TC2_3 and s_tC1_2 and s_tC0_1 and s_time_Clock,
					TC			=> s_TC3_4,
					Q			=> s_Q3);
					
	counter4 : entity work.PCounter4(Behav)
		generic map (	max => 9,
							min => 0)
		port map(clk 		=> CLOCK_50,
					reset		=> s_reset,
					mainEn	=>	s_main_counters,
					enable	=> s_TC3_4 and s_tC2_3 and s_tC1_2 and s_tC0_1 and s_time_Clock,
					TC			=> s_TC4_5,
					Q			=> s_Q4);
					
	counter5 : entity work.PCounter4(Behav)
		generic map (	max => 5,
							min => 0)
		port map(clk 		=> CLOCK_50,
					reset		=> s_reset,
					mainEn	=>	s_main_counters,
					enable	=> s_TC4_5 and s_tC3_4 and s_tC2_3 and s_tC1_2 and s_tC0_1 and s_time_Clock,
					TC			=> s_TC_final,
					Q			=> s_Q5);
					
	LEDR(1) <= s_TC0_1;
	LEDR(2) <= s_TC1_2;
	LEDR(3) <= s_TC2_3;
	LEDR(4) <= s_TC3_4;
	LEDR(5) <= s_TC4_5;
	LEDR(6) <= s_TC_final;
	
	Mux : entity work.Mux(Behav)
		port map(dataIn0	=> s_q0,
					dataIn1	=> s_q1,
					dataIn2	=> s_q2,
					dataIn3	=> s_q3,
					dataIn4	=> s_q4,
					dataIn5	=> s_q5,
					dataIn6	=> x"C", -- alterar para modo programação com o texto
					dataIn7	=> x"D", -- alterar para modo programação com o texto
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
					start		=> s_main_Display,
					busy		=> open);					
					
	reg1: entity work.Reg(Behavioral)
		port map(clk		=> CLOCK_50,
					enable	=> s_sel_reg(0),
					reset		=> s_reset,
					dataIn	=> s_dec_regN,
					dataOut	=> Hex0);
					
	reg2: entity work.Reg(Behavioral)
		port map(clk		=> CLOCK_50,
					enable	=> s_sel_reg(1),
					reset		=> s_reset,
					dataIn	=> s_dec_regN,
					dataOut	=> Hex1);
					
	reg3: entity work.Reg(Behavioral)
		port map(clk		=> CLOCK_50,
					enable	=> s_sel_reg(2),
					reset		=> s_reset,
					dataIn	=> s_dec_regN,
					dataOut	=> Hex2);
					
	reg4: entity work.Reg(Behavioral)
		port map(clk		=> CLOCK_50,
					enable	=> s_sel_reg(3),
					reset		=> s_reset,
					dataIn	=> s_dec_regN,
					dataOut	=> Hex3);
					
	reg5: entity work.Reg(Behavioral)
		port map(clk		=> CLOCK_50,
					enable	=> s_sel_reg(4),
					reset		=> s_reset,
					dataIn	=> s_dec_regN,
					dataOut	=> Hex4);
					
	reg6: entity work.Reg(Behavioral)
		port map(clk		=> CLOCK_50,
					enable	=> s_sel_reg(5),
					reset		=> s_reset,
					dataIn	=> s_dec_regN,
					dataOut	=> Hex5);
					
	reg7: entity work.Reg(Behavioral)
		port map(clk		=> CLOCK_50,
					enable	=> s_sel_reg(6),
					reset		=> s_reset,
					dataIn	=> s_dec_regN,
					dataOut	=> Hex6);
					
	reg8: entity work.Reg(Behavioral)
		port map(clk		=> CLOCK_50,
					enable	=> s_sel_reg(7),
					reset		=> s_reset,
					dataIn	=> s_dec_regN,
					dataOut	=> Hex7);

end Behavioral;
