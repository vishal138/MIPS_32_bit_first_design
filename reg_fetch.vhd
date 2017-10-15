----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:20:31 10/15/2017 
-- Design Name: 
-- Module Name:    reg_fetch - Behavioral 
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

entity reg_fetch is
    Port ( clk : in  STD_LOGIC;
           instrF : in  STD_LOGIC_VECTOR (31 downto 0);
           instrD : out  STD_LOGIC_VECTOR (31 downto 0);
           pc_plus4F : in  STD_LOGIC_VECTOR (31 downto 0);
           pc_plus4D : out  STD_LOGIC_VECTOR (31 downto 0));
end reg_fetch;

architecture Behavioral of reg_fetch is
begin
	process(clk)
	begin
		if(clk='1') then
			instrD <= instrF;
			pc_plus4D  <= pc_plus4F;
		end if;
	end process;
end Behavioral;

