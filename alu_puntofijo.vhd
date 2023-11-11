library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity alu_puntofijo is 
port( a,b: in signed(7 downto 0); --entradas
		buss: in std_logic_vector(1 downto 0); --selector de operaciones
		mover: in std_logic_vector(1 downto 0); --usado para mover el punto fijo
		signo: out std_logic;
		clk: in std_logic;
		displays: out std_logic_vector(3 downto 0); --digitos
		segments: out std_logic_vector(7 downto 0) --salida segmentos
);
end alu_puntofijo; 

architecture rtl of alu_puntofijo is 
signal resultado: std_logic_vector(15 downto 0):=(others=>'0');
constant contador: integer :=208833; -- 50MHz/2*30fps*4digitos
signal reset_count: integer range 0 to contador; -- refresco del reloj
signal selection: std_logic_vector(1 downto 0):=(others=>'0'); 
signal show_disp,lectura,mover_punto: std_logic_vector(3 downto 0); 
signal cout, mout: signed(15 downto 0);--Cout: complemento para 'a', mout: complemento para 'b'
signal corrimiento: std_logic_vector(6 downto 0); --seÃ±al para hacer la concatenacion del punto

begin 
	displays<=show_disp;--nuestros anodos del display los asignamos a la seÃ±al para mostrar displays
	
	process(a,b,buss,cout,mout,resultado,corrimiento)
	begin
---------------------------------------------------------------------------
-- Operaciones realizadas---------------------		
 			case buss is 
					when "00"=> --suma 
					resultado<= std_logic_vector(cout + mout);

					if(resultado(15) = '0') then 
						signo <= '1'; 
					else 
						signo<= '0';
					end if;
					when "01"=> --resta
						resultado<=std_logic_vector(cout-mout);
							if(resultado(15) = '0') then 
								signo <= '1'; 
							else 
								signo<= '0';
							end if;
					when "10"=> --multplicacion
							resultado<=std_logic_vector(resize(a*b,16));
							if(resultado(15) = '0') then 
								signo <= '1'; 
							else 
								signo<= '0';
							end if;
					when others=> resultado<=(others=>'0');
							signo<= '1';
			end case;
	end process;
-----------------------------------------------------------
-----------Proceso de reloj y tambien de refresco de los displays 
	process(clk)
	begin 
		if(rising_edge(clk))then 
			if (reset_count < contador) then 
				reset_count <= reset_count +1;
			else 
				selection<= selection+1;
				reset_count<=0;
			end if;
		end if;
	end process;
-----------------------------------------------------------------------	
	process(selection,resultado,a,b)
	begin
		case selection is 
			when "00"=> show_disp<="1110";
			when "01"=> show_disp<="1101";
			when "10"=> show_disp<="1011";
			when "11"=> show_disp<="0111";
			when others=> show_disp<="1111";
		end case;
		
		case show_disp is 
			when "1110"=> lectura<=resultado(15 downto 12);
			when "1101"=> lectura<=resultado(11 downto 8);
			when "1011"=> lectura<=resultado(7 downto 4);
			when "0111"=> lectura<=resultado(3 downto 0);
			when others=> lectura<=(others=> '0');
		end case;	
		
		case mover is 
			when "11"=> 
				mover_punto <= "0111"; ----mostrarlo en primer digito
				segments <= corrimiento & '0'; 
				cout<= resize(a,16);
				mout<= resize(b,16);
---------------------------------------------------------------------------
			when "10"=> -- mostrarlo en segundo digito
				mover_punto <= "1011";
				segments <= corrimiento & '0'; 
				
				if(a(7)= '0') then 
					cout<= "000000"&a&"00";
				else	
					cout<= "111111"&a&"00";
				end if;
				
				if(b(7)= '0') then 
					mout<= "000000"&b&"00";
				else	
					mout<= "111111"&b&"00";
				end if;	
------------------------------------------------------------------------------
			when "00"=> --mostrarlo en tercer digito
				mover_punto <= "1101";
				segments <= corrimiento & '0'; 

				if(a(7)= '0') then 
					cout<= "0000"&a&"0000";
				else	
					cout<= "1111"&a&"0000";
				end if;
				
				if(b(7)= '0') then 
					mout<= "0000"&b&"0000";
				else	
					mout<= "1111"&b&"0000";
				end if;
-----------------------------------------------------------------------
			when "01"=> --mostrarlo en ultimo digito
				mover_punto <= "1110";
				segments <= corrimiento & '0'; 

				if(a(7)= '0') then 
					cout<= "00"&a&"000000";
				else	
					cout<= "11"&a&"000000";
				end if;
				
				if(b(7)= '0') then 
					mout<= "00"&b&"000000";
				else	
					mout<= "11"&b&"000000";
				end if;
----------------------------------------------------------------------------
			when others =>
				mover_punto<= (others=> '0');
				cout  <= (others=> '0');
				mout  <= (others=> '0');
		end case; 
		if(show_disp = mover_punto) then 
			segments <= corrimiento & '0'; -- se concatena el bit del punto en el bit menos significativo
		else 
			segments <= corrimiento & '1';
		end if;
--------------------------------------------------------------------------------		
		case lectura is 					 --abcdefg
			when "0000"=> corrimiento <= "0000001"; --0
			when "0001"=> corrimiento <= "1001111"; --1
			when "0010"=> corrimiento <= "0010010"; --2
			when "0011"=> corrimiento <= "0000110"; --3
			when "0100"=> corrimiento <= "1001100"; --4
			when "0101"=> corrimiento <= "0100100"; --5
			when "0110"=> corrimiento <= "0100000"; --6
			when "0111"=> corrimiento <= "0001111"; --7
			when "1000"=> corrimiento <= "0000000"; --8
			when "1001"=> corrimiento <= "0001100"; --9
			when "1010"=> corrimiento <= "0001000"; --A
			when "1011"=> corrimiento <= "1100000"; --B
			when "1100"=> corrimiento <= "0110001"; --C
			when "1101"=> corrimiento <= "1000010"; --D
			when "1110"=> corrimiento <= "0110000"; --E
			when "1111"=> corrimiento <= "0111000"; --F
			when others => corrimiento <=(others=>'0');
		end case;
	end process;

end rtl; 