----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:20:13 10/16/2017 
-- Design Name: 
-- Module Name:    comparator_32bit - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity comparator_32bit is
    Port ( a : in  STD_LOGIC_VECTOR (31 downto 0);
           b : in  STD_LOGIC_VECTOR (31 downto 0);
           c : out  STD_LOGIC);
end comparator_32bit;

architecture Behavioral of comparator_32bit is
begin
	process(a,b) 
	variable m,k:STD_LOGIC:='0';
	begin
		for_loop:for i in 0 to 31 loop
						m := a(i) xor b(i);
						if(m = '0') then
							k := '1';
						else
							k := '0';
						end if;
					end loop for_loop;
			c <= k;
	end process;			
end Behavioral;

