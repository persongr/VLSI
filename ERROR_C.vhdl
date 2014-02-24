library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity error_c is
 port (
 	X, O: in std_logic_vector(8 downto 0);
 	error: out std_logic);
 end error_c
 
 architecture bhv of error_c is
  begin
   error <= '1' when X(0) = '1' and O(0) = '1' or
   					 X(1) = '1' and O(1) = '1' or
   					 X(2) = '1' and O(2) = '1' or
   					 X(3) = '1' and O(3) = '1' or
   					 X(4) = '1' and O(4) = '1' or
   					 X(5) = '1' and O(5) = '1' or
   					 X(6) = '1' and O(6) = '1' or
   					 X(7) = '1' and O(7) = '1' or
   					 X(8) = '1' and O(8) = '1' else '0';

 end bhv;  					 
 		