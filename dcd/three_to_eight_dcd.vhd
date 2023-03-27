library ieee;
  use ieee.std_logic_1164.all;

entity three_to_eight_dcd is
  port (
    s   : in    std_logic_vector(2 downto 0);
    res : out   std_logic_vector(7 downto 0)
  );
end entity three_to_eight_dcd;

architecture archi of three_to_eight_dcd is

begin

  three_to_eight_dcd_proc : process (s) is
  begin

    case s is
      when "001"  => res <= b"0000_0001";
      when "010"  => res <= b"0000_0010";
      when "011"  => res <= b"0000_0100";
      when "100"  => res <= b"0000_1000";
      when "101"  => res <= b"0001_0000";
      when "110"  => res <= b"0010_0000";
      when "111"  => res <= b"0100_0000";
      when others => res <= b"0000_0000";
    end case;

  end process three_to_eight_dcd_proc;

end architecture archi;

