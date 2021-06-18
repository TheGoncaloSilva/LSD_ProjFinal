-- Projeto número 9 - Cronometro Digital
-- Gonçalo Silva e Samuel Teixeira

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ProgCntrl is
	port(	clk			: in  std_logic;
			reset			: in std_logic;
			enable		: in  std_logic;
			ProgStart	: in  std_logic;
			sel			: out  std_logic_vector(3 downto 0);
			OeSel			: out  std_logic_vector(3 downto 0);
			ProgBusy		: out std_logic);
end ProgCntrl;

architecture Behavioral of ProgCntrl is

	type TState is (INIT, C5, C4, C3, C2);
	signal s_currentState, s_nextState : TState;

begin
	sync_proc : process(clk)
	begin
		if (rising_edge(clk)) then
			if(enable = '1') then
				if (reset = '1') then
					s_currentState <= INIT;
				else
					s_currentState <= s_nextState;
				end if;
			end if;
		end if;
	end process;

	comb_proc : process(s_currentState, ProgStart, enable)
	begin
		case (s_currentState) is
			when INIT =>
				sel <= "0000";
				OeSel <= "0000"; -- ver este
				ProgBusy <= '0';
				if (ProgStart = '1') then
					s_nextState <= C5;
				else
					s_nextState <= INIT;
				end if;
					
			when C5 =>
				sel <= "0001";
				OeSel <= "0000"; -- ver este
				ProgBusy <= '1';
				if (ProgStart = '1') then
					s_nextState <= C4;
				else
					s_nextState <= C5;
				end if;
				
			when C4 =>
				sel <= "0010";
				OeSel <= "0000"; -- ver este
				ProgBusy <= '1';
				if (ProgStart = '1') then
					s_nextState <= C3;
				else
					s_nextState <= C4;
				end if;
				
			when C3 =>
				sel <= "0010";
				OeSel <= "0000"; -- ver este
				ProgBusy <= '1';
				if (ProgStart = '1') then
					s_nextState <= C2;
				else
					s_nextState <= C3;
				end if;
				
			when C2 =>
				sel <= "0100";
				OeSel <= "0000"; -- ver este
				ProgBusy <= '1';
				if (ProgStart = '1') then
					s_nextState <= INIT;
				else
					s_nextState <= C2;
				end if;
				
			when others => -- caso exista outra condição
				s_nextState <= INIT;
				
			end case;
	end process;
end Behavioral;

