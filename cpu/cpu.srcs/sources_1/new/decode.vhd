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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity decoder is
  Port ( 
    -- INPUT
    instr: in std_logic_vector(31 downto 0);

    -- OUTPUT
    op_class: out std_logic_vector(4 downto 0); -- OSLBJ (One-Hot encoded, OP-Store-Load-Branch-Jump)
    alu_opcode: out std_logic_vector(2 downto 0); -- func3 in this case
    cond_opcode: out std_logic_vector(2 downto 0); -- func3 in this case
    rd: out std_logic_vector(4 downto 0); -- Destination Register Address (5 bit = 32 registers)
    rs1: out std_logic_vector(4 downto 0); -- Source Register 1 address
    rs2: out std_logic_vector(4 downto 0); -- Source Register 2 address
    immediate: out std_logic_vector(11 downto 0)
  );
end decoder;

architecture Behavioral of decoder is

signal func3: std_logic_vector(2 downto 0);
signal func7: std_logic_vector(6 downto 0);
signal opcode: std_logic_vector(6 downto 0);

begin

-- SPLITTING SIGNALS OUT OF INSTRUCION
rd <= instr(11 downto 7);
rs1 <= instr(19 downto 15);
rs2 <= instr(24 downto 20);
opcode <= instr(6 downto 0);
func3 <= instr(14 downto 12);
func7 <= instr(31 downto 25);

-- ASSIGN OPERATION CLASS BASED ON OPCODE
process(opcode)
begin
    op_class <= "00000"; -- Default value

    case opcode is
        when "0110011" | "0010011" => -- R type and I type (OP)
            op_class <= "10000";
        when "0100011" => -- S type (Store)
            op_class <= "01000";
        when "0000011" => -- I type (Load)
            op_class <= "00100";
        when "1100011" => -- B type (Branch)
            op_class <= "00010";
        when "1101111" => -- J type (Jump)
            op_class <= "00001";
        when others =>
            op_class <= "00000";
    end case;
end process;


-- ASSIGN CONDITIONAL OPCODE AND ALU OPCODE BASED ON FUNC3 / FUNC7
process(opcode, func3, func7)
begin
    alu_opcode <= "000"; -- Default ALU opcode
    cond_opcode <= "111"; -- Default condition opcode
    
    case opcode is
------- R TYPE (OP) -------------------------------------------------------------------------------    
        when "0110011" =>
            case func3 is
                when "000" => 
                    if func7 = "0100000" then
                        alu_opcode <= "010"; -- SUB
                    else
                        alu_opcode <= "000"; -- ADD
                    end if;
                when "100" => alu_opcode <= "100"; -- XOR
                when "110" => alu_opcode <= "110"; -- OR
                when "111" => alu_opcode <= "111"; -- AND
                when others => null;
            end case;
---------------------------------------------------------------------------------------------------
------- I type (OP) -------------------------------------------------------------------------------       
        when "0010011" =>
            case func3 is 
                when "000" => alu_opcode <= "000"; -- ADDI
                when "100" => alu_opcode <= "100"; -- XORI
                when "110" => alu_opcode <= "110"; -- ORI
                when "111" => alu_opcode <= "111"; -- ANDI
                when others => null;
            end case;
---------------------------------------------------------------------------------------------------
------- B type (BRANCH) --------------------------------------------------------------------------- 
        when "1100011" =>
            case func3 is
                when "000" => cond_opcode <= "000"; -- BEQ
                when "001" => cond_opcode <= "001"; -- BNE
                when "100" => cond_opcode <= "100"; -- BLT
                when "101" => cond_opcode <= "101"; -- BGE
                when others => null;
            end case;
---------------------------------------------------------------------------------------------------       
     end case;
end process;

-- GENERATE IMMEDIATE BASED ON OPCODE AND FUNC3
process(opcode, func3) is
begin
    case opcode is
------- J TYPE ------------------------------------------------------------------------------------
        when "1101111" => 
            immediate <= instr(20) & instr(10 downto 1) & instr(11) & instr(19 downto 12);
---------------------------------------------------------------------------------------------------
------- B TYPE ------------------------------------------------------------------------------------        
        when "1100011" =>
            immediate <= instr(12) & instr(10 downto 5) & instr(4 downto 1) & instr(11);
---------------------------------------------------------------------------------------------------
------- S TYPE ------------------------------------------------------------------------------------        
        when "0100011" => 
            immediate <= instr(11 downto 5) & instr(4 downto 0);
---------------------------------------------------------------------------------------------------
------- I TYPE ------------------------------------------------------------------------------------       
        when "0010011" =>
            immediate <= instr(11 downto 0);
---------------------------------------------------------------------------------------------------
    end case;
end process;

end Behavioral;

