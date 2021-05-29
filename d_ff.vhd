----------------------------------------------------------------------------------
-- Engineer: Simone Asnaghi

-- Module Name: flip flop D - Behavioral
-- Revision:
-- Revision 0.01 - File Created

----------------------------------------------------------------------------------
--Libraries

library IEEE;
	use IEEE.STD_LOGIC_1164.ALL;
	use IEEE.NUMERIC_STD.ALL;

--Entity

entity ff_d is
Port(
	D			:		in std_logic;
	clk		:		in std_logic;

	Q			:		out std_logic;
	Q_bar	:		out std_logic
	);
end ff_d;

--Architecture

architecture behavioral of ff_d is

component AND_GATE is
Port(
	A	:	in std_logic;
	B	:	in std_logic;

	C	:	out std_logic
	);
end component;

component NOR_GATE is
Port(
	A	:	in std_logic;
	B	:	in std_logic;

	C	:	out std_logic
	);
end component;

signal x,y,h,k : std_logic := '0';
signal not_k    : std_logic;

begin

not_k <= not k;

AND_1	:	AND_GATE
Port Map (
	A => not_k,
	B => clk,

	C => x
);

AND_2	:	AND_GATE
Port Map (
	A => D,
	B => clk,

	C => y
);

NOR_1	:	NOR_GATE
Port Map (
	A => x,
	B => k,

	C => h
);

NOR_2	:	NOR_GATE
Port Map (
	A => y,
	B => h,

	C => k
);

Q <= h;
Q_bar <= k;

end behavioral;
