
-- Project		: COEN6501
-- File Name	: rca4.vhd 
-- Author		: 
-- Date			: 25- November- 2020
-- Description	: 


-- Declare library files:
library IEEE;
use ieee.std_logic_1164.all;

-- Entity Declaration: 
entity rca4 is
	port( A, B  : in std_logic_vector (3 downto 0);
		  carry_in	: in std_logic;
		  sum 		: out std_logic_vector (3 downto 0);
		  carry_out : out std_logic);
end rca4;

-- Architecture Implementation:
architecture structure of rca4 is

-- Component Declaration of full_adder:
component full_adderU 
	port( A, B, carry_in : in std_logic;
		  sum, carry_out : out std_logic);
end component; 

-- Signal declaration of internal variables:
signal C: std_logic_vector (4 downto 0);

begin

-- Assign the value of Carry in to C(0):
C(0) <= carry_in;

FA1: full_adderU port map (A(0), B(0), C(0), sum(0), C(1));
FA2: full_adderU port map (A(1), B(1), C(1), sum(1), C(2));
FA3: full_adderU port map (A(2), B(2), C(2), sum(2), C(3));
FA4: full_adderU port map (A(3), B(3), C(3), sum(3), C(4));

-- Assign the value of C(4) to Carry out:
carry_out <= C(4);

end;

-- end of ripple_carry_4bit.vhd
