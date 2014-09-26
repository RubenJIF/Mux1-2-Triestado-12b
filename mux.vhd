library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity  mux is
	port(
		sel, oe : in std_logic;
		a, b : in std_logic_vector(11 downto 0);
		y : out std_logic_vector(11 downto 0)
	);
end mux;

architecture behave of mux is
begin
	process(a, b, sel, oe)
	begin
		if(oe = '0') then
			y <= "ZZZZZZZZZZZZ";
		else 
			case sel is
				when '0' => y <= a;
				when '1' => y <= b;
			end case;
		end if;
	end process;
end behave;