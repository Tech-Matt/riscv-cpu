----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/31/2024 01:51:00 PM
-- Design Name: 
-- Module Name: memory_write_back - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity memory_write_back is
  Port ( 
  -- INPUT
    clk: in std_logic;
    branch_cond: in std_logic;
    next_pc: in unsigned(31 downto 0);
    alu_result: in unsigned(31 downto 0);
    alu_pre_result: in std_logic_vector(31 downto 0);
    op_class: in std_logic_vector(4 downto 0);
    mem_we: in std_logic;
    rs2_val: in std_logic_vector(31 downto 0);
    rsta: in std_logic; -- ASYNCHRONOUS RESET FOR THE MEMORY
    
   -- OUTPUT 
    pc_out: out unsigned(31 downto 0);
    rd_value: out unsigned(31 downto 0)
  );
end memory_write_back;

architecture Behavioral of memory_write_back is

-- DATA MEMORY
COMPONENT blk_mem_gen_1
  PORT (
    clka : IN STD_LOGIC;
    rsta : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(31 DOWNTO 0) 
  );
END COMPONENT;

-- SIGNAL DECLARATIONS
signal wea: std_logic_vector(0 downto 0); -- MUX between mem_we and op_class
signal mem_out: std_logic_vector(31 downto 0); -- Value coming out of the memory

begin

-- DATA MEMORY INSTANTIATION
data_mem : blk_mem_gen_1
  PORT MAP (
    clka => clk,
    rsta => rsta,
    wea => wea,
    addra => alu_pre_result,
    dina => rs2_val,
    douta => mem_out
  ); 
  
-- WRITE ENABLE MULTIPLEXER


end Behavioral;
