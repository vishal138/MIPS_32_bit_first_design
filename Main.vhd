----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:08:26 10/12/2017 
-- Design Name: 
-- Module Name:    Main - Behavioral 
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

entity Main is
	Port (clk : in STD_LOGIC;
			wr : in STD_LOGIC;
			data : in STD_LOGIC_VECTOR(31 downto 0);
			pc_rst : in STD_LOGIC;
			instradd: in STD_LOGIC_VECTOR(31 downto 0);
			Debug : out STD_LOGIC_VECTOR(31 downto 0);
			test : out STD_LOGIC_VECTOR(31 downto 0);
			ANSWER : out STD_LOGIC_VECTOR(31 downto 0));
end Main;
architecture Behavioral of Main is
Component alu_main is
	Port ( a : in  STD_LOGIC_VECTOR (31 downto 0);
           b : in  STD_LOGIC_VECTOR (31 downto 0);
           alu_opn : in  STD_LOGIC_VECTOR (2 downto 0);
			  carry_out : out  STD_LOGIC;
           zero : out  STD_LOGIC;
           alu_result : out  STD_LOGIC_VECTOR (31 downto 0));
           --overflow : out  STD_LOGIC);
end component;
Component alu_adder is
	Port ( a : in  STD_LOGIC_VECTOR (31 downto 0);
           b : in  STD_LOGIC_VECTOR (31 downto 0);
           c : out  STD_LOGIC_VECTOR (31 downto 0));
end component;
Component Instruction_memory is
	Port ( pc : in  STD_LOGIC_VECTOR (31 downto 0);
           instrF : out  STD_LOGIC_VECTOR (31 downto 0);
			  instradd : in STD_LOGIC_VECTOR (31 downto 0);
			  wr : in STD_LOGIC;                                   --this is for programming
			  data : in STD_LOGIC_VECTOR (31 downto 0));
end component;
Component mux1bit is
	 Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : out  STD_LOGIC;
			  sel : in  STD_LOGIC);
end component;
Component data_memory is
	Port (	
				add : in  STD_LOGIC_VECTOR (31 downto 0);
			   we : in STD_LOGIC;
			   WD : in STD_LOGIC_VECTOR (31 downto 0);
				RD : out  STD_LOGIC_VECTOR (31 downto 0));
end component;
Component mul4 is
	Port (  a : in  STD_LOGIC_VECTOR (31 downto 0);
           b : out  STD_LOGIC_VECTOR (31 downto 0));
end component;
Component mux1data is
	Port ( a : in  STD_LOGIC_VECTOR (31 downto 0);
           b : in  STD_LOGIC_VECTOR (31 downto 0);
           c : out  STD_LOGIC_VECTOR (31 downto 0);
           sel : in  STD_LOGIC);
end component;
Component muxWsignal is
	Port ( a : in  STD_LOGIC_VECTOR (4 downto 0);
           b : in  STD_LOGIC_VECTOR (4 downto 0);
           c : out  STD_LOGIC_VECTOR (4 downto 0);
           sel : in  STD_LOGIC);
end component;
Component reg_decode is
	Port (  clk : in  STD_LOGIC;
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
			  instr2E : out  STD_LOGIC_VECTOR (4 downto 0));
end component;
Component reg_execute is
	Port ( clk : in  STD_LOGIC;
			  clrExecute : in STD_LOGIC;
			  stallExecute : in STD_LOGIC;
			  RegWriteE : in  STD_LOGIC;
           RegWriteM : out  STD_LOGIC;
           MemtoRegE : in  STD_LOGIC;
           MemtoRegM : out  STD_LOGIC;
           MemWriteE : in  STD_LOGIC;
           MemWriteM : out  STD_LOGIC;
           BranchE : in  STD_LOGIC;
           BranchM : out  STD_LOGIC;
           ZeroE : inout  STD_LOGIC;
           ZeroM : out  STD_LOGIC;
           AluResultE : in  STD_LOGIC_VECTOR (31 downto 0);
           AluResultM : out  STD_LOGIC_VECTOR (31 downto 0);
           WriteDataE : in  STD_LOGIC_VECTOR (31 downto 0);
           WriteDataM : out  STD_LOGIC_VECTOR (31 downto 0);
           WriteRegE : in  STD_LOGIC_VECTOR (4 downto 0);
           WriteRegM : out  STD_LOGIC_VECTOR (4 downto 0);
           PCBranchE : in  STD_LOGIC_VECTOR (31 downto 0);
           PCBranchM : out  STD_LOGIC_VECTOR (31 downto 0));
