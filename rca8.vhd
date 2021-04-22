
-- Project		: COEN6501
-- File Name	: rca8.vhd 
-- Author		: 
-- Date			: 25- November- 2020
-- Description	: 



library IEEE;
use ieee.std_logic_1164.all;

-- Entity Declaration: 
entity rca8 is
	port( A, B  	: in std_logic_vector (7 downto 0);
		  carry_in	: in std_logic;
		  sum 		: out std_logic_vector (7 downto 0);
		  carry_out : out std_logic);
end rca8;

-- Architecture Implementation:
architecture structure of rca8 is

-- Component Declaration of 4-bit RCA:
component rca4
	port( A, B  	: in std_logic_vector (3 downto 0);
		  carry_in	: in std_logic;
		  sum 		: out std_logic_vector (3 downto 0);
		  carry_out : out std_logic);
end component;

-- Signal declaration of internal variables:
signal C: std_logic_vector (2 downto 0);

begin

-- Assign the value of Carry in to C(0):
C(0) <= carry_in;

RCA1: rca4 port map (A (3 downto 0), B(3 downto 0), C(0), sum (3 downto 0), C(1));
RCA2: rca4 port map (A (7 downto 4), B(7 downto 4), C(1), sum (7 downto 4), C(2));

-- Assign the value of C(2) to Carry out:
carry_out <= C(2);

end;

-- end of ripple_carry_8bit.vhd
