library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_arith.all;
  use ieee.std_logic_unsigned.all;

entity d_ff_ce is
  port (
    clk : in    std_logic;
    ce  : in    std_logic;
    d   : in    std_logic;
    q   : out   std_logic
  );
end entity d_ff_ce;

architecture rtl of d_ff_ce is

begin

  d_ff_ce_proc : process (clk) is
  begin

    if rising_edge(clk) then
      if (ce = '1') then
        q <= d;
      end if;
    end if;

  end process d_ff_ce_proc;

end architecture rtl;
