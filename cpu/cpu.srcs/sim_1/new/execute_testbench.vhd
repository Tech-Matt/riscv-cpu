-- Testbench for execute.vhd

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_execute is
end tb_execute;

architecture Behavioral of tb_execute is

    -- Component declaration for the Unit Under Test (UUT)
    COMPONENT execute is
        PORT (
            -- INPUTS
            clk: in std_logic;
            rs1_val: in unsigned(31 downto 0);
            rs2_val: in unsigned(31 downto 0);
            immediate: in unsigned(31 downto 0);
            cond_opcode: in std_logic_vector(2 downto 0);
            alu_opcode: in std_logic_vector(2 downto 0);
            pc: in unsigned(31 downto 0);
            a_sel: in std_logic; -- mux a
            b_sel: in std_logic; -- mux b
            
            -- OUTPUTS
            branch_cond: out std_logic;
            alu_pre_result: out std_logic_vector(31 downto 0);
            alu_result: out std_logic_vector(31 downto 0)
        );
    END COMPONENT;

    -- Signals for the UUT
    signal clk: std_logic := '0';
    signal rs1_val: unsigned(31 downto 0) := (others => '0');
    signal rs2_val: unsigned(31 downto 0) := (others => '0');
    signal immediate: unsigned(31 downto 0) := (others => '0');
    signal cond_opcode: std_logic_vector(2 downto 0) := (others => '0');
    signal alu_opcode: std_logic_vector(2 downto 0) := (others => '0');
    signal pc: unsigned(31 downto 0) := (others => '0');
    signal a_sel: std_logic := '0';
    signal b_sel: std_logic := '0';
    signal branch_cond: std_logic;
    signal alu_pre_result: std_logic_vector(31 downto 0);
    signal alu_result: std_logic_vector(31 downto 0);

    -- Clock period definition
    constant clk_period : time := 10 ns;

begin

    uut: execute PORT MAP (
          clk => clk,
          rs1_val => rs1_val,
          rs2_val => rs2_val,
          immediate => immediate,
          cond_opcode => cond_opcode,
          alu_opcode => alu_opcode,
          pc => pc,
          a_sel => a_sel,
          b_sel => b_sel,
          branch_cond => branch_cond,
          alu_pre_result => alu_pre_result,
          alu_result => alu_result
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

        -- Test case 1: ADD operation
        rs1_val <= to_unsigned(10, 32);
        rs2_val <= to_unsigned(5, 32);
        alu_opcode <= "000"; -- ADD
        a_sel <= '1';
        b_sel <= '1';
        wait for clk_period*2;

        -- Test case 2: SUB operation
        alu_opcode <= "010"; -- SUB
        wait for clk_period*2;

        -- Test case 3: Branch equal (BEQ)
        rs1_val <= to_unsigned(15, 32);
        rs2_val <= to_unsigned(15, 32);
        cond_opcode <= "000"; -- BEQ
        a_sel <= '1';
        b_sel <= '1';
        wait for clk_period*2;

        -- Test case 4: XOR operation
        rs1_val <= to_unsigned(12, 32);
        rs2_val <= to_unsigned(10, 32);
        alu_opcode <= "100"; -- XOR
        wait for clk_period*2;

        -- End simulation
        wait;
    end process;

end Behavioral;
