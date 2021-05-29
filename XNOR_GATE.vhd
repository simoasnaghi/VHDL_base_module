----------------------------------------------------------------------------------
-- Engineer: Simone Asnaghi

-- Module Name: XNOR GATE - Behavioral
-- Revision:
-- Revision 0.01 - File Created

----------------------------------------------------------------------------------
--Library

library IEEE;
	use IEEE.STD_LOGIC_1164.ALL;
	use IEEE.NUMERIC_STD.ALL;

--Entity

entity XNOR_GATE is 
Port(
	A	:	in std_logic;
	B	:	in std_logic;
	
	C	:	out std_logic
	);
end XNOR_GATE;

--Architecture

architecture behavioral of XNOR_GATE is

begin
	
	C <= A xnor B;
	
end behavioral;
