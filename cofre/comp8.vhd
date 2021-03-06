library ieee;
use ieee.std_logic_1164.all;

entity comp8 is
port(SenhaSalva: in std_logic_vector (7 downto 0);
	  entrada: in std_logic_vector (7 downto 0);
     clock: in std_logic;
	  Q: out std_logic);
	 
	 end comp8;
	  	  
architecture comp8 of comp8 is
component FFD is
	port(D: in std_logic;
		  clock: in std_logic;
		  Q: out std_logic);	  
	end component;
signal COMP: std_logic_vector(7 downto 0);
signal COMPres  : std_logic;
begin

	COMP(0) <= SenhaSalva(0) XNOR entrada(0);
	COMP(1) <= SenhaSalva(1) XNOR entrada(1);
	COMP(2) <= SenhaSalva(2) XNOR entrada(2);
	COMP(3) <= SenhaSalva(3) XNOR entrada(3);
	COMP(4) <= SenhaSalva(4) XNOR entrada(4);
	COMP(5) <= SenhaSalva(5) XNOR entrada(5);
	COMP(6) <= SenhaSalva(6) XNOR entrada(6);
	COMP(7) <= SenhaSalva(7) XNOR entrada(7);
	
	COMPres <= COMP(0) and COMP(1) and COMP(2)and COMP(3)and COMP(4) and COMP(5) and COMP(6) and COMP(7);
	
	FFD0: ffd port map (COMPres, clock , Q);
 end comp8;