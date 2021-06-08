--Counter usado para contar centésimos de segundo, décimos de segundo, unidades de minuto e horas


library ieee;
use ieee.std_logic.all;

entity PCounter4 is
   generic(max : natural := 9)
   port(clk    : in std_logic;
	     enable : in std_logic;
	     reset  : in std_logic;
		  TC     : out std_logic;
		  Q      : out std_logic_vector(3 downto 0);

end PCounter4;

architecture Behav of PCounter4 is 
   signal s_count : unsigned(3 downto 0)
begin
   process(clk)
	begin
	   if(rising_edge clk) then 
		   if(reset = '1') then
			   s_count <= "0000";
			else
			   if(enable = '1') then
				   if(to_integer(s_count) = max) then
					   s_count <= "0000";
						TC <= 1; --só depois de chegar ao dígito 9 é que o próximo counter muda
					else
					   s_count <= s_count + 1;
					end if;
				end if;
			end if;
		end if;
	end process;
	Q <= s_count;
end Behav;