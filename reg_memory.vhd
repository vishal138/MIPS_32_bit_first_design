----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:45:00 10/15/2017 
-- Design Name: 
-- Module Name:    reg_memory - Behavioral 
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

entity reg_memory is
    Port ( clk : in  STD_LOGIC;
			  clrMemory : in STD_LOGIC;
			  stallMemory : in STD_LOGIC;
           RegWriteM : in  STD_LOGIC;
           RegWriteW : out  STD_LOGIC;
           MemtoRegM : in  STD_LOGIC;
           MemtoRegW : out  STD_LOGIC;
           WriteRegM : in  STD_LOGIC_VECTOR (4 downto 0);
           WriteRegW : out  STD_LOGIC_VECTOR (4 downto 0);
           AluResultM : in  STD_LOGIC_VECTOR (31 downto 0);
           AluResultW : out  STD_LOGIC_VECTOR (31 downto 0);
           ReadDataM : in  STD_LOGIC_VECTOR (31 downto 0);
           ReadDataW : out  STD_LOGIC_VECTOR (31 downto 0));
end reg_memory;

architecture Behavioral of reg_memory is

begin
	Process(clk)
	begin
		if(clk='1' and stallMemory = '0') then
			if(clrMemory = '0') then
				RegWriteW <= RegWriteM;
				MemtoRegW <= MemtoRegM;
				WriteRegW <= WriteRegM;
				AluResultW <= AluResultM;
				ReadDataW <= ReadDataM;
			elsif(clrMemory = '1') then       --for flushing data
				RegWriteW <= RegWriteM;
				MemtoRegW <= MemtoRegM;
				WriteRegW <= WriteRegM;
				AluResultW <= AluResultM;
				ReadDataW <= ReadDataM;
			end if;
		end if;
	end Process;
end Behavioral;

