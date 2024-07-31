----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Rizzo Mattia
-- 
-- Create Date: 09/12/2023 05:27:37 PM
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
-- Instruction Fetch stage
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

entity instruction_fetch is

    port ( 
    -- INPUTS
    clk: in std_logic; -- runs registers of PC, block ram, NPC e IR
    pc_in: in unsigned(31 downto 0); -- Program counter coming from other stages
    load_en: in std_logic; -- Activate or deactivate write on PC register (active low)
    res: in std_logic;  -- synchronous reset for instruction memory (active high)
    
    -- OUTPUTS
    instr_out: out std_logic_vector(31 downto 0); -- Instruction fetched from instruction memory
    current_pc: out unsigned(31 downto 0); -- Current PC connected to the next stages
    next_pc: out unsigned(31 downto 0) -- Next PC (PC + 4 bytes)
    );
    
end instruction_fetch;

architecture Behavioral of instruction_fetch is

signal pc: unsigned(31 downto 0); -- Current program counter
signal instr: std_logic_vector(31 downto 0); -- Instruction fetched

COMPONENT blk_mem_gen_0
  PORT (
    clka : IN STD_LOGIC;
    rsta : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(31 DOWNTO 0); --
    douta : OUT STD_LOGIC_VECTOR(31 DOWNTO 0) -- Instruction coming out from the Instruction Memory
  );
END COMPONENT;

begin

-- Block ram init (Instruction Memory)
instr_mem : blk_mem_gen_0
  PORT MAP (
    clka => clk,
    rsta => res,
    ena => '1', -- For now instruction memory is always active
    addra => std_logic_vector(pc),
    douta => instr
  );
  
-- UPDATE INTERNAL PC REGISTER
process (clk) is
begin
    if rising_edge(clk) then
        if res = '1' then -- Reset PC
            pc <= (others => '0');
        elsif load_en = '0' then
            pc <= pc_in;
        end if;
    end if;
end process;

-- UPDATE NEXT PC
process (clk) is
begin 
    if rising_edge(clk) then
        next_pc <= pc + 4;
    end if;
end process;

-- UPDATE CURRENT PC REGISTER
process (clk) is
begin
    if rising_edge(clk) then
        current_pc <= pc;
    end if;
end process;
  
instr_out <= instr; 
  
end Behavioral;
