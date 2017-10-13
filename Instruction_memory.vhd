----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:52:11 10/12/2017 
-- Design Name: 
-- Module Name:    Instruction_memory - Behavioral 
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

entity Instruction_memory is
    Port ( pc : in  STD_LOGIC_VECTOR (31 downto 0);
           instr : out  STD_LOGIC_VECTOR (31 downto 0);
			  wr : in STD_LOGIC;                                   --this is for programming
			  data : in STD_LOGIC_VECTOR (31 downto 0));
end Instruction_memory;

architecture Behavioral of Instruction_memory is
Type array_instr is array(0 to 1023) of STD_LOGIC_VECTOR(31 downto 0);
Signal instr_reg : array_instr;
begin
	process(pc,wr,data)
	variable  temp : integer range 0 to 1023 := 0;
	begin
		if(wr = '1') then
			temp := to_integer(unsigned(pc(31 downto 0)));
			instr_reg(temp) <= data;
		else
			temp := to_integer(unsigned(pc(31 downto 0)));
			instr <= instr_reg(temp);
		end if;
	end process;
end Behavioral;