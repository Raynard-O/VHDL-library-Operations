

-- Project		: COEN6501
-- File Name	: or_gate.vhd 
-- Author		: 
-- Date			: 25- November- 2020
-- Description	: 


--OR gate

library ieee;
use ieee.std_logic_1164.all;


entity orU is 
	port(A,B:in std_logic;
		Z:out std_logic); 
end orU;

-- Architecture Implementation:
architecture data_flow of orU is 
begin
Z<= A or B;
end data_flow; -- end of or_gate.vhd 

