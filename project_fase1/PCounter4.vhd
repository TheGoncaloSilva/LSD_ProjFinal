-- Projeto número 9 - Cronometro Digital
-- Gonçalo Silva e Samuel Teixeira
-- Counter usado para contar centésimos de segundo, décimos de segundo, unidades de minuto e horas

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity PCounter4 is
   generic(	max : integer := 9; -- Valor default
				min : integer := 0); -- Valor default
   port(clk    : in std_logic;
	     enable : in std_logic;
		  mainEn	: in std_logic;
	     reset  : in std_logic;
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
					  if(to_integer(s_count) = min) then
						if(min = 0) then
							s_count <= to_unsigned(max, 4);
							TC <= '1'; --só depois de chegar ao dígito minimo é que o próximo counter muda
						else
							s_count <= to_unsigned(0, 4); -- se o valor minimo do contador for 1 ou superior, ele não pode voltar outra vez a esse valor, logo tem de ir ao 0
							TC <= '0';
						end if;
					else
						s_count <= s_count - 1;
						TC <= '0';    
					end if;
				else -- Se o contador estiver desligado não ordenar o contador seguinte a funcionar
					TC <= '0';
				end if;
			end if;
		end if;
	end process;
	
	Q <= std_logic_vector(s_count);
	
end Behav;