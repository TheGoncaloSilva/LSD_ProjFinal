-- Projeto número 9 - Cronometro Digital
-- Gonçalo Silva e Samuel Teixeira

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity DisplayCntrl is
	port(clk		: in  std_logic;
		  res		: in  std_logic;
		  en		: in  std_logic;
		  start	: in  std_logic; -- Nesta fase o start é sempre 1, de forma a percorrer os ciclos
		  sel		: out  std_logic_vector(3 downto 0);
		  regSel	: out  std_logic_vector(7 downto 0);
		  busy	: out std_logic);
end DisplayCntrl;

architecture Behavioral of DisplayCntrl is

	type TState is (INIT, E1, E2, E3, E4, E5, E6, E7, E8);
	signal s_currentState, s_nextState : TState;

begin
	sync_proc : process(clk)
	begin
		if (rising_edge(clk)) then
			if(en = '1') then
				if (res = '1') then
					s_currentState <= INIT;
				else
					s_currentState <= s_nextState;
				end if;
			end if;
		end if;
	end process;

	comb_proc : process(s_currentState, start, en)
	begin
		case (s_currentState) is
			when INIT => -- Primeiro estado
				sel <= "0000"; -- Valor default (Não seleciona nenhum)
				regSel <= "00000000"; -- Valor default (Não seleciona nenhum)
				busy <= '0'; -- Display está ativo
				if (start = '1') then
					s_nextState <= E1;
				else
					s_nextState <= INIT;
				end if;
					
			when E1 =>
				sel <= "0001"; -- seleciona o primeiro valor do multiplexer
				regSel <= "00000001"; -- Seleciona HEX0
				busy <= '1'; -- Display está ativo
				if (start = '1') then
					s_nextState <= E2;
				else
					s_nextState <= E1;
				end if;
				
			when E2 =>
				sel <= "0010"; -- seleciona o segundo valor do multiplexer
				regSel <= "00000010"; -- Seleciona HEX1
				busy <= '1'; -- Display está ativo
				if (start = '1') then
					s_nextState <= E3;
				else
					s_nextState <= E2;
				end if;
				
			when E3 =>
				sel <= "0011"; -- seleciona o terceiro valor do multiplexer
				regSel <= "00000100"; -- Seleciona HEX2
				busy <= '1'; -- Display está ativo
				if (start = '1') then
					s_nextState <= E4;
				else
					s_nextState <= E3;
				end if;
				
			when E4 =>
				sel <= "0100"; -- seleciona o quarto valor do multiplexer
				regSel <= "00001000"; -- Seleciona HEX3
				busy <= '1'; -- Display está ativo
				if (start = '1') then
					s_nextState <= E5;
				else
					s_nextState <= E4;
				end if;
				
			when E5 =>
				sel <= "0101"; -- seleciona o quinto valor do multiplexer
				regSel <= "00010000"; -- Seleciona HEX4
				busy <= '1'; -- Display está ativo
				if (start = '1') then
					s_nextState <= E6;
				else
					s_nextState <= E5;
				end if;
				
			when E6 =>
				sel <= "0110"; -- seleciona o sexto valor do multiplexer
				regSel <= "00100000"; -- Seleciona HEX5
				busy <= '1'; -- Display está ativo
				if (start = '1') then
					s_nextState <= E7;
				else
					s_nextState <= E6;
				end if;
				
			when E7 =>
				sel <= "0111"; -- seleciona o sétimo valor do multiplexer
				regSel <= "01000000"; -- Seleciona HEX6
				busy <= '1'; -- Display está ativo
				if (start = '1') then
					s_nextState <= E8;
				else
					s_nextState <= E7;
				end if;
				
			when E8 =>
				sel <= "1000"; -- seleciona o oitavo valor do multiplexer
				regSel <= "10000000"; -- Seleciona HEX7
				busy <= '1'; -- Display está ativo
				if (start = '1') then
					s_nextState <= E1; -- Volta ao display inicial
				else
					s_nextState <= E8;
				end if;
				
			when others => -- caso exista outra condição
				s_nextState <= E1;
				
			end case;
	end process;

end Behavioral;

