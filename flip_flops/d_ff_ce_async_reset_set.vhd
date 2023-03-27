library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_arith.all;
  use ieee.std_logic_unsigned.all;

entity d_ff_ce_async_reset_set is
  port (
    clk   : in    std_logic;
    ce    : in    std_logic;
    reset : in    std_logic;
    set   : in    std_logic;
    d     : in    std_logic_vector(3 downto 0);
    val   : in    std_logic_vector(3 downto 0);
    q     : out   std_logic_vector(3 downto 0)
  );
end entity d_ff_ce_async_reset_set;

architecture rtl of d_ff_ce_async_reset_set is

begin

  basic_d_ff : process (clk, reset, set) is
  begin

    if (reset = '1') then
      q <= x"0";
    elsif (set = '1') then
      q <= val;
    elsif rising_edge(clk) then
      if (ce = '1') then
        q <= d;
      end if;
    end if;

  end process basic_d_ff;

end architecture rtl;