end component;
Component reg_fetch is
	Port ( clk : in  STD_LOGIC;
			  clrFetch : in STD_LOGIC;
			  stallFetch : in STD_LOGIC;
           instrF : in  STD_LOGIC_VECTOR (31 downto 0);
           instrD : out  STD_LOGIC_VECTOR (31 downto 0);
           pc_plus4F : in  STD_LOGIC_VECTOR (31 downto 0);
           pc_plus4D : out  STD_LOGIC_VECTOR (31 downto 0));
end component;
Component reg_memory is
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
end component;
Component reg_pc is
	 Port ( clk : in  STD_LOGIC;
			  pc_rst : in STD_LOGIC;
			  pc_next : in  STD_LOGIC_VECTOR (31 downto 0);
			  pc : out  STD_LOGIC_VECTOR (31 downto 0));
end component;
Component register_file is
	Port (
			  r1 : in  STD_LOGIC_VECTOR (4 downto 0);
           r2 : in  STD_LOGIC_VECTOR (4 downto 0);
           wr : in  STD_LOGIC_VECTOR (4 downto 0);
           wr_enable : in  STD_LOGIC;
           R1D : out  STD_LOGIC_VECTOR (31 downto 0);
           R2D : out  STD_LOGIC_VECTOR (31 downto 0);
           W3 : in  STD_LOGIC_VECTOR (31 downto 0));
end component;
Component sign_extension is
	Port ( a : in  STD_LOGIC_VECTOR (15 downto 0);
           b : out  STD_LOGIC_VECTOR (31 downto 0));
end component;
Component mux4data is
	Port ( a : in  STD_LOGIC_VECTOR (31 downto 0);
           b : in  STD_LOGIC_VECTOR (31 downto 0);
           c : in  STD_LOGIC_VECTOR (31 downto 0);
           d : in  STD_LOGIC_VECTOR (31 downto 0);
           e : out  STD_LOGIC_VECTOR (31 downto 0);
           sel : in  STD_LOGIC_VECTOR (1 downto 0));
end component;
Component comparator_32bit is
	 Port ( a : in  STD_LOGIC_VECTOR (31 downto 0);
           b : in  STD_LOGIC_VECTOR (31 downto 0);
           c : out  STD_LOGIC);
end component;
Component And32Bit is
    Port ( a : in  STD_LOGIC_VECTOR (31 downto 0);
           b : in  STD_LOGIC_VECTOR (31 downto 0);
           c : out  STD_LOGIC_VECTOR (31 downto 0));
