
-- Project		: COEN6501
-- File Name	: plus_one_adder.vhd 
-- Author		: 
-- Date			: 25- November- 2020
-- Description	: 



-- Declare library files:
library IEEE;
use ieee.std_logic_1164.all;

-- Entity Declaration: 
entity plus_one is
	port( A  	: in std_logic_vector (15 downto 0);
		  Z		: out std_logic_vector (15 downto 0));
end plus_one;






-- Architecture Implementation:
architecture plus of plus_one is


-- Component Declaration of ripple_carry_8bit adder:
Component rca8 
	port( A, B  	: in std_logic_vector (7 downto 0);
		  carry_in	: in std_logic;
		  sum 		: out std_logic_vector (7 downto 0);
		  carry_out : out std_logic);
end Component;



-- Signal Declarations:
-- inputs to RCA:
signal input_1: std_logic_vector (7 downto 0);
signal input_2: std_logic_vector (7 downto 0);
signal input_3: std_logic_vector (7 downto 0);
signal input_4: std_logic_vector (7 downto 0);

-- Outputs of the 8-bit RCA: 
signal C: std_logic_vector (2 downto 0);
signal sum: std_logic_vector (15 downto 0);


begin

-- Setting the value of inputs to the Ripple Carry Adder (8-bit) -1:
input_1(0) <= A(0);
input_1(1) <= A(1);
input_1(2) <= A(2);
input_1(3) <= A(3);
input_1(4) <= A(4);
input_1(5) <= A(5);
input_1(6) <= A(6);
input_1(7) <= A(7);

input_2 <= "00000000";

-- Setting the value of inputs to the Ripple Carry Adder (8-bit) -2:
input_3(0) <= A(8);
input_3(1) <= A(9);
input_3(2) <= A(10);
input_3(3) <= A(11);
input_3(4) <= A(12);
input_3(5) <= A(13);
input_3(6) <= A(14);
input_3(7) <= A(15);

input_4 <= "00000000";

-- carry in:
C(0) <='1';

RCA1: rca8 port map (input_1 (7 downto 0), input_2 (7 downto 0), C(0), sum (7 downto 0), C(1));
RCA2: rca8 port map (input_3 (7 downto 0), input_4 (7 downto 0), C(1), sum (15 downto 8), C(2));

-- Assign the outputs:

Z(0)<= sum(0);
Z(1)<= sum(1);
Z(2)<= sum(2);
Z(3)<= sum(3);
Z(4)<= sum(4);
Z(5)<= sum(5);
Z(6)<= sum(6);
Z(7)<= sum(7);
Z(8)<= sum(8);
Z(9)<= sum(9);
Z(10)<=sum(10);
Z(11)<=sum(11);
Z(12)<=sum(12);
Z(13)<=sum(13);
Z(14)<=sum(14);
Z(15)<=sum(15);


end;

-- end of plus_one.vhd
