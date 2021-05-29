----------------------------------------------------------------------------------
-- Engineer: Simone Asnaghi

-- Module Name: NOR GATE - Behavioral
-- Revision:
-- Revision 0.01 - File Created

----------------------------------------------------------------------------------
--Library

library IEEE;
	use IEEE.STD_LOGIC_1164.ALL;
	use IEEE.NUMERIC_STD.ALL;

--Entity

entity NOR_GATE is 
Port(
	A	:	in std_logic;
	B	:	in std_logic;
	
	C	:	out std_logic
	);
end NOR_GATE;

--Architecture

architecture behavioral of NOR_GATE is

begin
	
	C <= A nor B;
	
end behavioral;
