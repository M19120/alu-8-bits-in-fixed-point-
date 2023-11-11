library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_alu_puntofijo is 
end entity;

architecture rtl of tb_alu_puntofijo is 

component alu_puntofijo is 
port( a,b: in signed(7 downto 0); --entradas
		buss: in std_logic_vector(1 downto 0); --selector de operaciones
		mover: in std_logic_vector(1 downto 0); --usado para mover el punto fijo
		signo: out std_logic;
		clk: in std_logic;
		displays: out std_logic_vector(3 downto 0); --digitos
		segments: out std_logic_vector(7 downto 0) --salida segments
);
end component; 

signal a ,b: signed(7 downto 0):=(others=>'0');
signal buss: std_logic_vector(1 downto 0):=(others=>'0');
signal clk: std_logic;
signal signo: std_logic;
signal mover: std_logic_vector(1 downto 0);
signal displays: std_logic_vector(3 downto 0):=(others=>'0');
signal segments: std_logic_vector(7 downto 0):=(others=>'0');
constant period: time :=10 ns;
constant period2: time :=4176670 ns;
begin 
u1:alu_puntofijo port map(
	a=>a,
	b=>b,
	buss=>buss,
	clk=>clk,
	mover=>mover,
	signo=>signo,
	displays=>displays,
	segments=>segments
);

clock_proc: process
begin
	clk<='0';
	wait for period;
	clk<='1';
	wait for period;
end process;

stim_proc:process
	begin
	a<="01101011";
	b<="11010101";
	wait for period;
	a<="11101011";
	b<="11110000";
	wait for period;
	buss<="00";
	wait for period2*4;
	buss<="01";
	wait for period2*4;
	buss<="10";
	wait for period2*4;
	buss<="11";
	wait for period2*4;
	mover <= "00";
	wait for period2*4;
	mover <= "01";
	wait for period2*4;
	mover <= "10";
	wait for period2*4;
	mover <= "11";
	wait for period2*4;
	end process;
end rtl;