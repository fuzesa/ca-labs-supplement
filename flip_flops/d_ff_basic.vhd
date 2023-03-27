library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_arith.all;
  use ieee.std_logic_unsigned.all;

entity d_ff_basic is
  port (
    clk : in    std_logic;
    d   : in    std_logic;
    q   : out   std_logic
  );
end entity d_ff_basic;

architecture rtl of d_ff_basic is

begin

  basic_d_ff : process (clk) is
  begin

    if rising_edge(clk) then
      q <= d;
    end if;

  end process basic_d_ff;

end architecture rtl;