end component;
Signal four_32bit:STD_LOGIC_VECTOR(31 downto 0) := "00000000000000000000000000000100";
Signal zero_32bit:STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
Signal pc_next,pc,pc_plus4F,pc_plus4D,pc_plus4E,PCBranchD,PCBranchM,PCBranchE,instrF,instrD,R1D,R1E,R2D,R2E:STD_LOGIC_VECTOR(31 downto 0):=(others=> '0');
Signal immD,immE,imm4,WriteDataM,WriteDataE,AluB,AluA,AluResultE,AluResultM,AluResultW,ReadDataE,ReadDataM,ReadDataW,Result:STD_LOGIC_VECTOR(31 downto 0):=(others=> '0');
Signal r1,r2,WriteRegW,WriteRegE,WriteRegM,instr1D,instr2D,instr1E,instr2E:STD_LOGIC_VECTOR(4 downto 0):=(others=> '0');
Signal pcSrcM,ZeroE,ZeroM,comp_out : STD_LOGIC:= '0';
Signal RegWriteD,RegWriteE,RegWriteM,RegWriteW,MemtoRegD,MemtoRegE,MemtoRegM,MemtoRegW:STD_LOGIC:= '0';
Signal MemWriteD,MemWriteE,MemWriteM,BranchD,BranchE,BranchM,CarryOut : STD_LOGIC:= '0';
Signal AluControlD,AluControlE : STD_LOGIC_VECTOR(2 downto 0):=(others=> '0');
Signal AluSrcD,AluSrcE,WriteRegSelD,WriteRegSelE : STD_LOGIC:= '0'; 
Signal clrFetch,clrDecode,clrExecute,clrMemory : STD_LOGIC:= '0';
Signal stallFetch,stallDecode,stallExecute,stallMemory : STD_LOGIC:= '0';
Signal imm :STD_LOGIC_VECTOR(15 downto 0):=(others=> '0');
Signal ForwardAE,ForwardBE : STD_LOGIC_VECTOR(1 downto 0):=(others=> '0');
Signal MaskLowerByte : STD_LOGIC_VECTOR(31 downto 0):= "00000000000000000000000011111111";
begin
	instr1D <= instrD(20 downto 16);
	instr2D <= instrD(15 downto 11);
	--WriteDataE <= R2E;
	r1 <= instrD(25 downto 21);
	r2 <= instr1D;
	imm <= instrD(15 downto 0);
	Debug  <= AluB;
	test <= R1E;
	ANSWER <= Result;
	
	U1:mux1data PORT MAP(pc_plus4F,PCBranchM,pc_next,pcSrcM);
	U2:reg_pc PORT MAP(clk,pc_rst,pc_next,pc);
	U3:alu_adder PORT MAP(pc,four_32bit,pc_plus4F);
	U4:Instruction_memory PORT MAP(pc,instrF,instradd,wr,data);
	U5:reg_fetch PORT MAP(clk,clrFetch,stallFetch,instrF,instrD,pc_plus4F,pc_plus4D);
	U6:sign_extension PORT MAP(imm,immD);
	U11:mul4 PORT MAP(immD,imm4);
	U12:alu_adder PORT MAP(imm4,pc_plus4D,PCBranchD);
	U7:register_file PORT MAP(r1,r2,WriteRegW,RegWriteW,R1D,R2D,Result);
	U20:comparator_32bit PORT MAP(R1D,R2D,comp_out);
	U8:reg_decode PORT MAP(clk,clrDecode,stallDecode,R1D,R1E,R2D,R2E,immD,immE,pc_plus4D,pc_plus4E,instr1D,instr1E,instr2D,instr2E);
	U18:mux4data PORT MAP(R1E,AluResultM,Result,R2E,AluA,forwardAE);
	U19:mux4data PORT MAP(R2E,AluResultM,Result,R1E,WriteDataE,forwardBE);
	U9:mux1data PORT MAP(WriteDataE,immE,AluB,AluSrcE);           
   U10:muxWsignal PORT MAP(instr1E,instr2E,WriteRegE,WriteRegSelE);	
	U13:mux1data PORT MAP(R2E,immE,AluB,AluSrcE);
	U14:alu_main PORT MAP(R1E,AluB,AluControlE,CarryOut,ZeroE,AluResultE);
	U15:reg_execute PORT MAP(clk,clrExecute,stallExecute,RegWriteE,RegWriteM,MemtoRegE,MemtoRegM,MemWriteE,MemWriteM,BranchE,BranchM,ZeroE,ZeroM,AluResultE,AluResultM,WriteDataE,WriteDataM,WriteRegE,WriteRegM,PCBranchE,PCBranchM);
	--U21:And32Bit PORT MAP(WriteDataM,MaskLowerByte,WriteDataAndM);
	U16:data_memory PORT MAP(AluResultM,MemWriteM,WriteDataM,ReadDataM);									--check weather clk is needed or not
	U17:reg_memory PORT MAP(clk,clrMemory,stallMemory,RegWriteM,RegWriteW,MemtoRegM,MemtoRegW,WriteRegM,WriteRegW,AluResultM,AluResultW,ReadDataM,ReadDataW);
	U22:mux1data PORT MAP(ReadDataW,AluResultW,Result,MemtoRegW);
	--control signals
		Process(clk)
		begin
			if(clk='1') then
				case instrD(31 downto 26) is 
					when "000000" =>
						case instrD(5 downto 0) is 
							when "100000" =>           			--add
								RegWriteE <= '1';
								MemtoRegE <= '1';
								MemWriteE <= '0';
								AluControlE <= "001";
								AluSrcE <= '0';
								WriteRegSelE <= '1';
								BranchE <= '0';
							when "100010" =>							--sub
								RegWriteE <= '1';
								MemtoRegE <= '1';
								MemWriteE <= '0';
								AluControlE <= "010";
								AluSrcE <= '0';
								WriteRegSelE <= '1';
								BranchE <= '0';
							when "100100" =>							--And
								RegWriteE <= '1';
								MemtoRegE <= '1';
								MemWriteE <= '0';
								AluControlE <= "011";
								AluSrcE <= '0';
								WriteRegSelE <= '1';
								BranchE <= '0';
							when "100101" =>							--Or
								RegWriteE <= '1';
								MemtoRegE <= '1';
								MemWriteE <= '0';
								AluControlE <= "100";
								AluSrcE <= '0';
								WriteRegSelE <= '1';
								BranchE <= '0';
							when "100110" =>							--xor
								RegWriteE <= '1';
								MemtoRegE <= '1';
								MemWriteE <= '0';
								AluControlE <= "111";
								AluSrcE <= '0';
								WriteRegSelE <= '1';
								BranchE <= '0';
							when "100111" =>							--Nand
								RegWriteE <= '1';
								MemtoRegE <= '1';
								MemWriteE <= '0';
								AluControlE <= "101";
								AluSrcE <= '0';
								WriteRegSelE <= '1';
								BranchE <= '0';
							when "101000" =>							--Nor
								RegWriteE <= '1';
								MemtoRegE <= '1';
								MemWriteE <= '0';
								AluControlE <= "110";
								AluSrcE <= '0';
								WriteRegSelE <= '1';
								BranchE <= '0';
							when others =>
								RegWriteE <= '0';
								MemtoRegE <= '0';
								MemWriteE <= '0';
								AluControlE <= "000";
								AluSrcE <= '0';
								WriteRegSelE <= '0';
								BranchE <= '0';
							end case;
						when "001000" => 								--Addi
							RegWriteE <= '1';
							MemtoRegE <= '1';
							MemWriteE <= '0';
							AluControlE <= "001";
							AluSrcE <= '1';
							WriteRegSelE <= '0';
							BranchE <= '0';
						when "001010" =>									--sui
							RegWriteE <= '1';
							MemtoRegE <= '1';
							MemWriteE <= '0';
							AluControlE <= "010";
							AluSrcE <= '1';
							WriteRegSelE <= '0';
							BranchE <= '0';
						when "001100" =>									--ANDi
							RegWriteE <= '1';
							MemtoRegE <= '1';
							MemWriteE <= '0';
							AluControlE <= "011";
							AluSrcE <= '1';
							WriteRegSelE <= '0';
							BranchE <= '0';
						when "001101" => 									--ORi
							RegWriteE <= '1';
							MemtoRegE <= '1';
							MemWriteE <= '0';
							AluControlE <= "100";
							AluSrcE <= '1';
							WriteRegSelE <= '0';
							BranchE <= '0';
						when "001110" =>     							--xori
							RegWriteE <= '1';
							MemtoRegE <= '1';
							MemWriteE <= '0';
							AluControlE <= "111";
							AluSrcE <= '1';
							WriteRegSelE <= '0';
							BranchE <= '0';
						when "001111" =>                         --NANDi
							RegWriteE <= '1';
							MemtoRegE <= '1';
							MemWriteE <= '0';
							AluControlE <= "101";
							AluSrcE <= '1';
							WriteRegSelE <= '0';
							BranchE <= '0';
						when "010000" =>								--NORi
							RegWriteE <= '1';
							MemtoRegE <= '1';
							MemWriteE <= '0';
							AluControlE <= "110";
							AluSrcE <= '1';
							WriteRegSelE <= '0';
							BranchE <= '0';
						when "000100" =>							--BEQ
							RegWriteE <= '0';
							MemtoRegE <= '0';
							MemWriteE <= '0';
							AluControlE <= "000";
							AluSrcE <= '0';
							WriteRegSelE <= '0';
							BranchE <= '1';
						when "100011" =>							--LW
							RegWriteE <= '1';
							MemtoRegE <= '0';
							MemWriteE <= '0';
							AluControlE <= "001";
							AluSrcE <= '1';
							WriteRegSelE <= '0';
							BranchE <= '0';
						when "101011" =>							--SW
							RegWriteE <= '0';
							MemtoRegE <= '0';
							MemWriteE<= '1';
							AluControlE <= "001";
							AluSrcE <= '1';
							WriteRegSelE <= '0';
							BranchE <= '0';
						when others =>
								RegWriteE <= '0';
								MemtoRegE <= '0';
								MemWriteE <= '0';
								AluControlE <= "000";
								AluSrcE <= '0';
								WriteRegSelE <= '0';
								BranchE <= '0';
						end case;
			end if;
		end process;
	end Behavioral;