----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/13/2023 10:59:58 AM
-- Design Name: 
-- Module Name: instr_fetch_testbench - Behavioral
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

entity instr_fetch_testbench is
--  Port ( );
end instr_fetch_testbench;

architecture Behavioral of instr_fetch_testbench is

signal clk: std_logic;
signal pc_in: unsigned(31 downto 0);
signal load_en: std_logic;
signal res: std_logic;
signal instr_out: std_logic_vector(31 downto 0);
signal current_pc: unsigned(31 downto 0);
signal next_pc: unsigned(31 downto 0);

begin

fetch: entity work.instruction_fetch port map (

    clk => clk,
    pc_in => pc_in,
    load_en => load_en,
    res => res,
    instr_out => instr_out,
    current_pc => current_pc,
    next_pc => next_pc
);


clock: process
begin
    -- 50 MHz clock
    clk <= '0';
    wait for 10 ns;
    clk <= '1';
    wait for 10 ns;
end process;

simulation: process
begin

pc_in <= (others => '0'); 

res <= '0'; -- All'inizio il reset è spento
load_en <= '0'; --Disattivo il registro del program counter
wait for 100 ns;

load_en <= '1';
wait for 50 ns;

pc_in <= pc_in + 4;
wait for 100 ns;

pc_in <= pc_in + 4;
wait for 100 ns;

pc_in <= pc_in + 4;
wait for 100 ns;

pc_in <= pc_in + 4;
wait for 100 ns;


pc_in <= pc_in + 4;
wait for 100 ns;


pc_in <= pc_in + 4;
wait for 100 ns;


pc_in <= pc_in + 4;
wait for 100 ns;


pc_in <= pc_in + 4;
wait for 100 ns;


pc_in <= pc_in + 4;
wait for 100 ns;


res <= '1'; -- Resetto la instruction memory
wait for 100 ns;
wait;

end process;

end Behavioral;
