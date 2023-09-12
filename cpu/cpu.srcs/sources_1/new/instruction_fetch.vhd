----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity instruction_fetch is

    port ( 
    clk: in std_logic; -- Pilota i registri di PC, la block ram, NPC e IR
    pc_in: in std_logic_vector(31 downto 0); --Program counter in arrivo dagli altri stage
    load_en: in std_logic; -- Attiva o disattiva la scrittura sul registro del program counter
    res: in std_logic;  -- Reset asincrono per la instruction memory
    instr: out std_logic_vector(31 downto 0) --istruzione fetchata dalla instruction memory
    );
    
end instruction_fetch;

architecture Behavioral of instruction_fetch is

signal pc: std_logic_vector(31 downto 0); -- Current program counter

COMPONENT blk_mem_gen_0
  PORT (
    clka : IN STD_LOGIC;
    rsta : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(31 DOWNTO 0) 
  );
END COMPONENT;

begin

-- Instanzio la block ram
instr_mem : blk_mem_gen_0
  PORT MAP (
    clka => clk,
    rsta => res,
    ena => '1', -- Per adesso imposto che l'istr_mem è sempre attiva, al massimo disattivo il registro del PC
    addra => pc,
    douta => instr
  );
  
  
 

end Behavioral;
