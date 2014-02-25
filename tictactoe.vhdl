library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity tictactoe is
 port(
 	X, O: in std_logic_vector (8 downto 0);
	error: out std_logic;
	full: out std_logic;
	winX: out std_logic;
	winO: out std_logic;
	noWin: out std_logic);
end tictactoe;

architecture bhv of tictactoe is
  component error_c is 
 	port ( 
 			X, O: in std_logic_vector (8 downto 0);
 			error: out std_logic);
  end component;
  component full_c is 
 	port ( 
 			X, O: in std_logic_vector (8 downto 0);
 			full: out std_logic);
  end component;
  component winX_C is 
 	port ( 
 			X, O: in std_logic_vector (8 downto 0);
 			winx: out std_logic);
  end component;
  component winO_C is 
 	port ( 
 			X, O: in std_logic_vector (8 downto 0);
 			wino: out std_logic);
  end component;
 
 begin
 	error_circuit: error_c port map (X, O, error);
 	full_circuit: full_c port map(X, O, full);
 	winX_circuit: winX_C port map(X, O, winX);
 	winO_circuit: winO_C port map(X, O, winO);
 	noWin <= '1' when winX = '1' or winO = '1' else '0';
 
 	
end bhv;