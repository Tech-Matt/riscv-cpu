-- Testbench for instruction_fetch.vhd

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_instruction_fetch is
end tb_instruction_fetch;

architecture Behavioral of tb_instruction_fetch is

    COMPONENT instruction_fetch is
        PORT ( 
            clk: in std_logic; 
            pc_in: in unsigned(31 downto 0); 
            load_en: in std_logic;
            res: in std_logic;
            instr_out: out std_logic_vector(31 downto 0);
            current_pc: out unsigned(31 downto 0);
            next_pc: out unsigned(31 downto 0)
        );
    END COMPONENT;

    -- Signals for the UUT
    signal clk: std_logic := '0';
    signal pc_in: unsigned(31 downto 0) := (others => '0');
    signal load_en: std_logic := '1';
    signal res: std_logic := '0';
    signal instr_out: std_logic_vector(31 downto 0);
    signal current_pc: unsigned(31 downto 0);
    signal next_pc: unsigned(31 downto 0);

    -- Clock period definition
    constant clk_period : time := 10 ns;

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: instruction_fetch PORT MAP (
          clk => clk,
          pc_in => pc_in,
          load_en => load_en,
          res => res,
          instr_out => instr_out,
          current_pc => current_pc,
          next_pc => next_pc
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
        res <= '1';
        wait for clk_period*2;
        res <= '0';

        -- Test case 1: Load PC
        pc_in <= to_unsigned(4, 32);
        load_en <= '0';
        wait for clk_period*2;
        load_en <= '1';

        -- Test case 2: Fetch next instruction
        wait for clk_period*50;

        -- Test case 3: Reset
        res <= '1';
        wait for clk_period*2;
        res <= '0';

        -- End simulation
        wait;
    end process;

end Behavioral;