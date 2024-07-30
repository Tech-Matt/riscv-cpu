----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/30/2024 03:27:33 PM
-- Design Name: 
-- Module Name: comparator - Behavioral
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

entity comparator is
  Port ( 
    rs1_val: in unsigned(31 downto 0);
    rs2_val: in unsigned(31 downto 0);
    cond_opcode: in std_logic_vector(2 downto 0);
    
    branch_cond: out std_logic -- 1 = branch, 0 = don't branch
  );
end comparator;

architecture Behavioral of comparator is

begin

process(cond_opcode) is
begin
    case cond_opcode is
------- BEQ -------------------------------------------------------------------------------------------
        when "000" =>
            branch_cond <= '1' when rs1_val = rs2_val else '0';
-------------------------------------------------------------------------------------------------------
------- BNE -------------------------------------------------------------------------------------------
        when "001" => 
            branch_cond <= '0' when rs1_val = rs2_val else '1';
-------------------------------------------------------------------------------------------------------
------- BLT -------------------------------------------------------------------------------------------        
        when "100" =>
            branch_cond <= '1' when rs1_val < rs2_val else '0';
-------------------------------------------------------------------------------------------------------
------- BGE -------------------------------------------------------------------------------------------
        when "101" =>
            branch_cond <= '1' when rs1_val >= rs2_val else '0';
-------------------------------------------------------------------------------------------------------
    end case; 
end process;


end Behavioral;
