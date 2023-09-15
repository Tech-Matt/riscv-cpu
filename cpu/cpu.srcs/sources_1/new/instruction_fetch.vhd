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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity instruction_fetch is

    port ( 
    clk: in std_logic; -- Pilota i registri di PC, la block ram, NPC e IR
    pc_in: in unsigned(31 downto 0); --Program counter in arrivo dagli altri stage
    load_en: in std_logic; -- Attiva o disattiva la scrittura sul registro del program counter
    res: in std_logic;  -- Reset asincrono per la instruction memory (attivo alto)
    instr_out: out std_logic_vector(31 downto 0); --istruzione fetchata dalla instruction memory
    current_pc: out unsigned(31 downto 0); --Program counter attuale in uscita (utile per i branch)
    next_pc: out unsigned(31 downto 0) --Program counter attuale + 4byte
    );
    
end instruction_fetch;

architecture Behavioral of instruction_fetch is

signal pc: unsigned(31 downto 0); -- Current program counter
signal instr: std_logic_vector(31 downto 0); -- Instruction fetched

COMPONENT blk_mem_gen_0
  PORT (
    clka : IN STD_LOGIC;
    rsta : IN STD_LOGIC; --reset asincrono
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
    addra => std_logic_vector(pc),
    douta => instr
  );
  
  -- Aggiorno il registro del program counter
  program_counter: process (clk)
  begin
  if(rising_edge(clk)) then
    if(load_en = '1') then
        pc <= pc_in; -- Questo è un segnale interno
        current_pc <= pc_in; -- Questo va in uscita
    end if;
  end if;
  end process;
  
  instr_out <= instr; -- Appena si aggiorna il program counter vado a leggere in memoria con un delay di 1 clock cycle
  
  -- Next program counter
  process (clk) 
  begin
  if(rising_edge (clk)) then
    next_pc <= pc + 4;
  end if;
  
  end process;
  
  
 

end Behavioral;
