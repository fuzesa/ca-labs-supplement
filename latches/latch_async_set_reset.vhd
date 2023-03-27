library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_arith.all;
  use ieee.std_logic_unsigned.all;

entity latch_async_set_reset is
  port (
    en    : in    std_logic; -- positive gate
    set   : in    std_logic;
    reset : in    std_logic;
    val   : in    std_logic_vector(3 downto 0);
    d     : in    std_logic_vector(3 downto 0);
    q     : out   std_logic_vector(3 downto 0)
  );
end entity latch_async_set_reset;

architecture rtl of latch_async_set_reset is

begin

  latch_async_set_reset_proc : process (en) is
  begin

    if (reset='1') then
      q <= x"0";
    elsif (set='1') then
      q <= val;
    elsif (en = '1') then
      q <= d;
    end if;

  end process latch_async_set_reset_proc;

end architecture rtl;
