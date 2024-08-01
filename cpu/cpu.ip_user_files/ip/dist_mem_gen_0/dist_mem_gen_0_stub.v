// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Aug  1 06:29:27 2024
// Host        : la_bestia running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/matti/Documents/Vivado_Vitis/riscv-cpu/cpu/cpu.gen/sources_1/ip/dist_mem_gen_0/dist_mem_gen_0_stub.v
// Design      : dist_mem_gen_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dist_mem_gen_v8_0_14,Vivado 2023.2" *)
module dist_mem_gen_0(a, d, dpra, clk, we, qspo, qdpo)
/* synthesis syn_black_box black_box_pad_pin="a[4:0],d[31:0],dpra[4:0],we,qspo[31:0],qdpo[31:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input [4:0]a;
  input [31:0]d;
  input [4:0]dpra;
  input clk /* synthesis syn_isclock = 1 */;
  input we;
  output [31:0]qspo;
  output [31:0]qdpo;
endmodule
