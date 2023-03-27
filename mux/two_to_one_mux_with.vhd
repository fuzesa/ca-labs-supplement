-- REQUIRES VHDL-2008

library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_arith.all;
  use ieee.std_logic_unsigned.all;

entity two_to_one_mux_with is
  port (
    a : in    std_logic;
    b : in    std_logic;
    s : in    std_logic;
    o : out   std_logic
  );
end entity two_to_one_mux_with;

architecture rtl of two_to_one_mux_with is

begin

  two_to_one_mux_with_proc : process (a, b, s) is
  begin

    with s select o <=
      a when '1',
      b when others;

  end process two_to_one_mux_with_proc;

end architecture rtl;
