----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:08:26 10/12/2017 
-- Design Name: 
-- Module Name:    data_memory - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity data_memory is
	Port (	
				add : in  STD_LOGIC_VECTOR (31 downto 0);
			   we : in STD_LOGIC;
			   WD : in STD_LOGIC_VECTOR (31 downto 0);
				RD : out  STD_LOGIC_VECTOR (31 downto 0));
end data_memory;

architecture Behavioral of data_memory is
Type array_data is array(0 to 1023) of STD_LOGIC_VECTOR(31 downto 0);
Signal data_reg : array_data;
begin
	process(add,we,WD)
	variable  temp : integer range 0 to 1023 := 0;
	begin
		data_reg(4) <= "00000000000000000000000000001010";
		
			if(we ='1') then
				temp := to_integer(unsigned(add(31 downto 0)));
				data_reg(temp) <= WD;
			else
				temp := to_integer(unsigned(add(31 downto 0)));
				RD <= data_reg(temp);
			end if;
	end process;
end Behavioral;