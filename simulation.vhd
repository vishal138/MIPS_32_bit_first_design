--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   06:36:22 10/18/2017
-- Design Name:   
-- Module Name:   /home/vishal/xilinx/MIPS_32_bit_first_design/simulation.vhd
-- Project Name:  MIPS_32_bit_first_design
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Main
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY simulation IS
END simulation;
 
ARCHITECTURE behavior OF simulation IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Main
    PORT(
         clk : IN  std_logic;
         wr : IN  std_logic;
			pc_rst : IN  std_logic;
         data : IN  std_logic_Vector(31 downto 0);
			instradd : IN  std_logic_Vector(31 downto 0);
			Debug : OUT  std_logic_vector(31 downto 0);
			test : OUT  std_logic_vector(31 downto 0);
         ANSWER : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal wr : std_logic := '1';
	signal pc_rst : std_logic := '1';
   signal data : std_logic_vector(31 downto 0) := (others=>'0');
	signal instradd : std_logic_vector(31 downto 0) := (others=>'0');

 	--Outputs
   signal ANSWER : std_logic_vector(31 downto 0);
	signal Debug : std_logic_vector(31 downto 0);
	signal test : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Main PORT MAP (
          clk => clk,
          wr => wr,
			 pc_rst => pc_rst,
          data => data,
			 instradd => instradd,
          Debug => Debug,
			 test => test,
			 ANSWER => ANSWER
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
--      wait for 20 ns;
--			wr <= '1';
--			data <= "00000001000100000000000000000100";
--			instradd<="00000000000000000000000000000011";
--			pc_rst <='1';
		wait for 20 ns;
			wr <= '0';
			pc_rst <= '0';
--		wait for 20 ns;
--			wr <= '1';
--			data <= "00110101001100000000000000000101";
--			instradd<="00000000000000000000000000000100";
--			pc_rst <='1';
--		wait for 20 ns;
--			wr <= '0';
--			pc_rst <= '0';
   end process;

END;
