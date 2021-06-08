library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity DisplayCntrl is
	port(clk		: in  std_logic;
		  res		: in  std_logic;
		  en		: in  std_logic;
		  start	: in  std_logic;
		  sel		: out  std_logic_vector(2 downto 0);
		  busy	: out std_logic);
end DisplayCntrl;

architecture Behavioral of DisplayCntrl is

begin -- tirar
--
--	type TState is (CLEARED, STARTED, STOPPED, LAPVIEW, LAPVIEW_STOP);
--	signal s_currentState, s_nextState : TState;
--
--begin
--	sync_proc : process(clk)
--	begin
--		if (rising_edge(clk)) then
--			if (reset = '1') then
--				s_currentState <= CLEARED;
--			else
--				s_currentState <= s_nextState;
--			end if;
--		end if;
--	end process;
--
--	comb_proc : process(s_currentState, statop, laprst)
--	begin
--		case (s_currentState) is
--		when CLEARED =>
--			cntRst <= '1';
--			cntEnb <= '1';
--			regEnb <= '1';
--			if (statop = '1') then
--				s_nextState <= STARTED;
--			else
--				s_nextState <= CLEARED;
--			end if;
--
--		when STARTED =>
--			cntRst <= '0';
--			cntEnb <= '1';
--			regEnb <= '1';
--			if (laprst = '1') then
--				s_nextState <= LAPVIEW;
--			elsif (statop = '1') then
--				s_nextState <= STOPPED;
--			else
--				s_nextState <= STARTED;
--			end if;
--
--		when STOPPED =>
--			cntRst <= '0';
--			cntEnb <= '0';
--			regEnb <= '1';
--			if (statop = '1') then
--				s_nextState <= STARTED;
--			elsif (laprst = '1') then
--				s_nextState <= CLEARED;
--			else
--				s_nextState <= STOPPED;
--			end if;
--
--		when LAPVIEW =>
--			cntRst <= '0';
--			cntEnb <= '1';
--			regEnb <= '0';
--			if (laprst = '1') then
--				s_nextState <= STARTED;
--			elsif (statop = '1') then
--				s_nextState <= LAPVIEW_STOP;
--			else 
--				s_nextState <= LAPVIEW;
--			end if;
--			
--		when LAPVIEW_STOP =>
--			cntRst <= '0';
--			cntEnb <= '0';
--			regEnb <= '0';
--			if (laprst = '1') then
--				s_nextState <= STOPPED;
--			else 
--				s_nextState <= LAPVIEW_STOP;
--			end if;
--		end case;
--
--	end process;

end Behavioral;
