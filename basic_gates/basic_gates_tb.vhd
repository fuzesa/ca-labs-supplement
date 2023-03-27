library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity basic_gates_tb is
end entity basic_gates_tb;

architecture bench of basic_gates_tb is

  component basic_gates is
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
  end component;

  -- Clock period
  constant clk_period : time := 100 ns;
  -- Generics

  -- Ports
  signal a      : std_logic;
  signal b      : std_logic;
  signal z_not  : std_logic;
  signal z_and  : std_logic;
  signal z_or   : std_logic;
  signal z_nand : std_logic;
  signal z_nor  : std_logic;
  signal z_xor  : std_logic;

begin

  basic_gates_inst : component basic_gates
    port map (
      a      => a,
      b      => b,
      z_not  => z_not,
      z_and  => z_and,
      z_or   => z_or,
      z_nand => z_nand,
      z_nor  => z_nor,
      z_xor  => z_xor
    );

  clk_process : process is
  begin

    a <= '1';
    wait for clk_period / 2;
    b <= '1';
    wait for clk_period / 2;
    a <= '0';
    wait for clk_period / 2;
    b <= '0';

  end process clk_process;

end architecture bench;
