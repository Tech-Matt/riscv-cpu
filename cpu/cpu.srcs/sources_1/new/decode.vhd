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
    opcode: in std_logic_vector(6 downto 0);
    
    -- OUTPUT
    op_class: out std_logic_vector(4 downto 0); -- OSLBJ (One-Hot encoded, OP-Store-Load-Branch-Jump)
    alu_opcode: out std_logic_vector(2 downto 0); -- func3 in this case
    cond_opcode: out std_logic_vector(2 downto 0) -- func3 in this case
  );
end decode;

architecture Behavioral of decode is

begin

-- ASSIGN OPERATION CLASS DIVIDING BY OPCODE
process(opcode) 
begin
    op_class <= "00000"; --DEFAULT VALUE
-- (OP) R TYPE AND I TYPE INSTRUCTIONS -----------------------------------------------------------
    if opcode = "0110011" or opcode = "0010011" then -- R type and I type (OP)
        op_class <= "10000";
        cond_opcode <= "111";
-------------------------------------------------------------------------------------------------
-- (STORE) S TYPE INSTRUCTIONS ------------------------------------------------------------------
    elsif opcode = "0100011" then                    -- S type (Store)
        op_class <= "01000";
        cond_opcode <= "111"; -- default value
-------------------------------------------------------------------------------------------------
-- (LOAD) I TYPE INSTRUCTIONS -------------------------------------------------------------------
    elsif opcode = "0000011" then                    -- I type (Load)
        op_class <= "00100";
        cond_opcode <= "111"; -- default value
-------------------------------------------------------------------------------------------------
-- (BRANCH) B TYPE INSTRUCIONS ------------------------------------------------------------------
    elsif opcode = "1100011" then                    -- B type (Branch)
        op_class <= "00010";
        cond_opcode <= func3; 
-------------------------------------------------------------------------------------------------
-- (JUMP) J TYPE INSTRUCTIONS -------------------------------------------------------------------
    elsif opcode = "1101111" then                    -- J type (Jump)
        op_class <= "00001";
        cond_opcode <= "111"; -- default value
-------------------------------------------------------------------------------------------------
    end if;
end process;

end Behavioral;

-- Different possible implementation
--with opcode select
--op_class <= "10000" when "0110011" | "0010011", -- R type and I type (OP)
--            "01000" when "0100011", -- S type (Store)
--            "00100" when "0000011", -- I type (Load)
--            "00010" when "1100011", -- B type (Branch)
--            "00001" when "1101111", -- J type (Jump)
--            "00000" when others;
--end Behavioral;


