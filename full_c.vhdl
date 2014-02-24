library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity full_c is
 port (
 	X, O: in std_logic_vector(8 downto 0);
 	full: out std_logic);
 end full_c
 
 architecture bhv of full_c is
  begin
   full <= '1' when (X(0) = '1' or O(0) = '1') and
   					 (X(1) = '1' or O(1) = '1') and
   					 (X(2) = '1' or O(2) = '1') and
   					 (X(3) = '1' or O(3) = '1') and
   					 (X(4) = '1' or O(4) = '1') and
   					 (X(5) = '1' or O(5) = '1') and
   					 (X(6) = '1' or O(6) = '1') and
   					 (X(7) = '1' or O(7) = '1') and
   					 (X(8) = '1' or O(8) = '1') else '0';

 end bhv;  					 
 		