library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_arith.all;
  use ieee.std_logic_unsigned.all;

entity flip_flops is
  port (
    clk   : in    std_logic;
    reset : in    std_logic;
    ce    : in    std_logic;
    set   : in    std_logic;
    d1    : in    std_logic;
    d2    : in    std_logic;
    d3    : in    std_logic;
    d4    : in    std_logic_vector(15 downto 0);
    d5    : in    std_logic;
    d6    : in    std_logic_vector(15 downto 0);
    val   : in    std_logic_vector(15 downto 0);
    q1    : out   std_logic;
    q2    : out   std_logic;
    q3    : out   std_logic;
    q4    : out   std_logic_vector(15 downto 0);
    q5    : out   std_logic;
    q6    : out   std_logic_vector(15 downto 0)
  );
end entity flip_flops;

architecture rtl of flip_flops is

begin

  basic_d_ff : process (clk) is
  begin

    if rising_edge(clk) then
      q1 <= d1;
    end if;

  end process basic_d_ff;

  sync_res_d_ff : process (clk) is
  begin

    if rising_edge(clk) then
      if (reset = '1') then
        q2 <= '0';
      else
        q2 <= d2;
      end if;
    end if;

  end process sync_res_d_ff;

  sync_ce_res_d_ff : process (clk) is
  begin

    if rising_edge(clk) then
      if (reset = '1') then
        q3 <= '0';
      elsif (ce = '1') then
        q3 <= d3;
      end if;
    end if;

  end process sync_ce_res_d_ff;

  sync_ce_set_res_d_ff : process (clk) is
  begin

    if rising_edge(clk) then
      if (reset = '1') then
        q4 <= x"0000";
      elsif (ce = '1') then
        if (set = '1') then
          q4 <= val;
        else
          q4 <= d4;
        end if;
      end if;
    end if;

  end process sync_ce_set_res_d_ff;

  async_res_d_ff : process (clk, reset) is
  begin

    if (reset = '1') then
      q5 <= '0';
    elsif rising_edge(clk) then
      q5 <= d5;
    end if;

  end process async_res_d_ff;

  async_set_res_d_ff : process (clk, reset) is
  begin

    if (reset = '1') then
      q6 <= x"0000";
    elsif (set = '1') then
      q6 <= val;
    elsif rising_edge(clk) then
      q6 <= d6;
    end if;

  end process async_set_res_d_ff;

end architecture rtl;
