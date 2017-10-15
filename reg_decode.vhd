----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:33:18 10/15/2017 
-- Design Name: 
-- Module Name:    reg_decode - Behavioral 
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

entity reg_decode is
    Port ( clk : in  STD_LOGIC;
			  clrDecode : in STD_LOGIC;
			  stallDecode : in STD_LOGIC;
			  R1D : in  STD_LOGIC_VECTOR (31 downto 0);
			  R1E : out  STD_LOGIC_VECTOR (31 downto 0);
           R2D : in  STD_LOGIC_VECTOR (31 downto 0);
			  R2E : out  STD_LOGIC_VECTOR (31 downto 0);
           immD : in  STD_LOGIC_VECTOR (31 downto 0);
			  immE : out  STD_LOGIC_VECTOR (31 downto 0);
           pc_plus4D : in  STD_LOGIC_VECTOR (31 downto 0);
			  pc_plus4E : out  STD_LOGIC_VECTOR (31 downto 0);
           instr1D : in  STD_LOGIC_VECTOR (4 downto 0);
			  instr1E : out  STD_LOGIC_VECTOR (4 downto 0);
           instr2D : in  STD_LOGIC_VECTOR (4 downto 0);
			  instr2E : out  STD_LOGIC_VECTOR (4 downto 0);
           RegWriteD : in  STD_LOGIC;
           RegWriteE : out  STD_LOGIC;
           MemtoRegD : in  STD_LOGIC;
           MemtoRegE : out  STD_LOGIC;
           MemWriteD : in  STD_LOGIC;
           MemWriteE : out  STD_LOGIC;
           BranchD : in  STD_LOGIC;
           BranchE : out  STD_LOGIC;
           AluControlD : in  STD_LOGIC_VECTOR (2 downto 0);
           AluControlE : out  STD_LOGIC_VECTOR (2 downto 0);
           AluSrcD : in  STD_LOGIC;
           AluSrcE : out  STD_LOGIC;
           WriteRegSelD : in  STD_LOGIC;
           WriteRegSelE : out  STD_LOGIC);
end reg_decode;

architecture Behavioral of reg_decode is
begin
	Process(clk)
	begin
		if(clk = '1' and stallDecode = '0') then
			if(clrDecode = '0') then
				R1E <= R1D;
				R2E <= R2D;
				immE <= immD;
				pc_plus4E <= pc_plus4D;
				instr1E <= instr1D;
				instr2E <= instr2D;
				RegWriteE <= RegWriteD;
				RegWriteE <= RegWriteD;
				MemtoRegE <= MemtoRegD;
				BranchE <= BranchD;
				AluControlE <= AluControlD;
				AluSrcE <= AluSrcD;
				WriteRegSelE <= WriteRegSelD;
			elsif(clrDecode = '1') then       --for flushing data
				R1E <= R1D;
				R2E <= R2D;
				immE <= immD;
				pc_plus4E <= pc_plus4D;
				instr1E <= instr1D;
				instr2E <= instr2D;
				RegWriteE <= RegWriteD;
				RegWriteE <= RegWriteD;
				MemtoRegE <= MemtoRegD;
				BranchE <= BranchD;
				AluControlE <= AluControlD;
				AluSrcE <= AluSrcD;
				WriteRegSelE <= WriteRegSelD;
			end if;
		end if;
	end process;
end Behavioral;