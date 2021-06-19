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
	
	-- Fios do Debouncer
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
	
	-- Fio para que sai do DisplayCntrl e é usado nos Registers
	signal s_sel_reg : std_logic_vector(7 downto 0);
	
	-- Fio proveniente do DisplayCntrl para conectar ao multiplexer e escoher os displays com valores
	signal s_sel_mux : std_logic_vector(3 downto 0);
	
	-- Fio que sai do componente SyncGen e liga no enable do DisplayCntrl
	signal s_Display_Clock : std_logic;
	
	-- Fio que sai do componente SyncGen e liga no enable do Pcounter4
	signal s_time_Clock : std_logic;
	
	-- Sinais para a FSM que controla o start and stop
	type TState is (stop, start, clearStop, clearStart);
	signal s_currentState, s_nextState : TState;

	-- Sinais para a FSM que controla o mode
	type TState_m is (growing, decreasing);
	signal s_currentState_m, s_nextState_m : TState_m;
	
	-- Fio que liga da FSM que controla o mode
	signal s_mode_final : std_logic;
	
	-- Fio da FSM para os counters
	signal s_main_counters : std_logic;

	-- Fio da FSM para o DisplayCntrl
	signal s_main_Display : std_logic;
	
	-- Fio que liga do Debouncer 3 aos Counters para indicar o modo de contagem 
	signal s_mode : std_logic;
	
	-- Fio que valor máximo ou mínimo do cronómetro(00:00:00 ou 99:59:99)
	signal s_max_value : std_logic;
	
	-- Fios que ligam ao multiplexer e que têm o tipo de estado de contagem ou de programação
	signal s_mode_mux1 : std_logic_vector(3 downto 0);
	signal s_mode_mux2 : std_logic_vector(3 downto 0);
	
