----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/27/2024 02:52:32 PM
-- Design Name: 
-- Module Name: splitter - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity splitter is
    Port ( 
    -- INPUT
        instr: in std_logic_vector(31 downto 0);
        
    -- OUTPUT
        rd: out std_logic_vector(4 downto 0); -- Destination Register Address (5 bit = 32 registers)
        rs1: out std_logic_vector(4 downto 0); -- Source Register 1
        rs2: out std_logic_vector(4 downto 0); -- Source Register 2
        opcode: out std_logic_vector(6 downto 0); 
        func3: out std_logic_vector(2 downto 0);
        func7: out std_logic_vector(6 downto 0)
    );
end splitter;

architecture Behavioral of splitter is
    
begin

    rd <= instr(11 downto 7);
    rs1 <= instr(19 downto 15);
    rs2 <= instr(24 downto 20);
    opcode <= instr(6 downto 0);
    func3 <= instr(14 downto 12);
    func7 <= instr(31 downto 25);

end Behavioral;
