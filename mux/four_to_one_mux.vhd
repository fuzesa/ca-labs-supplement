library ieee;
  use ieee.std_logic_1164.all;

entity four_to_one_mux is
  port (
    a : in    std_logic;
    b : in    std_logic;
    c : in    std_logic;
    d : in    std_logic;
    s : in    std_logic_vector(1 downto 0);
    o : out   std_logic
  );
end entity four_to_one_mux;

architecture archi of four_to_one_mux is

begin

  four_to_one_mux_proc : process (a, b, c, d, s) is
  begin

    case s is
      when   "00" => o <= a;
      when   "01" => o <= b;
      when   "10" => o <= c;
      when   "11" => o <= d;
      when others => o <= a;
    end case;

  end process four_to_one_mux_proc;

end architecture archi;


