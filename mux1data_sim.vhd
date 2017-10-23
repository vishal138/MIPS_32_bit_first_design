--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   06:45:25 10/22/2017
-- Design Name:   
-- Module Name:   /home/vishal/xilinx/MIPS_32_bit_first_design/mux1data_sim.vhd
-- Project Name:  MIPS_32_bit_first_design
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux1data
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
 
ENTITY mux1data_sim IS
END mux1data_sim;
 
ARCHITECTURE behavior OF mux1data_sim IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux1data
    PORT(
         a : IN  std_logic_vector(31 downto 0);
         b : IN  std_logic_vector(31 downto 0);
         c : OUT  std_logic_vector(31 downto 0);
         sel : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(31 downto 0) := (others => '0');
   signal b : std_logic_vector(31 downto 0) := (others => '0');
   signal sel : std_logic := '0';

 	--Outputs
   signal c : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux1data PORT MAP (
          a => a,
          b => b,
          c => c,
          sel => sel
        );

   -- Clock process definitions
  
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		a <= "00000000000000000000000000000010";
		b <= "00000000000000000000000000000001";
		sel <= '1';
		wait for 100 ns;	
		a <= "00000000000000000000000000000111";
		b <= "00000000000000000000000000000011";
		sel <= '0';
   end process;

END;