begin

	clkDiv : entity work.ClkDividerN(Behavioral)
		generic map(divFactor => 50000000) -- Piscar a 1hz
		port map(clkIn		=> CLOCK_50,
					clkOut	=> s_seconds);
	
	LEDR(0) <= s_seconds; --> PASSAGEM DOS SEGUNDOS
	
	-- usar o divisor de frequencia apenas para o controlar o display a piscar

	deb1 : entity work.DebounceUnit(Behavioral)
		generic map (inPolarity => '0') -- inverter o valor da key
		port map(refClk	=> CLOCK_50,
					dirtyIn	=> KEY(3), -- Key para start and stop
					cleanOut	=> s_start_stop);
	
	deb2 : entity work.DebounceUnit(Behavioral)
		port map(refClk	=> CLOCK_50,
					dirtyIn	=> SW(0), -- Switch do reset
					cleanOut	=> s_reset);
				
	deb3 : entity work.DebounceUnit(Behavioral)
		port map(refClk	=> CLOCK_50,
					dirtyIn	=> SW(1), -- Switch do modo de contagem
					cleanOut	=> s_mode);
					
	Sync_Mode : process(CLOCK_50) -- Máquina de estados sincrona para alterar o modo de contagem
	begin
		if (rising_edge(CLOCK_50)) then
			s_currentState_m <= s_nextState_m;
		end if;
	end process;

	Comb_Mode : process(s_currentState_m, s_mode) -- Máquina de estados assincrona para alterar o modo de contagem
	begin
		case (s_currentState_m) is
			when growing => -- Modo de contagem crescente
				s_mode_final <= '0';
				--LEDR(15) <= '1'; DEBUG
				--LEDR(14) <= '0'; DEBUG
				if (s_mode = '1') then
					s_nextState_m <= decreasing;
				else
					s_nextState_m <= growing;
				end if;
				
			when decreasing => -- Modo de contagem decrescente
				s_mode_final <= '1';
				--LEDR(15) <= '0'; DEBUG
				--LEDR(14) <= '1'; DEBUG
				if (s_mode = '1') then
					s_nextState_m <= growing;
				else
					s_nextState_m <= decreasing;
				end if;			
			when others => -- caso exista outra condição
				s_nextState_m <= growing;
				--LEDR(15) <= '0'; DEBUG
				--LEDR(14) <= '0'; DEBUG
				
			end case;
	end process;
					
	SyncGen : entity work.SyncGen(Behavioral)
		generic map(numberSteps	=> 50000000,
						out0CompVal	=> 500000, -- Frequência dos counter para contar os centésimos de segundo
						out1CompVal	=> 50000) -- Frequência do display (1 khz)
		port map(clkIn				=> CLOCK_50,
					DisplayClock	=>	s_Display_Clock,
					TimeClock		=> s_Time_Clock);

	Sync_Start_Stop : process(CLOCK_50) -- Máquina de estados sincrona para alterar entre os modos de contagem e paragem de contagem
	begin
		if (rising_edge(CLOCK_50)) then
			if (s_reset = '1') then
				if(s_currentState = start or s_currentState = clearStart) then -- Se o modo for começo ou reset começo
					--LEDR(10) <= '1'; DEBUG
					if(s_mode_final = '1') then -- Se o modo for decrescente
						s_currentState <= clearstop; -- o estado muda para reset stop
					else
						s_currentState <= clearstart; -- o estado muda para reset start
					end if;
				else
					--LEDR(10) <= '0'; DEBUG
					s_currentState <= clearStop;
				end if;
			else
				--LEDR(10) <= '0'; DEBUG
				s_currentState <= s_nextState;
			end if;
		end if;
	end process;

	Comb_Start_Stop : process(s_currentState, s_start_stop, s_reset, s_max_value) -- Máquina de estados assincrona para alterar entre os modos de contagem e paragem de contagem
	begin
		case (s_currentState) is
			when stop => -- estado inicial, parado
				s_main_counters <= '0'; -- os contadores estão desligados
				s_main_Display <= '0'; -- os displays estão desligados
				if (s_start_stop = '1') then -- clicar na KEY(3)
					s_nextState <= start;
				else
					s_nextState <= stop;
				end if;
				
			when start => --- começo da contagem
				s_main_counters <= '1'; -- os contadores estão ligados
				s_main_Display <= '1'; -- os displays estão ligados
				if (s_start_stop = '1' or s_max_value = '1') then -- clicar na KEY(3) ou atingir o valor máximo/ mínimo
					s_nextState <= stop;
				else
					s_nextState <= start;
				end if;
				
			when clearStart => -- reset start
				s_main_counters <= '1'; -- os contadores estão ligados
				s_main_Display <= '1'; -- os displays estão ligados
				if (s_start_stop = '1') then -- clicar na KEY(3)
					s_nextState <= stop;
				else
					s_nextState <= clearStart;
				end if;
			when clearStop => -- reset stop
				s_main_counters <= '0'; -- os contadores estão desligados
				s_main_Display <= '1'; -- os displays estão ligados
				if (s_start_stop = '1') then -- clicar na KEY(3)
					s_nextState <= start;
				else
					s_nextState <= clearStop;
				end if;		
							
			when others => -- caso exista outra condição
				s_nextState <= stop;
				
			-- Existem quatro estados:
			-- Quando o utilizador prime o reset, se o contador estiver a correr, os números reiniciam, e o contador continua a correr do inicio
			-- Se o utilizador premir o reset quando o contador estiver parado, o números reiniciam, mas o contador fica parado
			-- No entanto, se o utilizador premir o reset e o o modo estiver em decrescente, independentemente de estar a contar ou não, o
			--		contado para, pois chegou ao valor 0.
				
			end case;
	end process;
	
	counter0 : entity work.PCounter4(Behav) -- contadores das unidades das centésimas de segundo
		generic map (	max => 9, -- valor máximo
							min => 0) -- valor mínimo
		port map(clk 		=> CLOCK_50,
					reset 	=> s_reset,
					mainEn	=>	s_main_counters, -- Se o valor máximo foi atingido o contador não decrementa
					enable	=> s_Time_Clock, -- O enable do primeiro contador é o clock dos contadores
					mode     => s_mode_final, -- Indicação do modo de contagem, se for 1, o contador decrementa, se for 0, incrementa
					TC			=> s_TC0_1, -- Tick que irá abilitar o próximo contador
					Q			=> s_Q0);
						
	counter1 : entity work.PCounter4(Behav) -- contadores das dezenas das centésimas de segundo
		generic map (	max => 9, -- valor máximo
							min => 0) -- valor mínimo
		port map(clk 		=> CLOCK_50,
					reset		=> s_reset,
					mainEn	=>	s_main_counters, -- Se o valor máximo foi atingido o contador não decrementa
					enable	=> s_TC0_1, -- O enable do contador é o Tick do contador anterior
					mode     => s_mode_final, -- Indicação do modo de contagem, se for 1, o contador decrementa, se for 0, incrementa
					TC			=> s_TC1_2, -- Tick que irá abilitar o próximo contador
					Q			=> s_Q1);
					
	counter2 : entity work.PCounter4(Behav) -- contadores das unidades dos segundos
		generic map (	max => 9, -- valor máximo
							min => 0) -- valor mínimo
		port map(clk 		=> CLOCK_50,
					reset		=> s_reset,
					mainEn	=>	s_main_counters, -- Se o valor máximo foi atingido o contador não decrementa
					enable	=> s_TC1_2, -- O enable do contador é o Tick do contador anterior
					mode     => s_mode_final, -- Indicação do modo de contagem, se for 1, o contador decrementa, se for 0, incrementa
					TC			=> s_TC2_3, -- Tick que irá abilitar o próximo contador
					Q			=> s_Q2);
					
	counter3 : entity work.PCounter4(Behav) -- contadores das dezenas dos segundos
		generic map (	max => 5, -- valor máximo
							min => 0) -- valor mínimo
		port map(clk 		=> CLOCK_50,
					reset		=> s_reset,
					mainEn	=>	s_main_counters, -- Se o valor máximo foi atingido o contador não decrementa
					enable	=> s_TC2_3, -- O enable do contador é o Tick do contador anterior
					mode     => s_mode_final, -- Indicação do modo de contagem, se for 1, o contador decrementa, se for 0, incrementa
					TC			=> s_TC3_4, -- Tick que irá abilitar o próximo contador
					Q			=> s_Q3);
					
	counter4 : entity work.PCounter4(Behav) -- contadores das unidades dos minutos
		generic map (	max => 9, -- 9 -- valor máximo
							min => 1) -- 0 -- valor mínimo
		port map(clk 		=> CLOCK_50,
					reset		=> s_reset,
					mainEn	=>	s_main_counters, -- Se o valor máximo foi atingido o contador não decrementa
					enable	=> s_TC3_4, -- O enable do contador é o Tick do contador anterior
					mode     => s_mode_final, -- Indicação do modo de contagem, se for 1, o contador decrementa, se for 0, incrementa
					TC			=> s_TC4_5, -- Tick que irá abilitar o próximo contador
					Q			=> s_Q4);
					
	counter5 : entity work.PCounter4(Behav) -- contadores das dezenas dos minutos
		generic map (	max => 5, -- valor máximo
							min => 0) -- valor mínimo
		port map(clk 		=> CLOCK_50,
					reset		=> s_reset,
					mainEn	=>	s_main_counters, -- Se o valor máximo foi atingido o contador não decrementa
					enable	=> s_TC4_5, -- O enable do contador é o Tick do contador anterior
					mode     => s_mode_final, -- Indicação do modo de contagem, se for 1, o contador decrementa, se for 0, incrementa
					TC			=> s_TC_final, -- Tick final do último contador
					Q			=> s_Q5);
	
	process(S_Q0, S_Q1, S_Q2, S_Q3, S_Q4, S_Q5, s_mode_final)
		begin
			if(S_Q0 = "0000" and S_Q1 = "0000" and S_Q2 = "0000" and S_Q3= "0000" and
              S_Q4 = "0000" and S_Q5 = "0000" and s_mode_final = '1') then -- Verificar se o valor mínimo foi atingido e estiver a decrementar
				s_max_value <= '1';
			elsif(S_Q0 = "1001" and S_Q1 = "1001" and S_Q2 = "1001" and S_Q3= "0101" and
             S_Q4 = "1001" and S_Q5 = "0101" and s_mode_final = '0') then -- Verificar se o valor máximo foi atingido e estiver a incrementar
				s_max_value <= '1';
			else
            s_max_value <= '0';
			end if;
	end process;
					
-- DEBUG DOS TICKS QUE IRÃO ATIVAR OS CONTADORES SEGUINTES
--	LEDR(1) <= s_TC0_1;
--	LEDR(2) <= s_TC1_2;
--	LEDR(3) <= s_TC2_3;
--	LEDR(4) <= s_TC3_4;
--	LEDR(5) <= s_TC4_5;
--	LEDR(6) <= s_TC_final;
	
	process(s_mode_final)
	begin
		s_mode_mux2 <= x"A";
		if(s_mode_final = '1') then
			s_mode_mux1 <= x"B";
		else
			s_mode_mux1 <= x"C";
		end if;
	end process;
	
	Mux : entity work.Mux(Behav)
		port map(dataIn0	=> s_q0,
					dataIn1	=> s_q1,
					dataIn2	=> s_q2,
					dataIn3	=> s_q3,
					dataIn4	=> s_q4,
					dataIn5	=> s_q5,
					dataIn6	=> s_mode_mux1, -- alterar para modo programação com o texto
					dataIn7	=> s_mode_mux2, -- alterar para modo programação com o texto
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
