# fixed-point-alu
ALU to 8 bits  with fixed point inside FPGA Altera Cyclone IV to basic operation: Add, Sub and multiplication. Showed in hexadecimal in 7 segments displays.

The purpose of this repository is prepare the user to IEEE754 format. IEEE754 is an standar for floating point and its implementation. 

for this project it was used a personal desing in PCB to save time in wire connections. 
Below, you can see the implementation.  



https://github.com/M19120/alu-8-bits-in-fixed-point-/assets/77844733/4f30f521-c283-4f93-a7a9-104791aa19d9


Inside the process with "buss" signal, you can choice the operation to realize, so, if you want to do a add, you just select "00", and and so respectively. 
 			
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
