----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/30/2024 03:00:51 PM
-- Design Name: 
-- Module Name: execute - Behavioral
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

entity execute is
  Port ( 
        clk: in std_logic;
        rs1_val: in unsigned(31 downto 0);
        rs2_val: in unsigned(31 downto 0);
        immediate: in unsigned(31 downto 0);
        cond_opcode: in std_logic_vector(2 downto 0);
        alu_opcode: in std_logic_vector(2 downto 0);
        pc: in unsigned(31 downto 0);
        a_sel: in std_logic; -- mux a
        b_sel: in std_logic; -- mux b
        
        branch_cond: out std_logic;
        alu_pre_result: out unsigned(31 downto 0);
        alu_result: out unsigned(31 downto 0)
  );
end execute;

architecture Behavioral of execute is

COMPONENT alu is
  Port ( 
    alu_opcode: in std_logic_vector(2 downto 0); 
    rs1_val: in unsigned(31 downto 0);
    rs2_val: in unsigned(31 downto 0);
    
    value_out: out unsigned(31 downto 0)
  );
end COMPONENT;

COMPONENT comparator is
  Port ( 
    rs1_val: in unsigned(31 downto 0);
    rs2_val: in unsigned(31 downto 0);
    cond_opcode: in std_logic_vector(2 downto 0);
    
    branch_cond: out std_logic -- 1 = branch, 0 = don't branch
  );
end COMPONENT;

-- INTERNAL SIGNALS
signal branch_cond_unregistered: std_logic;
signal mux_a: unsigned(31 downto 0); -- PC or rs1_val
signal mux_b: unsigned(31 downto 0); -- Immediate or rs2_val

begin

alu_unit: alu port map (
    alu_opcode => alu_opcode,
    rs1_val => mux_a, -- chooses between pc and rs1_val
    rs2_val => mux_b, -- chooses between immediate and rs2_val
    value_out => alu_pre_result
);

comp: comparator port map (
    rs1_val => rs1_val,
    rs2_val => rs2_val,
    cond_opcode => cond_opcode,
    branch_cond => branch_cond_unregistered
);

-- BRANCH CONDITION REGISTER
process (clk) is
begin
    if rising_edge(clk) then
        branch_cond <= branch_cond_unregistered;
    end if;
end process;

-- ALU RESULT REGISTER
process (clk) is
begin
    if rising_edge (clk) then
        alu_result <= alu_pre_result;
    end if;
end process;

-- MUX A
process (rs1_val, pc) is
begin
    if a_sel = '0' then
        mux_a <= pc;
    else
        mux_a <= rs1_val;
    end if;
end process;

-- MUX B
process (immediate, rs2_val) is
begin
    if b_sel = '0' then
        mux_b <= immediate;
    else 
        mux_b <= rs2_val;
    end if;
end process;

end Behavioral;
