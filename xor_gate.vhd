-- Project		: COEN6501
-- File Name	: XOR.vhd 
-- Author		: 
-- Date			: 25- November- 2020
-- Description	: 
--XOR

library ieee;
use ieee.std_logic_1164.all;

entity xorU is 
	port(A,B:in std_logic;
		Z:out std_logic); 
end xorU;

-- Architecture Implementation:
architecture data_flow of xorU is 
begin
	Z<= ((not A) and B) or (A and (not B));
end data_flow;  -- end of xor_gate.vhd 


