library ieee;
use ieee.std_logic_1164.all;

entity motor is
port(
	--Entradas--
	sensorIzq: in std_logic;
	sensorDer: in std_logic;
	--Salidas--
	motorDer,motorIzq: out std_logic
);
end motor;

architecture arqmotor of motor is
begin
	with sensorIzq select
	motorIzq <='0' when '1',  --Cuando se salga de la linea negra , el motor se detendra
			     '1' when '0';  --Mientras no se salga de la linea negra el motor seguira avanzando
	with sensorDer select 
	motorDer <='0' when '1',
				  '1' when '0';
end architecture arqmotor;