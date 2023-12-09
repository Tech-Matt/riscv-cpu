----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/15/2023 09:44:15 AM
-- Design Name: 
-- Module Name: instruction_decode - Behavioral
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

entity instruction_decode is
  Port ( 
        instr_in: in std_logic_vector(31 downto 0); -- Instruction to be decoded
        rd_write_en: in std_logic; -- Write enable for register file
        rd_value: in std_logic_vector(31 downto 0); -- Value to be eventually saved in register file
        rs1_val: out std_logic_vector(31 downto 0); -- Register source value 1 
        rs2_val: out std_logic_vector(31 downto 0); -- Register source value 2
        immediate: out std_logic_vector(31 downto 0);
        op_class: out std_logic_vector (4 downto 0);
        alu_opcode: out std_logic_vector(2 downto 0); -- func 3
        a_sel: out std_logic;
        b_sel: out std_logic;
        cond_opcode: out std_logic_vector(2 downto 0) -- func 3
        
  
  );
end instruction_decode;

architecture Behavioral of instruction_decode is

COMPONENT register_file
  PORT (
    a : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    d : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    dpra : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    clk : IN STD_LOGIC;
    we : IN STD_LOGIC;
    qspo : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    qdpo : OUT STD_LOGIC_VECTOR(31 DOWNTO 0) 
  );
END COMPONENT;

begin



end Behavioral;
