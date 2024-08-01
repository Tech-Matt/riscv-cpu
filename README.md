# riscv-cpu
A RISC-V non pipelined RV32I cpu implementation in VHDL, using AMD Vivado Software.

Read Github [Wiki](https://github.com/Tech-Matt/riscv-cpu/wiki) for more details.

## Overview
![image](https://github.com/user-attachments/assets/d14bb4e3-7c2d-4a18-9439-53f07ec98cef)

The CPU I will implement will have the following properties:
- Support for a subset of RV32I;
- 31 general purpose registers (32 bit), 1 program counter;
- Harvard Architecture;
- Instruction Memory implemented as a single port ROM BRAM;
- Data Memory Implemented as a single port RAM BRAM;

## Implemented Instructions
For now I am going to implement a small subset of the RV32I ISA. This is a comprehensive list:
![image](https://github.com/user-attachments/assets/344f46cc-ff0b-4dea-9e80-2a36d46a272f)

## Instruction Memory
Instruction memory will consist of a ROM BRAM (Read only memory Block RAM), with a width of 32 bits (instruction size, RISC-V like) and a depth of 4096 instructions. The block memory is defined as a single port ROM, that's because we are only interested in reading the hardcoded RISC-V instructions inside of it. The BRAM will have an enable pin and a synchronous reset pin (will only work when memory is enabled). 
The IP will have an embedded output register where the Instruction to be decoded is saved before the instruction decode stage.
The input address is 32 bit wide to ease RISC-V jump instructions. For this time the load_en for the instruction memory will be hard-wired to "1".

## Register File
Register File is made of a DRAM (Distributed Memory), with two ports, defined with a width of 32 bits (RISC-V Registers size) and 32 words deep (RISC-V ISA defines 32 registers for the register file). For now the **output** is registered.

## Data Memory
Data Memory will be implemented as a single port RAM BRAM, with 32 bit width and 4096 blocks of depth. Made of 4096 words of 32 bits. Address is 12 bits. write_en generated by control state machine.

## Clock
Clock is now set at 50 MHz. Testing need to be done.

## Instruction Fetch Stage

![image](https://github.com/user-attachments/assets/8700b4ea-cb5c-4315-8663-80a18aff4140)

The entire instruction fetch stage is executed in one clock cycle. Here is the flow of operations:

- If LOAD_EN is active, incoming PC from upper stages is loaded into the PC register (beware, this happens 1 clock cycle before the start of the instruction fetch)
- Rising edge of the clock arrives
- BRAM Instruction Memory fetches instruction reading PC if LOAD_EN_MEM is active. A synchronous RST may reset the Instruction Memory
- In the meantime PC + 4 is computed and saved in NPC (Next Program Counter)
- BRAM will save Instruction in internal IR (instruction register) before the arrival of the next clock pulse

| Signal Name | Direction | Type                        | Function                                                                 |
|-------------|-----------|-----------------------------|--------------------------------------------------------------------------|
| clk         | in        | std_logic                   | Clock signal that drives the registers of PC, block RAM, NPC, and IR.    |
| pc_in       | in        | unsigned(31 downto 0)       | Program counter input coming from other stages.                         |
| load_en     | in        | std_logic                   | Load enable signal to activate or deactivate writing on the PC register (active low). |
| res         | in        | std_logic                   | Synchronous reset for instruction memory (active high).                 |
| instr_out   | out       | std_logic_vector(31 downto 0)| Instruction fetched from instruction memory.                            |
| current_pc  | out       | unsigned(31 downto 0)       | Current program counter connected to the next stages.                   |
| next_pc     | out       | unsigned(31 downto 0)       | Next program counter value (PC + 4 bytes).                              |
| pc          | internal  | unsigned(31 downto 0)       | Internal signal for the current program counter.                        |
| instr       | internal  | std_logic_vector(31 downto 0)| Internal signal for the instruction fetched from instruction memory.    |

## Instruction Decode Stage
![image](https://github.com/user-attachments/assets/443186e3-aafc-49e8-b343-46ff2ccb3d1a)

**The Instruction Decode (ID)** stage is responsible for interpreting the fetched instruction. It extracts the necessary control signals and operands required for the Execute stage. This stage reads the instruction, decodes it, reads the necessary register values, and generates immediate values and control signals.

**Decoder Block**
The Decoder block is part of the Instruction Decode stage. It takes a 32-bit instruction and extracts relevant fields such as opcode, func3, func7, and register addresses. Based on the opcode and func3, it generates control signals and immediate values.

#### Instruction Decode Signals

| Signal Name   | Direction | Type                        | Function                                                                                   |
|---------------|-----------|-----------------------------|--------------------------------------------------------------------------------------------|
| clk           | in        | std_logic                   | Clock signal.                                                                              |
| instr         | in        | std_logic_vector(31 downto 0)| Instruction coming from the Instruction Fetch stage.                                       |
| write_en      | in        | std_logic                   | Enables writing to the register file.                                                      |
| rd_value      | in        | unsigned(31 downto 0)       | Value to be written to the register file.                                                  |
| rd_wr_enable  | in        | std_logic                   | Chooses between reading and writing to the register file (0 = read, 1 = write).            |
| rs1_val       | out       | std_logic_vector(31 downto 0)| Value of the first source register.                                                        |
| rs2_val       | out       | std_logic_vector(31 downto 0)| Value of the second source register.                                                       |
| immediate     | out       | unsigned(31 downto 0)       | Extended 32-bit immediate value.                                                           |
| op_class      | out       | std_logic_vector(4 downto 0)| Indicates the type of operation (encoded one-hot: OP, Store, Load, Branch, Jump).          |
| alu_opcode    | out       | std_logic_vector(2 downto 0)| ALU operation code.                                                                        |
| cond_opcode   | out       | std_logic_vector(2 downto 0)| Conditional operation code.                                                                |
| a_sel         | out       | std_logic                   | Controls the multiplexer A in the Execute stage (0: pc, 1: rs1_value).                      |
| b_sel         | out       | std_logic                   | Controls the multiplexer B in the Execute stage (0: immediate, 1: rs2_value).               |
| rs1           | internal  | std_logic_vector(4 downto 0)| Address of the first source register.                                                      |
| rs2           | internal  | std_logic_vector(4 downto 0)| Address of the second source register.                                                     |
| rd            | internal  | std_logic_vector(4 downto 0)| Address of the destination register.                                                       |
| imm_12        | internal  | std_logic_vector(11 downto 0)| 12-bit immediate value.                                                                    |
| imm_32        | internal  | unsigned(31 downto 0)       | Extended 32-bit immediate value.                                                           |
| r_input       | internal  | std_logic_vector(4 downto 0)| Input to the register file multiplexer for read/write selection.                           |
| op_c          | internal  | std_logic_vector(4 downto 0)| Internal signal for the operation class.                                                   |
| alu_op        | internal  | std_logic_vector(2 downto 0)| Internal signal for the ALU operation code.                                                |
| cond_op       | internal  | std_logic_vector(2 downto 0)| Internal signal for the conditional operation code.                                        |
| a             | internal  | std_logic                   | Internal signal for the multiplexer A selection.                                           |
| b             | internal  | std_logic                   | Internal signal for the multiplexer B selection.                                           |

#### Decoder Signals

| Signal Name   | Direction | Type                        | Function                                                                                   |
|---------------|-----------|-----------------------------|--------------------------------------------------------------------------------------------|
| instr         | in        | std_logic_vector(31 downto 0)| 32-bit instruction to be decoded.                                                          |
| op_class      | out       | std_logic_vector(4 downto 0)| Indicates the type of operation (one-hot encoded).                                         |
| alu_opcode    | out       | std_logic_vector(2 downto 0)| ALU operation code based on func3 and func7.                                               |
| cond_opcode   | out       | std_logic_vector(2 downto 0)| Conditional operation code based on func3.                                                 |
| rd            | out       | std_logic_vector(4 downto 0)| Address of the destination register.                                                       |
| rs1           | out       | std_logic_vector(4 downto 0)| Address of the first source register.                                                      |
| rs2           | out       | std_logic_vector(4 downto 0)| Address of the second source register.                                                     |
| immediate     | out       | std_logic_vector(11 downto 0)| 12-bit immediate value extracted from the instruction.                                     |
| a_sel         | out       | std_logic                   | Control signal for multiplexer A (0: pc, 1: rs1_value).                                    |
| b_sel         | out       | std_logic                   | Control signal for multiplexer B (0: immediate, 1: rs2_value).                             |
| func3         | internal  | std_logic_vector(2 downto 0)| Function field from the instruction (bits 14-12).                                          |
| func7         | internal  | std_logic_vector(6 downto 0)| Function field from the instruction (bits 31-25).                                          |
| opcode        | internal  | std_logic_vector(6 downto 0)| Opcode field from the instruction (bits 6-0).                                              |

## Execution Stage
![image](https://github.com/user-attachments/assets/84ad0f9f-7cd6-40b8-9843-60cffdd58f85)

The Execution stage is responsible for performing arithmetic and logical operations, as well as evaluating branch conditions. It takes operands from the previous stage, applies the necessary operations using the ALU and comparator components, and outputs the results and branch conditions.

- **Inputs:**
  - `clk`: The clock signal.
  - `rs1_val`: The value of the first source register.
  - `rs2_val`: The value of the second source register.
  - `immediate`: The 32-bit immediate value.
  - `cond_opcode`: The conditional operation code.
  - `alu_opcode`: The ALU operation code.
  - `pc`: The program counter value.
  - `a_sel`: Control signal for selecting between `pc` and `rs1_val` for the ALU.
  - `b_sel`: Control signal for selecting between `immediate` and `rs2_val` for the ALU.

- **Outputs:**
  - `branch_cond`: The branch condition output.
  - `alu_pre_result`: The intermediate ALU result.
  - `alu_result`: The final ALU result.

The Execution stage uses two main components: the ALU (Arithmetic Logic Unit) and the comparator. The ALU performs arithmetic and logical operations based on the `alu_opcode`, while the comparator evaluates branch conditions based on the `cond_opcode`. Multiplexers controlled by `a_sel` and `b_sel` are used to select the appropriate operands for the ALU.

### Signal Table

#### Execution Stage

| Signal Name        | Direction | Type                        | Function                                                                                |
|--------------------|-----------|-----------------------------|-----------------------------------------------------------------------------------------|
| clk                | in        | std_logic                   | Clock signal.                                                                           |
| rs1_val            | in        | unsigned(31 downto 0)       | Value of the first source register.                                                     |
| rs2_val            | in        | unsigned(31 downto 0)       | Value of the second source register.                                                    |
| immediate          | in        | unsigned(31 downto 0)       | 32-bit immediate value.                                                                 |
| cond_opcode        | in        | std_logic_vector(2 downto 0)| Conditional operation code.                                                             |
| alu_opcode         | in        | std_logic_vector(2 downto 0)| ALU operation code.                                                                     |
| pc                 | in        | unsigned(31 downto 0)       | Program counter value.                                                                  |
| a_sel              | in        | std_logic                   | Control signal for selecting between `pc` and `rs1_val` for the ALU.                    |
| b_sel              | in        | std_logic                   | Control signal for selecting between `immediate` and `rs2_val` for the ALU.             |
| branch_cond        | out       | std_logic                   | Branch condition output.                                                                |
| alu_pre_result     | out       | unsigned(31 downto 0)       | Intermediate ALU result.                                                                |
| alu_result         | out       | unsigned(31 downto 0)       | Final ALU result.                                                                       |
| branch_cond_unregistered | internal  | std_logic                   | Unregistered branch condition signal.                                                   |
| mux_a              | internal  | unsigned(31 downto 0)       | Multiplexer output selecting between `pc` and `rs1_val`.                                |
| mux_b              | internal  | unsigned(31 downto 0)       | Multiplexer output selecting between `immediate` and `rs2_val`.                         |

#### ALU Component

| Signal Name        | Direction | Type                        | Function                                                                                |
|--------------------|-----------|-----------------------------|-----------------------------------------------------------------------------------------|
| alu_opcode         | in        | std_logic_vector(2 downto 0)| ALU operation code.                                                                     |
| rs1_val            | in        | unsigned(31 downto 0)       | Value of the first source register.                                                     |
| rs2_val            | in        | unsigned(31 downto 0)       | Value of the second source register.                                                    |
| value_out          | out       | unsigned(31 downto 0)       | Result of the ALU operation.                                                            |

#### Comparator Component

| Signal Name        | Direction | Type                        | Function                                                                                |
|--------------------|-----------|-----------------------------|-----------------------------------------------------------------------------------------|
| rs1_val            | in        | unsigned(31 downto 0)       | Value of the first source register.                                                     |
| rs2_val            | in        | unsigned(31 downto 0)       | Value of the second source register.                                                    |
| cond_opcode        | in        | std_logic_vector(2 downto 0)| Conditional operation code.                                                             |
| branch_cond        | out       | std_logic                   | Branch condition output (1 = branch, 0 = don't branch).                                 |


## Memory and Write Back Stage
![image](https://github.com/user-attachments/assets/eacd144e-27fc-4129-b8ec-fc4e82c3cdfc)

The Memory and Write Back stage is responsible for accessing the data memory and writing back the results to the destination registers. It handles memory read/write operations and updates the program counter based on the operation type and branch conditions.

- **Inputs:**
  - `clk`: The clock signal.
  - `branch_cond`: Branch condition signal.
  - `next_pc`: The next program counter value.
  - `alu_result`: The result from the ALU.
  - `alu_pre_result`: The intermediate ALU result.
  - `op_class`: Operation class indicating the type of operation.
  - `mem_we`: Memory write enable signal.
  - `rs2_val`: The value of the second source register.
  - `rsta`: Asynchronous reset for the memory.

- **Outputs:**
  - `pc_out`: The updated program counter value.
  - `rd_value`: The value to be written back to the destination register.

The Memory and Write Back stage uses a data memory component for reading from and writing to memory. It also includes multiplexers to determine the correct values for the program counter and the destination register based on the operation class and branch conditions.

### Signal Table

#### Memory and Write Back Stage

| Signal Name   | Direction | Type                        | Function                                                                                   |
|---------------|-----------|-----------------------------|--------------------------------------------------------------------------------------------|
| clk           | in        | std_logic                   | Clock signal.                                                                              |
| branch_cond   | in        | std_logic                   | Branch condition signal.                                                                   |
| next_pc       | in        | unsigned(31 downto 0)       | The next program counter value.                                                            |
| alu_result    | in        | unsigned(31 downto 0)       | The result from the ALU.                                                                   |
| alu_pre_result| in        | std_logic_vector(31 downto 0)| The intermediate ALU result.                                                               |
| op_class      | in        | std_logic_vector(4 downto 0)| Operation class indicating the type of operation.                                          |
| mem_we        | in        | std_logic                   | Memory write enable signal.                                                                |
| rs2_val       | in        | std_logic_vector(31 downto 0)| The value of the second source register.                                                   |
| rsta          | in        | std_logic                   | Asynchronous reset for the memory.                                                         |
| pc_out        | out       | unsigned(31 downto 0)       | The updated program counter value.                                                         |
| rd_value      | out       | unsigned(31 downto 0)       | The value to be written back to the destination register.                                   |
| wea           | internal  | std_logic_vector(0 downto 0)| Write enable signal for the memory (multiplexed between `mem_we` and `op_class`).           |
| mem_out       | internal  | std_logic_vector(31 downto 0)| Value coming out of the memory.                                                            |

## Instruction Fetch TestBench
![image](https://github.com/user-attachments/assets/d7a6e725-8231-4d8f-9002-795dc31be412)

## Instruction Decode TestBench
![image](https://github.com/user-attachments/assets/546ff0b5-c9be-4145-8e6e-b97caa13b904)

## Execute Stage TestBench
![image](https://github.com/user-attachments/assets/d9d2b644-2bd1-4279-824e-e5486859176d)

## Memory and Write-Back TestBench

## State Machine

## Synthesys
![image](https://github.com/user-attachments/assets/90489b6c-ec44-44d2-b3d5-822d6674f506)

### Synthesis Design Report Summary

**Tool Information:**
- **Tool Version:** Vivado v.2023.2 (win64) Build 4029153
- **Date:** Thu Aug 1 09:32:52 2024
- **Command:** report_utilization
- **Design:** top_level
- **Device:** xc7z020clg484-1
- **Design State:** Synthesized

### Utilization Design Information:

#### 1. Slice Logic
| Site Type            | Used | Available | Util% |
|----------------------|------|-----------|-------|
| Slice LUTs           | 235  | 53200     | 0.44  |
| LUT as Logic         | 235  | 53200     | 0.44  |
| LUT as Memory        | 0    | 17400     | 0.00  |
| Slice Registers      | 273  | 106400    | 0.26  |
| Register as Flip Flop| 206  | 106400    | 0.19  |
| Register as Latch    | 67   | 106400    | 0.06  |
| F7 Muxes             | 0    | 26600     | 0.00  |
| F8 Muxes             | 0    | 13300     | 0.00  |


#### 2. Memory
| Site Type       | Used | Available | Util% |
|-----------------|------|-----------|-------|
| Block RAM Tile  | 0    | 140       | 0.00  |
| RAMB36/FIFO     | 0    | 140       | 0.00  |
| RAMB18          | 0    | 280       | 0.00  |

#### 3. DSP
| Site Type | Used | Available | Util% |
|-----------|------|-----------|-------|
| DSPs      | 0    | 220       | 0.00  |

#### 7. Primitives
| Ref Name | Used | Functional Category |
|----------|------|---------------------|
| FDRE     | 206  | Flop & Latch        |
| LUT3     | 98   | LUT                 |
| LUT4     | 80   | LUT                 |
| LUT5     | 69   | LUT                 |
| LDCE     | 67   | Flop & Latch        |
| LUT6     | 52   | LUT                 |
| CARRY4   | 23   | CarryLogic          |
| LUT2     | 5    | LUT                 |
| BUFG     | 3    | Clock               |
| LUT1     | 2    | LUT                 |
| IBUF     | 1    | IO                  |

#### 8. Black Boxes
| Ref Name       | Used |
|----------------|------|
| dist_mem_gen_0 | 1    |
| blk_mem_gen_1  | 1    |
| blk_mem_gen_0  | 1    |

## Implementation

## Performance Evaluation

## Timing Analysis

## Power Consumption


## Todo

<ins> Max Priority </ins>

<ins> Normal </ins>
- [ ] Remember to pur default variable value everywhere, otherwise latches could be inferred
- [ ] Write table of signals for instruction fetch
- [ ] Write table of signals for instruction decode
- [ ] Create alu_opcode table

<ins> To be done one day in the future </ins>
- [ ] Chose a standard for variables in vhdl, uppercase or lowercase?
- [ ] See in instruction decode if it is best to keep std_logic_vector for some signals, or change it to unsigned
- [ ] See if concurrent execution can be converted to processes or vice versa
- [ ] You could add flags to alu operations



## Implementation Comments

