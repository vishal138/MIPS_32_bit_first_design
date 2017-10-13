----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:12:31 10/12/2017 
-- Design Name: 
-- Module Name:    register_file - Behavioral 
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

entity register_file is
    Port ( rd_1 : in  STD_LOGIC_VECTOR (4 downto 0);
           rd_2 : in  STD_LOGIC_VECTOR (4 downto 0);
           wr : in  STD_LOGIC_VECTOR (4 downto 0);
           clk : in  STD_LOGIC;
           wr_enable : in  STD_LOGIC;
           R1 : out  STD_LOGIC_VECTOR (31 downto 0);
           R2 : out  STD_LOGIC_VECTOR (31 downto 0);
           W3 : in  STD_LOGIC_VECTOR (31 downto 0));
end register_file;

architecture Behavioral of register_file is
Type array1 is array(0 to 31) of STD_LOGIC_VECTOR(31 downto 0);
Signal reg : array1;
begin
	process(clk)
	VARIABLE temp:integer range 0 to 31 := 0;
	begin
		if(clk = '1') then
			temp := to_integer(unsigned(rd_1(4 downto 0)));
			R1 <= reg(temp);
			temp := to_integer(unsigned(rd_2(4 downto 0)));
			R2 <= reg(temp);
		elsif(clk = '0' and wr_enable = '1') then           --this accounts for RAW Hazard  
				temp := to_integer(unsigned(wr(4 downto 0)));
				reg(temp) <= W3;	
		end if;
	end process;
end Behavioral;