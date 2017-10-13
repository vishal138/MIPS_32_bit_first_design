----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:29:12 10/13/2017 
-- Design Name: 
-- Module Name:    alu1bit - Behavioral 
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

entity alu1bit is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           less : in  STD_LOGIC;
           binv : in  STD_LOGIC;
           ainv : in  STD_LOGIC;
			  clk : in STD_LOGIC;
           cin : in  STD_LOGIC;
           aluop : in  STD_LOGIC_VECTOR(1 downto 0);
           cout : out  STD_LOGIC;
           alu_out : out  STD_LOGIC);
end alu1bit;

architecture Behavioral of alu1bit is
begin
	process(clk)
	variable ainp,binp:STD_LOGIC := '0';
	begin
-- this section is for inverting a and b 
		if(clk'EVENT and clk='1') then
			if(ainv='0') then
				ainp := a;
			else
				ainp := not(a);
			end if;
			if(binv='0') then
				binp := b;
			else
				binp := not(b);
			end if;
			
	--This section is for alu operation of single bit
			if(aluop = "00") then
				alu_out <=  ainp AND binp;
			elsif(aluop = "01") then
				alu_out <= ainp OR binp;
			elsif(aluop = "10") then
				alu_out <= ((ainp xor binp) xor cin);
				cout <= (ainp  and binp) or ( ainp and cin) or (binp and cin);
			else
				alu_out <= less;							--check this one  for comparison 
			end if;
		end if;
	end process;
end Behavioral;	