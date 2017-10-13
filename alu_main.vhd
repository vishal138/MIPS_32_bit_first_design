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
           carry_out : out  STD_LOGIC;
           alu_opn : in  STD_LOGIC_VECTOR (3 downto 0);
           zero : out  STD_LOGIC;
           result : out  STD_LOGIC_VECTOR (31 downto 0);
           overflow : out  STD_LOGIC);
end alu_main;

architecture Behavioral of alu_main is
Component alu1bit is
 Port ( 
			  a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           less : in  STD_LOGIC;
           binv : in  STD_LOGIC;
           ainv : in  STD_LOGIC;
			  clk : in STD_LOGIC;
           cin : in  STD_LOGIC;
           aluop : in  STD_LOGIC_VECTOR(1 downto 0);
           cout : out  STD_LOGIC;
           alu_out : out  STD_LOGIC);
end component;
variable result:std_logic_vector(31 downto 0);
variable less,ainv,binv,cin: STD_LOGIC:='0';
begin
	for i in 0 to 31 loop
		U:alu1bit PORT MAP(a(i),b(i),'1',

end Behavioral;

