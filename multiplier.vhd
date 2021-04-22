
-- Project		: COEN6501
-- File Name	: multiplier.vhd 
-- Author		: 
-- Date			: 25- November- 2020
-- Description	: 



-- Normal Multiplier

library ieee;
use ieee.std_logic_1164.all;

entity multiplier1 is
	port(
	A,B	: in std_logic_vector(7 downto 0);
	O	: out std_logic_vector(15 downto 0)
	);
end multiplier1;

architecture mul of multiplier1 is
component pProduct 
	port(
		A,B	: in std_logic_vector(7 downto 0);
		P	: out std_logic_vector(64 downto 1)
	);
end component;
component half_adderU
	port (
		A, B: in std_logic;
		sum, carry: out std_logic
	);
end component;
component full_adderU
	port (
		A,B, carry_in: in std_logic;
		sum, carry_out: out std_logic
	);
end component;


signal Prod: std_logic_vector(64 downto 1);
signal S: std_logic_vector(41 downto 0);
signal C: std_logic_vector(55 downto 0);
begin
--Finding the product of 8bit 
product_8: pProduct port map(A(7 downto 0),B(7 downto 0), Prod(64 downto 1));

-- adding the result of the partial product

-- O(0):
O(0) <= Prod(1);



--O(1):
	H_A1: half_adderU port map(Prod(2),Prod(9), O(1), C(0));

--O(2):
	F_A1: full_adderU port map(Prod(3), Prod(10), C(0), S(0), C(1)); 
	H_A2: half_adderU port map(S(0),Prod(17), O(2), C(2));

--O(3):
	F_A2: full_adderU port map(Prod(4), Prod(11), C(1), S(1), C(3)); 
	F_A3: full_adderU port map(S(1), Prod(18), C(2), S(2), C(4)); 
	H_A3: half_adderU port map(S(2),Prod(25), O(3), C(5));

--O(4):
	F_A4: full_adderU port map(Prod(5), Prod(12), C(3), S(3), C(6)); 
	F_A5: full_adderU port map(S(3), Prod(19), C(4), S(4), C(7)); 
	F_A6: full_adderU port map(S(4), Prod(26), C(5), S(5), C(8)); 
	H_A4: half_adderU port map(S(5),Prod(33), O(4), C(9));

--O(5)
	F_A7: full_adderU port map(Prod(6), Prod(13), C(6), S(6), C(10)); 
	F_A8: full_adderU port map(S(6), Prod(20), C(7), S(7), C(11)); 
	F_A9: full_adderU port map(S(7), Prod(27), C(8), S(8), C(12)); 
	F_A10: full_adderU port map(S(8), Prod(34), C(9), S(9), C(13)); 
	H_A5: half_adderU port map(S(9),Prod(41), O(5), C(14));

--O(6):
	F_A11: full_adderU port map(Prod(7), Prod(14), C(10), S(10), C(15)); 
	F_A12: full_adderU port map(S(10), Prod(21), C(11), S(11), C(16)); 
	F_A13: full_adderU port map(S(11), Prod(28), C(12), S(12), C(17)); 
	F_A14: full_adderU port map(S(12), Prod(35), C(13), S(13), C(18)); 
	F_A15: full_adderU port map(S(13), Prod(42), C(14), S(14), C(19)); 
	H_A6: half_adderU port map(S(14),Prod(49), O(6), C(20));

--O(7):
	F_A16: full_adderU port map(Prod(8), Prod(15), C(15), S(15), C(21)); 
	F_A17: full_adderU port map(S(15), Prod(22), C(16), S(16), C(22)); 
	F_A18: full_adderU port map(S(16), Prod(29), C(17), S(17), C(23)); 
	F_A19: full_adderU port map(S(17), Prod(36), C(18), S(18), C(24)); 
	F_A20: full_adderU port map(S(18), Prod(43), C(19), S(19), C(25)); 
	F_A21: full_adderU port map(S(19), Prod(50), C(20), S(20), C(26));
	H_A7: half_adderU port map(S(20),Prod(57), O(7), C(27));

--O(8):
	F_A22: full_adderU port map(Prod(16), C(21), C(22), S(21), C(28)); 
	F_A23: full_adderU port map(S(21), Prod(23), C(23), S(22), C(29)); 
	F_A24: full_adderU port map(S(22), Prod(30), C(24), S(23), C(30)); 
	F_A25: full_adderU port map(S(23), Prod(37), C(25), S(24), C(31)); 
	F_A26: full_adderU port map(S(24), Prod(44), C(26), S(25), C(32));
	F_A27: full_adderU port map(S(25), Prod(51), C(27), S(26), C(33));
	H_A8: half_adderU port map(S(26),Prod(58), O(8), C(34));

--O(9):
	F_A28: full_adderU port map(Prod(24), C(28), C(29), S(27), C(35)); 
	F_A29: full_adderU port map(S(27), Prod(31), C(30), S(28), C(36)); 
	F_A30: full_adderU port map(S(28), Prod(38), C(31), S(29), C(37)); 
	F_A31: full_adderU port map(S(29), Prod(45), C(32), S(30), C(38)); 
	F_A32: full_adderU port map(S(30), Prod(52), C(33), S(31), C(39));
	F_A33: full_adderU port map(S(31),Prod(59), C(34), O(9), C(40));

--O(10):
	
	F_A34: full_adderU port map(Prod(32), C(35), C(36), S(32), C(41)); 
	F_A35: full_adderU port map(S(27), Prod(38), C(37), S(33), C(42)); 
	F_A36: full_adderU port map(S(28), Prod(45), C(38), S(34), C(43)); 
	F_A37: full_adderU port map(S(29), Prod(52), C(39), S(35), C(44)); 
	F_A38: full_adderU port map(S(30), Prod(60), C(40), O(10), C(45));
	
--O(11):
	
	F_A39: full_adderU port map(Prod(40), C(41), C(42), S(36), C(46)); 
	F_A40: full_adderU port map(S(36), Prod(46), C(43), S(37), C(47)); 
	F_A41: full_adderU port map(S(37), Prod(53), C(44), S(38), C(48)); 
	F_A42: full_adderU port map(S(38), Prod(61), C(45), O(11), C(49)); 
	
--O(12):
	F_A43: full_adderU port map(Prod(48), C(46), C(47), S(39), C(50)); 
	F_A44: full_adderU port map(S(39), Prod(54), C(48), S(40), C(51)); 
	F_A45: full_adderU port map(S(40), Prod(62), C(49), O(12), C(52)); 

--O(13):
	F_A46: full_adderU port map(Prod(56), C(50), C(51), S(41), C(53)); 
	F_A47: full_adderU port map(S(41), Prod(63), C(52), O(13), C(54)); 

--O(14):

	F_A48: full_adderU port map(Prod(64), C(53), C(54), O(14), C(55)); 
	
--O(15)
	O(15) <= C(55);

end mul;