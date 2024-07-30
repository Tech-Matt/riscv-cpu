----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/30/2024 03:02:58 PM
-- Design Name: 
-- Module Name: alu - Behavioral
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

entity alu is
  Port ( 
    alu_opcode: in std_logic_vector(2 downto 0); 
    rs1_val: in unsigned(31 downto 0);
    rs2_val: in unsigned(31 downto 0);
    
    value_out: out unsigned(31 downto 0)
  );
end alu;

architecture Behavioral of alu is

begin

-- MAIN COMPUTATION 
process(alu_opcode) is
begin
    case alu_opcode is
------- ADD -----------------------------------------------------------------------------------------        
        when "000" => 
            value_out <= rs1_val + rs2_val;
-----------------------------------------------------------------------------------------------------
------- SUB -----------------------------------------------------------------------------------------  
        when "010" =>
            value_out <= rs1_val - rs2_val;
-----------------------------------------------------------------------------------------------------
------- XOR -----------------------------------------------------------------------------------------
        when "100" =>
            value_out <= rs1_val xor rs2_val;
-----------------------------------------------------------------------------------------------------
------- OR ------------------------------------------------------------------------------------------
        when "110" =>
            value_out <= rs1_val or rs2_val;
-----------------------------------------------------------------------------------------------------
------- AND -----------------------------------------------------------------------------------------
        when "111" =>
            value_out <= rs1_val and rs2_val;
-----------------------------------------------------------------------------------------------------
        when others => null;
            
            
    end case;
end process;

end Behavioral;
