----------------------------------------------------------------------------------
-- Engineer: Simone Asnaghi

-- Module Name: SR LATCH - Behavioral
-- Revision:
-- Revision 0.01 - File Created

----------------------------------------------------------------------------------

--Libraries

library IEEE;
	use IEEE.STD_LOGIC_1164.ALL;
	use IEEE.NUMERIC_STD.ALL;

--Entity

entity SR_LATCH is 
Port(
	S		:	in std_logic;
	R		:	in std_logic;
	
	Q		:	out std_logic;
	Q_not	:	out std_logic
	);
end SR_LATCH;

--Architecture

architecture behavioral of SR_LATCH is 

component NOR_GATE is 
Port(
	A	:	in std_logic;
	B	:	in std_logic;
	
	C	:	out std_logic
	);
end component;

signal x  : std_logic := '0';
signal not_x  : std_logic := '1';

begin 

NOR1	:	NOR_GATE
Port Map (
	A => S,
	B => x,
	c => not_x
	);
	
NOR2	:	NOR_GATE
Port Map (
	A => R,
	B => not_x,
	c => x
	);

Q <= x;
Q_not <= not_x;

end behavioral;

