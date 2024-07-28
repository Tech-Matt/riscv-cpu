# riscv-cpu
A RISC-V RV32I cpu implementation on the Zedboard FPGA.

Read Github [Wiki](https://github.com/Tech-Matt/riscv-cpu/wiki) for more details.

## Overview
![image](https://github.com/user-attachments/assets/d14bb4e3-7c2d-4a18-9439-53f07ec98cef)


## Todo

<ins> Max Priority </ins>

- [ ] Write Instruction Decode
- [ ] Do an Instruction Decode testbench

<ins> Normal </ins>
- [ ] See in instruction decode if it is best to keep std_logic_vector for some signals, or change it to unsigned
- [ ] See if concurrent execution can be converted to processes or vice versa

<ins> To be done one day in the future </ins>
- [ ] Chose a standard for variables in vhdl, uppercase or lowercase?
- [ ] Write table of signals for instruction fetch
- [ ] Write table of signals for instruction decode

