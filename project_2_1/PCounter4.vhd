-- Projeto número 9 - Cronometro Digital
-- Gonçalo Silva e Samuel Teixeira
-- Counter usado para contar centésimos de segundo, décimos de segundo, unidades de minuto e horas

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity PCounter4 is
   generic(	max : integer := 9;
				min : integer := 0);
   port(clk    : in std_logic;
	     enable : in std_logic;
		  mainEn	: in std_logic;
	     reset  : in std_logic;
		  mode   : in std_logic;
		  TC     : out std_logic;
		  Q      : out std_logic_vector(3 downto 0));

end PCounter4;

architecture Behav of PCounter4 is 
   signal s_count :unsigned(3 downto 0);
begin
   process(clk)
	begin
	   if(rising_edge(clk)) then
		   if(reset = '1') then
			   s_count <= to_unsigned(min, 4);
				TC <= '0';
			else
			   if(enable = '1' and mainEn = '1') then
				   if(mode = '0') then					   
						if(to_integer(s_count) = max) then -- or to_integer(s_count) >= 10
							s_count <= to_unsigned(min, 4);
							TC <= '1'; --só depois de chegar ao dígito maximo é que o próximo counter muda
						else
							s_count <= s_count + 1;
							TC <= '0';
						end if;
					else
					   if(to_integer(s_count) = min) then
							if(min = 0) then
								s_count <= to_unsigned(max, 4);
								TC <= '1'; --só depois de chegar ao dígito minimo é que o próximo counter muda
							else
								s_count <= to_unsigned(0, 4);
								TC <= '0';
							end if;
						else
							s_count <= s_count - 1;
							TC <= '0';
						end if;      
					end if;
				else
					TC <= '0';
				end if;
			end if;
		end if;
	end process;
	
	Q <= std_logic_vector(s_count);
	
end Behav;