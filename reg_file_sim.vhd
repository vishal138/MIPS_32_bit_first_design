--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:36:47 10/22/2017
-- Design Name:   
-- Module Name:   /home/vishal/xilinx/MIPS_32_bit_first_design/reg_file_sim.vhd
-- Project Name:  MIPS_32_bit_first_design
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: register_file
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
 
ENTITY reg_file_sim IS
END reg_file_sim;
 
ARCHITECTURE behavior OF reg_file_sim IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT register_file
    PORT(
         r1 : IN  std_logic_vector(4 downto 0);
         r2 : IN  std_logic_vector(4 downto 0);
         wr : IN  std_logic_vector(4 downto 0);
         wr_enable : IN  std_logic;
         R1D : OUT  std_logic_vector(31 downto 0);
         R2D : OUT  std_logic_vector(31 downto 0);
         W3 : IN  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   
   signal r1 : std_logic_vector(4 downto 0) := (others => '0');
   signal r2 : std_logic_vector(4 downto 0) := (others => '0');
   signal wr : std_logic_vector(4 downto 0) := (others => '0');
   signal wr_enable : std_logic := '0';
   signal W3 : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal R1D : std_logic_vector(31 downto 0);
   signal R2D : std_logic_vector(31 downto 0);

  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: register_file PORT MAP (
      
          r1 => r1,
          r2 => r2,
          wr => wr,
          wr_enable => wr_enable,
          R1D => R1D,
          R2D => R2D,
          W3 => W3
        );

  
 

   -- Stimulus process
   stim_proc: process
   begin		
    wait for 20 ns;
		r1 <= "00000";
		r2 <= "00001";
		wr_enable <= '1';
	wait for 20 ns;
		r1 <= "00000";
		r2 <= "00001";
		wr_enable <= '0';
	wait for 20 ns;
		r1 <= "00000";
		r2 <= "00001";
		wr_enable <= '0';
		
    
   end process;

END;
