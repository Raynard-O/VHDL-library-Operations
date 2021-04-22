
-- Project		: COEN6501
-- File Name	: register8.vhd 
-- Author		: 
-- Date			: 25- November- 2020
-- Description	: 



-- Declare library files:
library ieee;
use ieee.std_logic_1164.all;

-- Entity Declaration:
entity register8_bit is
	Port ( input_data: in STD_LOGIC_VECTOR (7 downto 0);
       clk,clr,load : in STD_LOGIC;
       output_data: out STD_LOGIC_VECTOR (7 downto 0));
end register8_bit;

-- Architecture implementation: 
architecture Behavioral of register8_bit is
begin
  process (clk) 
  begin
    -- check for positive edge of clock
    if clk'event and clk = '1' then 
      -- if the clear signal is high then reset the register:
      if clr = '1' then
        output_data <="00000000";
      -- if the load signal is high then load the value of input to registers:
      elsif load ='1' then 
        output_data <=input_data;
      end if;
    end if;
  end process;
end;

-- end of register8_bit.vhd
