----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/15/2023 09:44:15 AM
-- Design Name: 
-- Module Name: instruction_decode - Behavioral
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

entity instruction_decode is
  Port ( 
        -- INPUTS
        clk: in std_logic; 
        pc: in unsigned(31 downto 0); -- Current Program counter
        next_pc: in unsigned(31 downto 0); -- Next program counter
        instr: in std_logic_vector (31 downto 0); -- Instruction coming from Instruction Fetch stage
        write_en: in std_logic; -- Write emable for the register file
        rd_value: in unsigned(31 downto 0); -- Possible value to be written to register (chosen by next stages)
        
        -- OUTPUTS
        rs_1: out unsigned(31 downto 0); -- Register source 1 value
        rs_2: out unsigned (31 downto 0); -- Register source 2 value
        immediate: out unsigned(31 downto 0); 
        op_class: out std_logic_vector(4 downto 0); -- Operation type (Encoded ONE-HOT OSLBJ)
        alu_opcode: out std_logic_vector(2 downto 0);
        );
end instruction_decode;

architecture Behavioral of instruction_decode is

-- Register File
COMPONENT dist_mem_gen_0
  PORT (
    a : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    d : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    dpra : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    clk : IN STD_LOGIC;
    we : IN STD_LOGIC;
    qspo : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    qdpo : OUT STD_LOGIC_VECTOR(31 DOWNTO 0) 
  );
END COMPONENT;

begin

register_file: dist_mem_gen_0
  PORT MAP (
    a <= ADDR_A, -- Read Address of RS_A
    d <= rd_value, -- Data input for write operations
    dpra <= ADDR_B, -- Read Address of RS_B
    clk <= clk,
    we <= write_en, -- Write enable
    qspo <= RS_A, -- RS_A Data Output
    qdpo <= RS_B -- RS_B Data Output
  );


end Behavioral;
