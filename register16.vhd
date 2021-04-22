
-- Project		: COEN6501
-- File Name	: register16.vhd 
-- Author		: 
-- Date			: 25- November- 2020
-- Description	: 

-- Declare library files:
library IEEE;
use ieee.std_logic_1164.all;

-- Entity Declaration: 
entity register16_bit is
	port( input_data : in std_logic_vector (15 downto 0);
		  clk, load, clr: in std_logic; 
		  output_data : out std_logic_vector (15 downto 0));
end register16_bit;

-- Architecture implementation: 
architecture reg of register16_bit is

begin
  process (clk) 
  begin
    -- check for positive edge of clock
    if clk'event and clk = '1' then 
      -- if the clear signal is high then reset the register:
      if clr = '1' then
        output_data <="0000000000000000";
      -- if the load signal is high then load the value of input to registers:
      elsif load ='1' then 
        output_data <=input_data;
      end if;
    end if;
  end process;
end;
 
-- end of reg_16_bit.vhd
