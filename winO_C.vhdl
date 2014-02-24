library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity winO_C is
 port( 
 	X,O: in std_logic_vector(8 downto 0);
 	winO: out std_logic);
 end winO_C;
 
architecture bhv of winO_C is
 begin
  winO <= '1' when O(0) = '1' and O(1) = '1' and O(2) = '1' or
  				   O(3) = '1' and O(4) = '1' and O(5) = '1' or
  				   O(6) = '1' and O(7) = '1' and O(7) = '1' or
  				   O(0) = '1' and O(3) = '1' and O(6) = '1' or
  				   O(1) = '1' and O(4) = '1' and O(7) = '1' or
  				   O(2) = '1' and O(5) = '1' and O(8) = '1' or
  				   O(0) = '1' and O(4) = '1' and O(8) = '1' or
  				   O(2) = '1' and O(4) = '1' and O(6) = '1' else '0';
end bhv;  