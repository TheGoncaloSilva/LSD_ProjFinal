library ieee;
use ieee.std_logic_1164.all;

entity DispCntrl is
   port(enable   : in std_logic;
	     clk      : in std_logic;
		  dispStart: in std_logic;
		  dispBusy : out std_logic;
		  sel   : out std_logic_vector(2 downto 0));
end DispCntrl;

architecture Behav of DispCntrl is
begin

end Behav;