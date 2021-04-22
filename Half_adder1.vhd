
-- Project		: COEN6501
-- File Name	: HAlf_adder1.vhd 
-- Author		: 
-- Date			: 25- November- 2020
-- Description	: 


--Half Adder

library ieee;
use ieee.std_logic_1164.all;

entity half_adderU is
	port (
		A, B: in std_logic;
		sum, carry: out std_logic
	);
end half_adderU;

architecture system of half_adderU is 
component xorU
	port(A,B:in std_logic;
		Z:out std_logic); 
end component;

component andU
	port(A,B:in std_logic;
		Z:out std_logic); 
end component;

begin
	Ret1: xorU port map(A,B,sum);
	Ret2: andU port map(A,B,carry);
end system;


