----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:34:09 10/12/2017 
-- Design Name: 
-- Module Name:    muxWsignal - Behavioral 
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

entity muxWsignal is
    Port ( a : in  STD_LOGIC_VECTOR (4 downto 0);
           b : in  STD_LOGIC_VECTOR (4 downto 0);
           c : out  STD_LOGIC_VECTOR (4 downto 0);
           sel : in  STD_LOGIC);
end muxWsignal;

architecture Behavioral of muxWsignal is
begin
	process(a,b)
	begin
		if(sel = '0') then
			c <= a;
		else
			c <= b;
		end if;
	end process;
end Behavioral;