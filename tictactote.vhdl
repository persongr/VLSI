library ieee;
use ieee.std_logic_1164.all;
entity tictactoe is
port (x : in std_logic_vector (8 downto 0);
o : in std_logic_vector (8 downto 0);
error : out std_logic;
full : out std_logic;
winX : out std_logic;
winO : out std_logic;
noWin : out std_logic);
end tictactoe;
architecture bhv of tictactoe is

end bhv;