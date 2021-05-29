----------------------------------------------------------------------------------
-- Engineer: Simone Asnaghi

-- Module Name: OR GATE - Behavioral
-- Revision:
-- Revision 0.01 - File Created

----------------------------------------------------------------------------------
--Library

library IEEE;
	use IEEE.STD_LOGIC_1164.ALL;
	use IEEE.NUMERIC_STD.ALL;

--Entity

entity OR_GATE is 
Port(
	A	:	in std_logic;
	B	:	in std_logic;
	
	C	:	out std_logic
	);
end OR_GATE;

--Architecture

architecture behavioral of OR_GATE is

begin
	
	C <= A or B;
	
end behavioral;
