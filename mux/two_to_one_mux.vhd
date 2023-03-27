library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_arith.all;
  use ieee.std_logic_unsigned.all;

entity two_to_one_mux is
  port (
    a : in    std_logic;
    b : in    std_logic;
    s : in    std_logic;
    o : out   std_logic
  );
end entity two_to_one_mux;

architecture archi of two_to_one_mux is

begin

  two_to_one_mux_proc : process (a, b, s) is
  begin

    if (s = '1') then
      o <= a;
    else
      o <= b;
    end if;

  end process two_to_one_mux_proc;

end architecture archi;


