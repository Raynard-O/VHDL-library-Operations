-- Project		: COEN6501
-- File Name	: and_gate.vhd 
-- Author		: 
-- Date			: 25- November- 2020
-- Description	: 
--And Gate


-- Declare library files:
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

-- Entity Declaration:
entity andU is
	port(A,B:in std_logic;
		Z:out std_logic); 
end andU;

architecture data_flow of andU is 
begin
Z<= A and B;
end data_flow; -- end of and_gate.vhd 
