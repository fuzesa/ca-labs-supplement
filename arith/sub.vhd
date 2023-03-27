library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_arith.all;
  use ieee.std_logic_unsigned.all;

entity sub is
  port (
    a    : in    std_logic_vector(3 downto 0);
    b    : in    std_logic_vector(3 downto 0);
    diff : out   std_logic_vector(3 downto 0)
  );
end entity sub;

architecture rtl of sub is

begin

  diff <= a - b;

end architecture rtl;
