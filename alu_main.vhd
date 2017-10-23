----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:38:34 10/13/2017 
-- Design Name: 
-- Module Name:    alu_main - Behavioral 
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

entity alu_main is
    Port ( a : in  STD_LOGIC_VECTOR (31 downto 0);
           b : in  STD_LOGIC_VECTOR (31 downto 0);
			  alu_opn : in  STD_LOGIC_VECTOR (2 downto 0);
           carry_out : out  STD_LOGIC;
           zero : out  STD_LOGIC;
			  --overflow : out  STD_LOGIC;
           Alu_result : out  STD_LOGIC_VECTOR (31 downto 0)
			  );
end alu_main;

architecture Behavioral of alu_main is
Component alu1bit is
 Port ( 
			  a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           ainv : in  STD_LOGIC;
			  binv : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           aluop : in  STD_LOGIC_VECTOR(1 downto 0);
           cout : out  STD_LOGIC;
           alu_out : out  STD_LOGIC);
end component;
signal result,c_out,temp_zero:std_logic_vector(31 downto 0);
signal ainv,binv,cin: STD_LOGIC:='0';
signal alu_op : STD_LOGIC_VECTOR(1 downto 0)  := "00";
begin
	process(alu_opn)
	begin	
		case alu_opn is
			when "001" =>				--add
				ainv <= '0';
				binv <= '0';
				cin <= '0';
				alu_op <= "10";
			when "010" =>				--sub
				ainv <= '0';
				binv <= '1';
				cin <= '1';
				alu_op <= "10";
			when "011" =>				--and
				ainv <= '0';
				binv <= '0';
				cin <= '0';
				alu_op <= "00";
			when "100" =>				--or
				ainv <= '0';
				binv <= '0';
				cin <= '0';
				alu_op <= "01";
			when "101" =>				--nand
				ainv <= '1';
				binv <= '1';
				cin <= '0';
				alu_op <= "01";
			when "110" =>           --nor
				ainv <= '1';
				binv <= '1';
				cin <= '0';
				alu_op <= "10";
			when others =>
				alu_op <= "11";
				ainv <= '1';
				binv <= '1';
		end case;
	end process;
		U1: alu1bit PORT MAP(a(0),b(0),ainv,binv,cin,alu_op,c_out(0),result(0));
	for_loop:for i in 1 to 31 generate
		U:alu1bit PORT MAP(a(i),b(i),ainv,binv,c_out(i-1),alu_op,c_out(i),result(i));
		temp_zero(i) <= temp_zero(i-1) nor result(i);
	end generate;
	zero <= temp_zero(31);
	Alu_result <= result;
	carry_out <= c_out(31);
end Behavioral;