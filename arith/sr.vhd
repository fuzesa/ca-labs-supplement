library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_arith.all;
  use ieee.std_logic_unsigned.all;

entity sr is
  port (
    clk : in    std_logic;
    di  : in    std_logic_vector(3 downto 0);
    do  : out   std_logic_vector(3 downto 0)
  );
end entity sr;

architecture rtl of sr is

begin

  process (clk) is
  begin

    if rising_edge(clk) then
      do <= '0' & di(3 downto 1);
    end if;

  end process;

end architecture rtl;
