----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    04:29:56 10/14/2017 
-- Design Name: 
-- Module Name:    mux1bit - Behavioral 
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

entity mux1bit is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           sel : in  STD_LOGIC;
           c : out  STD_LOGIC);
end mux1bit;

architecture Behavioral of mux1bit is

begin
	process(a,b,sel)
	begin
		if(sel = '0') then
			c <= a;
		else
			c <= b;
		end if;
	end process;

end Behavioral;