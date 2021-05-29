----------------------------------------------------------------------------------
-- Engineer: Simone Asnaghi

-- Module Name: D latch - Behavioral
-- Revision:
-- Revision 0.01 - File Created

----------------------------------------------------------------------------------
library IEEE;
  use IEEE.STD_LOGIC_1164.ALL;
  use IEEE.NUMERIC_STD.ALL;

--Entity

entity DLATCH is
  Port(
    d     :   in std_logic;
    clk   :   in std_logic;
    reset :   in std_logic;
    q     :   out std_logic
  );
end DLATCH;

--Archiecture

architecture Behavioral of DLATCH is
begin
  process(clk)
    begin
        if reset = '1' then
          q <= '0';
        elsif rising_edge(clk) then
          q <= d;
        end if;
  end process;
end Behavioral;
