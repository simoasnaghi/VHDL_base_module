----------------------------------------------------------------------------------
-- Engineer: Simone Asnaghi

-- Module Name: JK_LATCH - Behavioral
-- Revision:
-- Revision 0.01 - File Created

----------------------------------------------------------------------------------
--Libraries

library IEEE;
	use IEEE.STD_LOGIC_1164.ALL;
	use IEEE.NUMERIC_STD.ALL;

--Entity

entity JK_LATCH is
Port(
	J		  :	in std_logic;
	K		  :	in std_logic;

	Q		  :	out std_logic;
	Q_not	:	out std_logic
	);
end JK_LATCH;

--Architecture

architecture behavioral of JK_LATCH is

component NOR_GATE is
Port(
	A	:	in std_logic;
	B	:	in std_logic;

	C	:	out std_logic
	);
end component;

component AND_GATE is
Port(
	A	:	in std_logic;
	B	:	in std_logic;

	C	:	out std_logic
	);
end component;

signal x  : std_logic := '0';
signal notx  : std_logic := '1';
signal set_sr : std_logic := '0';
signal reset_sr : std_logic := '0';
signal q_sr : std_logic := '0';
signal qnot_sr : std_logic := '1';

begin

NOR1	:	NOR_GATE
Port Map (
	A => set_sr,
	B => x,
	c => notx
	);

NOR2	:	NOR_GATE
Port Map (
	A => reset_sr,
	B => notx,
	c => x
	);

q_sr <= x;
qnot_sr <= notx;

AND1	:	AND_GATE
Port Map (
	A => J,
	B => qnot_sr,
	C => set_sr
	);

AND2	:	AND_GATE
Port Map (
	A => K,
	B => q_sr,
	C => reset_sr
	);

Q <= q_sr;
Q_not <= qnot_sr;

end behavioral;
