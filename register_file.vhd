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
    Port (
			  r1 : in  STD_LOGIC_VECTOR (4 downto 0);
           r2 : in  STD_LOGIC_VECTOR (4 downto 0);
           wr : in  STD_LOGIC_VECTOR (4 downto 0);
           wr_enable : in  STD_LOGIC;
           R1D : out  STD_LOGIC_VECTOR (31 downto 0);
           R2D : out  STD_LOGIC_VECTOR (31 downto 0);
           W3 : in  STD_LOGIC_VECTOR (31 downto 0));
end register_file;

architecture Behavioral of register_file is
Type array1 is array(0 to 31) of STD_LOGIC_VECTOR(31 downto 0);
Signal reg : array1;
Signal zero_32bit:STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
begin
	
	process(wr_enable,r1,r2,wr,W3)
	VARIABLE temp:integer range 0 to 31 := 0;
	begin
		reg(0) <= "00000000000000000000000000000000";
		if(wr_enable = '0') then
			temp := to_integer(unsigned(r1(4 downto 0)));
			R1D <= reg(temp);
			temp := to_integer(unsigned(r2(4 downto 0)));
			R2D <= reg(temp);
		elsif(wr_enable = '1') then           
				temp := to_integer(unsigned(wr(4 downto 0)));
				reg(temp) <= W3;	
				temp := to_integer(unsigned(r1(4 downto 0)));
				R1D <= reg(temp);
				temp := to_integer(unsigned(r2(4 downto 0)));
				R2D <= reg(temp);
		end if;
	end process;
end Behavioral;