-- Testbench for instruction_decode.vhd

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_instruction_decode is
end tb_instruction_decode;

architecture Behavioral of tb_instruction_decode is

    -- Component declaration for the Unit Under Test (UUT)
    COMPONENT instruction_decode is
        PORT (
            -- INPUTS
            clk: in std_logic; 
            instr: in std_logic_vector (31 downto 0); -- Instruction coming from Instruction Fetch stage
            write_en: in std_logic; -- Write enable for the register file
            rd_value: in unsigned(31 downto 0); -- Possible value to be written to register (coming from write back)
            rd_wr_enable: in std_logic; -- Choose whether to read or write to register file (0 = read, 1 = write)
            
            -- OUTPUTS
            rs1_val: out std_logic_vector(31 downto 0); -- Register source 1 value
            rs2_val: out std_logic_vector (31 downto 0); -- Register source 2 value
            immediate: out unsigned(31 downto 0); -- 32 bit extended Immediate
            op_class: out std_logic_vector(4 downto 0); -- Operation type (Encoded ONE-HOT OSLBJ)
            alu_opcode: out std_logic_vector(2 downto 0); 
            cond_opcode: out std_logic_vector(2 downto 0);
            a_sel: out std_logic; -- Controls mux A in execute stage
            b_sel: out std_logic -- Controls mux B in execute stage
        );
    END COMPONENT;

    -- Signals for the UUT
    signal clk: std_logic := '0';
    signal instr: std_logic_vector(31 downto 0) := (others => '0');
    signal write_en: std_logic := '0';
    signal rd_value: unsigned(31 downto 0) := (others => '0');
    signal rd_wr_enable: std_logic := '0';
    signal rs1_val: std_logic_vector(31 downto 0);
    signal rs2_val: std_logic_vector(31 downto 0);
    signal immediate: unsigned(31 downto 0);
    signal op_class: std_logic_vector(4 downto 0);
    signal alu_opcode: std_logic_vector(2 downto 0);
    signal cond_opcode: std_logic_vector(2 downto 0);
    signal a_sel: std_logic;
    signal b_sel: std_logic;

    -- Clock period definition
    constant clk_period : time := 10 ns;

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: instruction_decode PORT MAP (
          clk => clk,
          instr => instr,
          write_en => write_en,
          rd_value => rd_value,
          rd_wr_enable => rd_wr_enable,
          rs1_val => rs1_val,
          rs2_val => rs2_val,
          immediate => immediate,
          op_class => op_class,
          alu_opcode => alu_opcode,
          cond_opcode => cond_opcode,
          a_sel => a_sel,
          b_sel => b_sel
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
        -- hold reset state for 100 ns.
        wait for 100 ns;  

        -- Test case 1: Load instruction
        instr <= "00000000111100000110000010010011"; -- Example I-type instruction
        write_en <= '1';
        rd_wr_enable <= '0';
        wait for clk_period*2;

        -- Test case 2: Write to register file
        rd_value <= to_unsigned(10, 32);
        rd_wr_enable <= '1';
        wait for clk_period*2;

        -- Test case 3: Read from register file
        rd_wr_enable <= '0';
        wait for clk_period*4;

        -- End simulation
        wait;
    end process;

end Behavioral;
