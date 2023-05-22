----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/22/2023 03:08:58 PM
-- Design Name: 
-- Module Name: instruction_fetch - Behavioral
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

-- The purpose of this block is to read the instruction memory word (32 bit) pointed by the PC, program counter. We can use a BRAM, which
-- automatically comes with an output register to store the word to be decoded by the instruction decode stage. 

entity instruction_fetch is
    Port ( 
        clk, res: in std_logic;
        program_counter: in unsigned(10 downto 0);
        load_en: in std_logic; --load enable for the program counter
        next_pc: out unsigned (11 downto 0); --next program counter
        instruction: out std_logic_vector(31 downto 0) --instruction to be sent to the instruction decode stage
        ); 
        
end instruction_fetch;

architecture Behavioral of instruction_fetch is

signal pc: unsigned(9 downto 0);

-- Instruction memory entity
COMPONENT blk_mem_gen_0
  PORT (
    clka : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(31 DOWNTO 0) 
  );
END COMPONENT;

begin

pc <= program_counter;

-- Instruction Memory Instantiation
instr_mem : blk_mem_gen_0
  PORT MAP (
    clka => clk,
    wea => "0",
    addra => std_logic_vector(pc),
    dina => (others => '0'),
    douta => instruction
  );

-- Program counter update
process (clk, res) begin
    if res = '1' then
        pc <= (others => '0');
    end if;
    
    if rising_edge (clk) then
        pc <= pc + 1;
    end if;
    
end process;

end Behavioral;
