library ieee;
use ieee.std_logic_1164.all;

ENTITY stick IS
PORT(t_sen, IR_sen ,button : IN STD_LOGIC;
	   vibrating ,buzzer : OUT STD_LOGIC);
END stick;

ARCHITECTURE main OF stick IS
BEGIN
Process (button,IR_sen,t_sen) 
Begin 
Vibrating <= NOT IR_sen and button;
Buzzer <= Not t_sen and button;
End process;

END main;
