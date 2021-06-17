-- Projeto número 9 - Cronometro Digital
-- Gonçalo Silva e Samuel Teixeira

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity DisplayCntrl is
	port(clk		: in  std_logic;
		  res		: in  std_logic;
		  en		: in  std_logic;
		  start	: in  std_logic;
		  sel		: out  std_logic_vector(2 downto 0);
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
			when INIT =>
				sel <= "000"; -- dúvida em relação a este
				regSel <= "00000000";
				busy <= '0';
				if (start = '1') then
					s_nextState <= E1;
				else
					s_nextState <= INIT;
				end if;
					
			when E1 =>
				sel <= "000";
				regSel <= "00000001";
				busy <= '1'; -- dúvida
				if (start = '1') then
					s_nextState <= E2;
				else
					s_nextState <= E1;
				end if;
				
			when E2 =>
				sel <= "001";
				regSel <= "00000010";
				busy <= '1';
				if (start = '1') then
					s_nextState <= E3;
				else
					s_nextState <= E2;
				end if;
				
			when E3 =>
				sel <= "010";
				regSel <= "00000100";
				busy <= '1';
				if (start = '1') then
					s_nextState <= E4;
				else
					s_nextState <= E3;
				end if;
				
			when E4 =>
				sel <= "011";
				regSel <= "00001000";
				busy <= '1';
				if (start = '1') then
					s_nextState <= E5;
				else
					s_nextState <= E4;
				end if;
				
			when E5 =>
				sel <= "100";
				regSel <= "00010000";
				busy <= '1';
				if (start = '1') then
					s_nextState <= E6;
				else
					s_nextState <= E5;
				end if;
				
			when E6 =>
				sel <= "101";
				regSel <= "00100000";
				busy <= '1';
				if (start = '1') then
					s_nextState <= E7;
				else
					s_nextState <= E6;
				end if;
				
			when E7 =>
				sel <= "110";
				regSel <= "01000000";
				busy <= '1';
				if (start = '1') then
					s_nextState <= E8;
				else
					s_nextState <= E7;
				end if;
				
			when E8 =>
				sel <= "111";
				regSel <= "10000000";
				busy <= '1';
				if (start = '1') then
					s_nextState <= E1;
				else
					s_nextState <= E8;
				end if;
				
			when others => -- caso exista outra condição
				s_nextState <= E1;
				
			end case;
	end process;

end Behavioral;

