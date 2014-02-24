library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity winX_C is
 port( 
 	X,O: in std_logic_vector(8 downto 0);
 	winx: out std_logic);
 end winX_C;
 
architecture bhv of winX_C is
 begin
  winx <= '1' when X(0) = '1' and X(1) = '1' and X(2) = '1' or
  				   X(3) = '1' and X(4) = '1' and X(5) = '1' or
  				   X(6) = '1' and X(7) = '1' and X(7) = '1' or
  				   X(0) = '1' and X(3) = '1' and X(6) = '1' or
  				   X(1) = '1' and X(4) = '1' and X(7) = '1' or
  				   X(2) = '1' and X(5) = '1' and X(8) = '1' or
  				   X(0) = '1' and X(4) = '1' and X(8) = '1' or
  				   X(2) = '1' and X(4) = '1' and X(6) = '1' else '0';
end bhv;  