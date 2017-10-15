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
           ainv : in  STD_LOGIC;
			  binv : in  STD_LOGIC;
			  cin : in  STD_LOGIC;
           aluop : in  STD_LOGIC_VECTOR(1 downto 0);
           cout : out  STD_LOGIC;
           alu_out : out  STD_LOGIC);
end alu1bit;

architecture Behavioral of alu1bit is
component mux1bit is
Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           sel : in  STD_LOGIC;
           c : out  STD_LOGIC);
end component;
Component mux4sel1bit is
Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           d : in  STD_LOGIC;
           sel : in  STD_LOGIC_VECTOR (1 downto 0);
           e : out  STD_LOGIC);
end component;
signal ainp,binp:STD_LOGIC:='0';
signal and_out,or_out,sum_out : STD_LOGIC := '0';
begin
-- this section is for inverting a and b 
	U1: mux1bit port map(a,not(a),ainv,ainp);
	U2: mux1bit port map(b,not(b),binv,binp);
	and_out <= ainp AND binp;
	or_out <= ainp OR binp;
	sum_out <= ((ainp xor binp) xor cin);
	cout <= (ainp  and binp) or ( ainp and cin) or (binp and cin);
	U3: mux4sel1bit PORT MAP(and_out,or_out,sum_out,'0',aluop,alu_out);
end Behavioral;	