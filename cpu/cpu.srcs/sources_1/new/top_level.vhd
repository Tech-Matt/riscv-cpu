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
        pc: in unsigned(31 downto 0);
        next_pc: in unsigned(31 downto 0);
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

-- INSTRUCTION DECODE INSTANTIATION

-- EXECUTE INSTANTIATION

-- MEMORY AND WRITE BACK INSTANTIATION

-- SIGNAL ASSIGNMENT TO CONNECT DIFFERENT STAGES

end Behavioral;
