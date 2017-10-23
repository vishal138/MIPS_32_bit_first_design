----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:48:01 10/15/2017 
-- Design Name: 
-- Module Name:    reg_pc - Behavioral 
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

entity reg_pc is
    Port ( clk : in  STD_LOGIC;
			  pc_rst : in STD_LOGIC;
			  pc_next : in  STD_LOGIC_VECTOR (31 downto 0);
			  pc : out  STD_LOGIC_VECTOR (31 downto 0));
end reg_pc;

architecture Behavioral of reg_pc is
begin
	process(clk)
	begin
		if(clk='1' and pc_rst ='0') then
			pc <= pc_next;
		elsif(pc_rst = '1') then
			pc  <= (others=>'0');
		end if;
	end process;
end Behavioral;

