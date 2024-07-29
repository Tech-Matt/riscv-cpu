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
        rd_wr_enable: in std_logic; -- Choose whether to read or write to register file (0 = read, 1 = write)
        
        -- OUTPUTS
        rs1_val: out unsigned(31 downto 0); -- Register source 1 value
        rs2_val: out unsigned (31 downto 0); -- Register source 2 value
        rd: out unsigned(31 downto 0); -- Destination register address
        immediate: out unsigned(31 downto 0); -- 32 bit extended Immediate
        op_class: out std_logic_vector(4 downto 0); -- Operation type (Encoded ONE-HOT OSLBJ)
        alu_opcode: out std_logic_vector(2 downto 0); 
        cond_opcode: out std_logic_vector(2 downto 0);
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

-- Decoder
COMPONENT decoder
  Port ( 
    -- INPUT
    instr: in std_logic_vector(31 downto 0);

    -- OUTPUT
    op_class: out std_logic_vector(4 downto 0); 
    alu_opcode: out std_logic_vector(2 downto 0); 
    cond_opcode: out std_logic_vector(2 downto 0); 
    rd: out std_logic_vector(4 downto 0);
    rs1: out std_logic_vector(4 downto 0);
    rs2: out std_logic_vector(4 downto 0);
    immediate: out std_logic_vector(11 downto 0)
  );
END COMPONENT;

signal rs1: unsigned(31 downto 0);
signal rs2: unsigned(31 downto 0);
shared variable imm_12: unsigned(11 downto 0);
shared variable imm_32: unsigned(31 downto 0);
shared variable r_input: unsigned(31 downto 0) := (others => '0'); -- MULTIPLEX BETWEEN RS1 AND RD


begin

-- MULTIPLEXER TO SWITCH BETWEEN READ AND WRITE MODE
process(rd_wr_enable) is
begin
    if rd_wr_enable = '0' then
        r_input := unsigned(rs1);
    else
        r_input := unsigned(rd);
    end if;
end process;

dec: decoder
  PORT MAP (
    instr => instr,
    op_class => op_class,
    alu_opcode => alu_opcode,
    cond_opcode => cond_opcode,
    rd => rd,
    rs1 => rs1,
    rs2 => rs2,
    immediate => imm_12
  );

register_file: dist_mem_gen_0
  PORT MAP (
    a => rs1, -- Read Address of RS_A
    d => rd_value, -- Data input for write operations
    dpra => rs2, -- Read Address of RS_B
    clk => clk,
    we => write_en, -- Write enable
    qspo => rs1_val, -- RS_A Data Output
    qdpo => rs_val -- RS_B Data Output
  );

-- IMMEDIATE 32 BIT EXTENSION
process(imm_12) is
begin
    -- Perform sign extension
    if imm12(11) = '0' then
      extended_imm := signed("00000000000000000000" & imm12); -- Zero extend if MSB is 0
    else
      extended_imm := signed("11111111111111111111" & imm12); -- Sign extend if MSB is 1
    end if;
    
    -- Assign the extended immediate to the output
    immediate <= extended_imm;

end process; 

end Behavioral;
