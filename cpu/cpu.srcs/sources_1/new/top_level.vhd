----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/12/2023 05:27:37 PM
-- Design Name: 
-- Module Name: top_level - Behavioral
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

entity top_level is
    Port (
        clk: in std_logic;
        reset: in std_logic
    );
end top_level;

architecture Behavioral of top_level is

-- STATE TYPE DECLARATION
type state_type is (F, D, X, M, W); -- FETCH / DECODE / EXECUTE / MEMORY / WRITE-BACK
signal state, next_state: state_type;

-- COMPONENT DECLARATION FOR EACH STAGE
COMPONENT instruction_fetch is
    PORT ( 
        -- INPUTS
        clk: in std_logic; 
        pc_in: in unsigned(31 downto 0); 
        load_en: in std_logic;
        res: in std_logic;
        
        -- OUTPUTS
        instr_out: out std_logic_vector(31 downto 0);
        current_pc: out unsigned(31 downto 0);
        next_pc: out unsigned(31 downto 0)
    );
END COMPONENT;

COMPONENT instruction_decode is
    PORT (
        -- INPUTS
        clk: in std_logic; 
        instr: in std_logic_vector (31 downto 0);
        write_en: in std_logic;
        rd_value: in unsigned(31 downto 0);
        rd_wr_enable: in std_logic;
        
        -- OUTPUTS
        rs1_val: out std_logic_vector(31 downto 0);
        rs2_val: out std_logic_vector (31 downto 0);
        immediate: out unsigned(31 downto 0);
        op_class: out std_logic_vector(4 downto 0);
        alu_opcode: out std_logic_vector(2 downto 0); 
        cond_opcode: out std_logic_vector(2 downto 0);
        a_sel: out std_logic;
        b_sel: out std_logic
    );
END COMPONENT;

COMPONENT execute is
    PORT(
        -- INPUT
        clk: in std_logic;
        rs1_val: in unsigned(31 downto 0);
        rs2_val: in unsigned(31 downto 0);
        immediate: in unsigned(31 downto 0);
        cond_opcode: in std_logic_vector(2 downto 0);
        alu_opcode: in std_logic_vector(2 downto 0);
        pc: in unsigned(31 downto 0);
        a_sel: in std_logic; -- mux a
        b_sel: in std_logic; -- mux b
        -- OUTPUT
        branch_cond: out std_logic;
        alu_pre_result: out unsigned(31 downto 0);
        alu_result: out unsigned(31 downto 0)
    );
END COMPONENT;

COMPONENT memory_write_back is
    PORT(
    -- INPUT
    clk: in std_logic;
    branch_cond: in std_logic;
    next_pc: in unsigned(31 downto 0);
    alu_result: in unsigned(31 downto 0);
    alu_pre_result: in std_logic_vector(31 downto 0);
    op_class: in std_logic_vector(4 downto 0);
    mem_we: in std_logic;
    rs2_val: in std_logic_vector(31 downto 0);
    rsta: in std_logic;
    
    -- OUTPUT 
    pc_out: out unsigned(31 downto 0);
    rd_value: out unsigned(31 downto 0)
    );
END COMPONENT;

-- INTERNAL SIGNALS:
signal clk: std_logic;
-- INSTRUCTION FETCH
signal pc_in: unsigned(31 downto 0);
signal load_en: std_logic; -- activate or deactivate write on PC Register (active low)
signal instr_res: std_logic; -- Reset instruction memory (active high)
signal instr_out: std_logic_vector(31 downto 0); 
signal current_pc: unsigned(31 downto 0);
signal next_pc: unsigned(31 downto 0);
-----------------------------------------------------------------------------------------
-- INSTRUCTION DECODE
signal write_en: std_logic; -- For writing on register file
signal rd_value: unsigned(31 downto 0); -- Possible Value to be written to register
signal rd_wr_enable: std_logic; -- Choose whether to read or write to register file (0 = read, 1 = write)
signal rs1_val: std_logic_vector(31 downto 0);
signal rs2_val: std_logic_vector(31 downto 0);
signal immediate: unsigned(31 downto 0);
signal op_class: std_logic_vector(4 downto 0);
signal alu_opcode: std_logic_vector(2 downto 0);
signal cond_opcode: std_logic_vector(2 downto 0);
signal a_sel: std_logic;
signal b_sel: std_logic;
------------------------------------------------------------------------------------------
-- EXECUTION
signal branch_cond: std_logic;
signal alu_pre_result: unsigned(31 downto 0);
signal alu_result: unsigned(31 downto 0);
------------------------------------------------------------------------------------------
-- MEMORY AND WRITE BACK
signal mem_we: std_logic;
signal rsta: std_logic;
------------------------------------------------------------------------------------------

begin

-- STATE PROCESS
process(clk, reset)
begin
    if reset = '1' then
        state <= F;  -- Initialize to Instruction Fetch state
    elsif rising_edge(clk) then
        state <= next_state;  -- Transition to the next state on clock edge
    end if;
end process;

-- NEXT STATE LOGIC PROCESS
process(state)
begin
    case state is
        when F =>
            next_state <= D;  -- Transition from IF to ID
        when D =>
            next_state <= X;  -- Transition from ID to EX
        when X =>
            next_state <= M;  -- Transition from EX to MEM
        when M =>
            next_state <= W;  -- Transition from MEM to WB
        when W =>
            next_state <= F;  -- Transition from WB to IF (next instruction)
        when others =>
            next_state <= F;  -- Default to IF state
    end case;
end process;


-- INSTRUCTION FETCH INSTANTIATION
InstrFetch: instruction_fetch
    PORT MAP (
        clk => clk,
        pc_in => pc_in,
        load_en => load_en,
        res => instr_res,
        instr_out => instr_out,
        current_pc => current_pc,
        next_pc => next_pc
    );
-- INSTRUCTION DECODE INSTANTIATION
InstrDec: instruction_decode
    PORT MAP(
        clk => clk,
        instr => instr_out,
        write_en => write_en,
        rd_value => rd_value,
        rd_wr_enable => rd_wr_enable,
        rs1_val => rs1_val,
        rs2_val => rs2_val
        immediate => immediate,
        op_class => op_class,
        alu_opcode => alu_opcode,
        cond_opcode => cond_opcode
        a_sel => a_sel,
        b_sel => b_sel,
    );
-- EXECUTE INSTANTIATION
Exec: execute
    PORT MAP(
        clk => clk,
        rs1_val => rs1_val,
        rs2_val => rs2_val,
        immediate => immediate,
        cond_opcode => cond_opcode,
        alu_opcode => alu_opcode,
        pc => current_pc,
        a_sel => a_sel,
        b_sel => b_sel,
        branch_cond => branch_cond,
        alu_pre_result => alu_pre_result,
        alu_result => alu_result
    );
-- MEMORY AND WRITE BACK INSTANTIATION
Mem_WB: memory_write_back
    PORT MAP(
        clk => clk,
        branch_cond => branch_cond,
        next_pc => next_pc,
        alu_result => alu_result,
        alu_pre_result => alu_pre_result,
        op_class => op_class,
        mem_we => mem_we,
        rs2_val => rs2_val,
        rsta => rsta,
        pc_out => pc_in,
        rd_value => rd_value
    );
 

end Behavioral;
