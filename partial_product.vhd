
-- Project		: COEN6501
-- File Name	: partial_product.vhd 
-- Author		: 
-- Date			: 25- November- 2020
-- Description	: 

-- Declare library files:
library IEEE;
use ieee.std_logic_1164.all;

-- Entity Declaration: 
entity pProduct is
	port( A,B  	: in std_logic_vector (7 downto 0);
		  P		: out std_logic_vector (64 downto 1));
end pProduct;

-- Architecture Implementation:
architecture pp of pProduct is

-- Component Declaration of and_gate:
component andU
	port(A,B:in std_logic;
		Z:out std_logic); 
end component;



begin

P1 : andU port map (A(0), B(0), P(1));
P2 : andU port map (A(0), B(1), P(2));
P3 : andU port map (A(0), B(2), P(3));
P4 : andU port map (A(0), B(3), P(4));
P5 : andU port map (A(0), B(4), P(5));
P6 : andU port map (A(0), B(5), P(6));
P7 : andU port map (A(0), B(6), P(7));
P8 : andU port map (A(0), B(7), P(8));
P9 : andU port map (A(1), B(0), P(9));
P10: andU port map (A(1), B(1), P(10));
P11: andU port map (A(1), B(2), P(11));
P12: andU port map (A(1), B(3), P(12));
P13: andU port map (A(1), B(4), P(13));
P14: andU port map (A(1), B(5), P(14));
P15: andU port map (A(1), B(6), P(15));
P16: andU port map (A(1), B(7), P(16));
P17: andU port map (A(2), B(0), P(17));
P18: andU port map (A(2), B(1), P(18));
P19: andU port map (A(2), B(2), P(19));
P20: andU port map (A(2), B(3), P(20));
P21: andU port map (A(2), B(4), P(21));
P22: andU port map (A(2), B(5), P(22));
P23: andU port map (A(2), B(6), P(23));
P24: andU port map (A(2), B(7), P(24));
P25: andU port map (A(3), B(0), P(25));
P26: andU port map (A(3), B(1), P(26));
P27: andU port map (A(3), B(2), P(27));
P28: andU port map (A(3), B(3), P(28));
P29: andU port map (A(3), B(4), P(29));
P30: andU port map (A(3), B(5), P(30));
P31: andU port map (A(3), B(6), P(31));
P32: andU port map (A(3), B(7), P(32));
P33: andU port map (A(4), B(0), P(33));
P34: andU port map (A(4), B(1), P(34));
P35: andU port map (A(4), B(2), P(35));
P36: andU port map (A(4), B(3), P(36));
P37: andU port map (A(4), B(4), P(37));
P38: andU port map (A(4), B(5), P(38));
P39: andU port map (A(4), A(6), P(39));
P40: andU port map (A(4), B(7), P(40));
P41: andU port map (A(5), B(0), P(41));
P42: andU port map (A(5), B(1), P(42));
P43: andU port map (A(5), B(2), P(43));
P44: andU port map (A(5), B(3), P(44));
P45: andU port map (A(5), B(4), P(45));
P46: andU port map (A(5), B(5), P(46));
P47: andU port map (A(5), B(6), P(47));
P48: andU port map (A(5), B(7), P(48));
P49: andU port map (A(6), B(0), P(49));
P50: andU port map (A(6), B(1), P(50));
P51: andU port map (A(6), B(2), P(51));
P52: andU port map (A(6), B(3), P(52));
P53: andU port map (A(6), B(4), P(53));
P54: andU port map (A(6), B(5), P(54));
P55: andU port map (A(6), B(6), P(55));
P56: andU port map (A(6), B(7), P(56));
P57: andU port map (A(7), B(0), P(57));
P58: andU port map (A(7), B(1), P(58));
P59: andU port map (A(7), B(2), P(59));
P60: andU port map (A(7), B(3), P(60));
P61: andU port map (A(7), B(4), P(61));
P62: andU port map (A(7), B(5), P(62));
P63: andU port map (A(7), B(6), P(63));
P64: andU port map (A(7), B(7), P(64));

end;

-- end of partial_product.vhd