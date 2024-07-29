# riscv-cpu
A RISC-V RV32I cpu implementation on the Zedboard FPGA.

Read Github [Wiki](https://github.com/Tech-Matt/riscv-cpu/wiki) for more details.

## Overview
![image](https://github.com/user-attachments/assets/d14bb4e3-7c2d-4a18-9439-53f07ec98cef)


## Todo

<ins> Max Priority </ins>
- [ ] Remember to pur default variable value everywhere, otherwise latches could be inferred
- [ ] Write Instruction Decode
- [ ] Write block to exctract immediate based on opcode
- [ ] Write doc for instruction decode

<ins> Normal </ins>

<ins> To be done one day in the future </ins>
- [ ] Do an Instruction Decode testbench
- [ ] Chose a standard for variables in vhdl, uppercase or lowercase?
- [ ] Write table of signals for instruction fetch
- [ ] Write table of signals for instruction decode
- [ ] See in instruction decode if it is best to keep std_logic_vector for some signals, or change it to unsigned
- [ ] See if concurrent execution can be converted to processes or vice versa



## Implementation Comments
- Decode implementation is difficult to read, make it more readable either by indentation or changing completely the structure.

