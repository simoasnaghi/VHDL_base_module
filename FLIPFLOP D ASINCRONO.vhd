----------------------------------------------------------------------------------
-- Engineer: Simone Asnaghi

-- Module Name: Asynchronous D flip flop - Behavioral
-- Revision:
-- Revision 0.01 - File Created

----------------------------------------------------------------------------------
library IEEE;
  use IEEE.STD_LOGIC_1164.ALL;
  use IEEE.NUMERIC_STD.ALL;

-- Entity

entity DFF is
  Port(

  d     :   in std_logic;
  reset :   in std_logic;
  q     :   out std_logic

      );
end DFF;

--architecture

architecture Behavioral of DFF is

component DLATCH is
  Port(
    d     :   in std_logic;
    clk   :   in std_logic;
    reset :   in std_logic;
    q     :   out std_logic
  );
end component;

signal clk_reg, data_reg,q_reg  : std_logic;
signal not_clk_reg  : std_logic;

begin

not_clk_reg <= not clk_reg;

  DL_master : DLATCH
    Port Map (
      d => d,
      clk => clk_reg,
      reset => reset,
      q => data_reg
    );
    DL_slave : DLATCH
      Port Map (
        d => data_reg,
        clk => not_clk_reg,
        reset => reset,
        q => q_reg
      );
 q <= q_reg;

end Behavioral;
