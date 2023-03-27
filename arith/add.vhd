library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_arith.all;
  use ieee.std_logic_unsigned.all;

entity add is
  port (
    a   : in    std_logic_vector(3 downto 0);
    b   : in    std_logic_vector(3 downto 0);
    sum : out   std_logic_vector(3 downto 0)
  );
end entity add;

architecture rtl of add is

begin

  sum <= a + b;

end architecture rtl;
