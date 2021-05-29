----------------------------------------------------------------------------------
-- Engineer: Simone Asnaghi

-- Module Name: MUX 2:1 - Behavioral
-- Revision:
-- Revision 0.01 - File Created

----------------------------------------------------------------------------------
--Library 

library IEEE;
	use IEEE.STD_LOGIC_1164.ALL;
	use IEEE.NUMERIC_STD.ALL;

--Entity

entity MUX is
Port(
	A	:	in std_logic;
	B	:	in std_logic;
	sel	:	in std_logic;
	C	:	out std_logic
	);
end MUX;

--Architecture

architecture behavioral of MUX is 

begin 
    process
    begin
        case sel is
            when '0' => 
                        C <= A;
            
            when '1' => 
                        C <= B;
                        
            when Others => 
                        C <= 'X';
    
        end case;
        wait;
    end process;
end behavioral;


