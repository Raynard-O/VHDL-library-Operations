
-- Project		: COEN6501
-- File Name	: Full_Adder1.vhd 
-- Author		: 
-- Date			: 25- November- 2020
-- Description	: 


-- Full_adder
library ieee;
use ieee.std_logic_1164.all;

entity full_adderU is 
	port(
		A,B, carry_in: in std_logic;
		sum, carry_out: out std_logic
	);
end full_adderU;
architecture system of full_adderU is 
component half_adderU
	port (
		A, B: in std_logic;
		sum, carry: out std_logic
	);
end component;
component orU
	port(A,B:in std_logic;
		Z:out std_logic); 
end component;
signal sig1, out1, out2: std_logic;

begin 
	H_A1: half_adderU port map(A,B,sig1,out1);
	H_A2: half_adderU port map(carry_in,sig1,sum,out2);
	O_A3: orU port map(out1, out2, carry_out);
end system;
