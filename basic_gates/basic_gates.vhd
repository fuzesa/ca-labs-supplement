library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_arith.all;
  use ieee.std_logic_unsigned.all;

entity basic_gates is
  port (
    a      : in    std_logic;
    b      : in    std_logic;
    z_not  : out   std_logic;
    z_and  : out   std_logic;
    z_or   : out   std_logic;
    z_nand : out   std_logic;
    z_nor  : out   std_logic;
    z_xor  : out   std_logic
  );
end entity basic_gates;

architecture rtl of basic_gates is

begin

  z_not  <= not a;
  z_and  <= a and b;
  z_or   <= a or b;
  z_nand <= a nand b;
  z_nor  <= a nor b;
  z_xor  <= a xor b;

end architecture rtl;
