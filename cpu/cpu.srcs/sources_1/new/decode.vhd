----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/27/2024 10:24:01 PM
-- Design Name: 
-- Module Name: decode - Behavioral
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

entity decode is
  Port ( 
    -- INPUT
    func3: in std_logic_vector(2 downto 0);
    func7: in std_logic_vector(6 downto 0);
    opcode: in std_logic_vector(6 downto 0)
    
    -- OUTPUT
    op_class: out std_logic_vector(4 downto 0); -- OSLBJ (One-Hot encoded, OP-Store-Load-Branch-Jump)
    alu_opcode: out std_logic_vector(2 downto 0); -- func3 in this case
    a_sel: out 
    b_sel: out
    cond_opcode: out std_logic_vector(2 downto 0); -- func3 in this case
  );
end decode;

architecture Behavioral of decode is

begin


end Behavioral;
4