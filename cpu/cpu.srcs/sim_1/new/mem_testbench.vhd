-- Testbench for memory_write_back.vhd

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_memory_write_back is
end tb_memory_write_back;

architecture Behavioral of tb_memory_write_back is

    -- Component declaration for the Unit Under Test (UUT)
    COMPONENT memory_write_back is
        PORT (
            -- INPUTS
            clk: in std_logic;
            branch_cond: in std_logic;
            next_pc: in unsigned(31 downto 0);
            alu_result: in unsigned(31 downto 0);
            alu_pre_result: in std_logic_vector(31 downto 0);
            op_class: in std_logic_vector(4 downto 0);
            mem_we: in std_logic;
            rs2_val: in std_logic_vector(31 downto 0);
            rsta: in std_logic;
            
            -- OUTPUTS
            pc_out: out unsigned(31 downto 0);
            rd_value: out unsigned(31 downto 0)
        );
    END COMPONENT;

    -- Signals for the UUT
    signal clk: std_logic := '0';
    signal branch_cond: std_logic := '0';
    signal next_pc: unsigned(31 downto 0) := (others => '0');
    signal alu_result: unsigned(31 downto 0) := (others => '0');
    signal alu_pre_result: std_logic_vector(31 downto 0) := (others => '0');
    signal op_class: std_logic_vector(4 downto 0) := (others => '0');
    signal mem_we: std_logic := '0';
    signal rs2_val: std_logic_vector(31 downto 0) := (others => '0');
    signal rsta: std_logic := '0';
    signal pc_out: unsigned(31 downto 0);
    signal rd_value: unsigned(31 downto 0);

    -- Clock period definition
    constant clk_period : time := 10 ns;

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: memory_write_back PORT MAP (
          clk => clk,
          branch_cond => branch_cond,
          next_pc => next_pc,
          alu_result => alu_result,
          alu_pre_result => alu_pre_result,
          op_class => op_class,
          mem_we => mem_we,
          rs2_val => rs2_val,
          rsta => rsta,
          pc_out => pc_out,
          rd_value => rd_value
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
        -- Hold reset state for 100 ns
        wait for 100 ns;

        -- Test case 1: Normal operation, write back ALU result
        alu_result <= to_unsigned(20, 32);
        next_pc <= to_unsigned(4, 32);
        op_class <= "10000"; -- Operation
        mem_we <= '0';
        wait for clk_period*2;

        -- Test case 2: Load operation, write back memory data
        op_class <= "00100"; -- Load
        mem_we <= '1';
        rs2_val <= std_logic_vector(to_unsigned(25, 32));
        alu_pre_result <= std_logic_vector(to_unsigned(10, 32));
        wait for clk_period*2;

        -- Test case 3: Store operation
        op_class <= "01000"; -- Store
        wait for clk_period*2;

        -- Test case 4: Branch taken
        op_class <= "00010"; -- Branch
        branch_cond <= '1';
        alu_result <= to_unsigned(30, 32);
        wait for clk_period*2;

        -- Test case 5: Jump operation
        op_class <= "00001"; -- Jump
        alu_result <= to_unsigned(50, 32);
        wait for clk_period*2;

        -- End simulation
        wait;
    end process;

end Behavioral;
