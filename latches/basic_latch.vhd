library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_arith.all;
  use ieee.std_logic_unsigned.all;

entity basic_latch is
  port (
    d  : in    std_logic;
    en : in    std_logic; -- positive gate
    q  : out   std_logic
  );
end entity basic_latch;

architecture rtl of basic_latch is

begin

  d_latch_proc : process (en) is
  begin

    if (en = '1') then
      q <= d;
    end if;

  end process d_latch_proc;

end architecture rtl;
