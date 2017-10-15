----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    04:53:53 10/14/2017 
-- Design Name: 
-- Module Name:    mux4sel1bit - Behavioral 
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

entity mux4sel1bit is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           d : in  STD_LOGIC;
           sel : in  STD_LOGIC_VECTOR (1 downto 0);
           e : out  STD_LOGIC);
end mux4sel1bit;

architecture Behavioral of mux4sel1bit is
begin
	process(a,b,c,d,sel)
	begin
		if(sel = "00") then
			e <= a;
		elsif(sel = "01") then
			e <= b;
		elsif(sel = "10") then
			e <= c;
		else
			e <= d;
		end if;
	end process;
end Behavioral;