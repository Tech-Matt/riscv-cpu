// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Mon May 22 16:19:46 2023
// Host        : techmatt01-pc running 64-bit Ubuntu 22.04.2 LTS
// Command     : write_verilog -force -mode funcsim {/home/techmatt01/Documents/Universit/Architetture Digitali
//               Avanzate/riscv-cpu/riscv-cpu/riscv-cpu.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v}
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
   (clka,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.1309 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "READ_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VHPlDkoDlWlBfBMvPBmGYmaek3s9hXXhjF28kllYPnaNm3TSnzzpXHWHc8Ye9/2L2yiQfJ1hTWou
Ia/zeQ8h9/dtr6QB5YkyW4wlb/LbMgXb+DGIXPSllNl0IMsRQIcQDbcQm1bO/nlhb+2pjxiuaQrl
DbvxoDwPs7z3LunRxsg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lmIhoX8hXuc7tNV1sXY1K2/gXL7Y7Hq73qQF7+x03UWWTRd3uhGmVQtOMVbhIW+66UkWUHiD26zL
fzqGor8bgSNGpSFyS11k4TwLQT4OfAMGO8C9Qmmh4+VENBnpS9TW+wHzCv8oUwht7xYtYRZvOvYK
F3fMppz2sBkUd1lciw98ZE/UmNkhqBuMfIYF43j45DEJ55PBhOZNg91Ls4v3qBHyBAaYPFFoMry3
d5Fw1PZyFQSEOSSpwgyds2aN0g6oIwl7zm0LJrM9VDAOxBUE50hk+oHr4jj8J8UhHQJnlEHm1Idm
rvxKygNKRvfSpa90NYxZJFYgqnrMYg+19+9aZA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VkyCjO2onoeZWEoYQ/4ue7X5mkHyTYVW9xjdoTsGS4GdP/Q64VaCZL/jr6R8DVDXPMnH7tRMrDpo
jpYBnyzSgOkfgqM+96ioC2fDyAaG4gYgGLmrBR6qK3/mxXwAZZX+GJ9R/eWXkc9h8xN+gsSSX6/M
jIQCgeT6q7PB4dWT6KY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Iub91V+TnhVlZCSLu6iKmFjix71y6/l83OPTs8uewWvkE7WcqYxEKi9fonXEkzAtWzuKwEUqnOlN
VBsNJqPUdKcd22q523mrdt89mpdosWD+hvZdO7ELhJniY5u9h49FFkubpN2JiUTcIcKEYxVNlds4
wyvaYUqbPVH5v2ooJwDdimS4GVn9HerCOgPwfshvQDNlMTxLcYju4v8BHMc5Rub9Q/ihvpQU74v2
ouZ9XIwA+C6pBLwvaqS8jE7HXOokgqJilaX/W/t+KEgiFry/txRTMU9WMD7tCN7lcfjCydmS3Lq+
3u6Hsr0S8BwNjcaDpZDnBTygUJd4JSqREnk33w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
U46EWFmKmpZGaWfyL+dokyQtJtaOYsa7HCW/+fdtw9/yHKTWFpmqKBZngBj5rPkNhtTDDCJkqsYj
tUXg1j4tgIBaCQn9B0q/aG+B3gPLrudp9hLL25mVbsfiTzdekiV2hJMmhuMoavKKPJHC6zyW7kZi
80er82OQy8h+Df/fe6TRjH9xEt3/b80tRKUMbxkLfnnkAyyf1KfOhB6/uyI4mwXuQR+DsAbzybKR
YtXpOiW72tGrXTFlzcwbHamWZefqsilVpBw6V5dh33vYKGx50xwWpj76maAkpQrOpB7zufeldJe4
W1UOEN84AZdRTLkVSxamWo/wp8nP9fiGS/ItRw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qczgIJYpE/SzErzK7eWJBGcDFEzDLm8cKbwJbPXuM6YnJxx44W+E60R3war7K2QGFAkOoCDUtDC7
SghJGF32btaDLzeKm0tQ669sBtQmMIaBrlt7I9QBkNM8zN9GL92qxNC9o3UVWMOYy5BmH8nUPgcE
O6lRubeltlrTuDe7UJQ2nEPHcXjpUJJ8dxktyW+LovBy1OxW8g4GRAsmEJsoOEg0HuDdWcc4IshJ
PvwPJ7LblELAKsdkSt65y9VaklaEm7MlH4ImlgIa74TgRmutLUbWxM1QYhGE5rAzFhGU5i3RJOdx
L3N7GGGvLMW2z9NSHbIFX+/eNII9fNJ9nZbgLA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ti1NUgDv8YPk90APMwfu/mRr38QYwAxZfv0T6zQ89YS55t2EquEGVqrEafYX6rTydLOw8le1Oucv
f2oERpSSSTih/ScZneSZmuPE/Zh2BU1Ajv0j+/+0uEWXU+5lLPbDJjnapTmJXih1MYPf0SHpZZmE
BKj2IEBI9MPZlh6bxpa5BWJnyPdAvHf+UNaMXU9+pmbtrzUVebql4mFJu45Z3+ehmFY4FBW3zXMF
44C4TlHACLwL3vHVMCVfeKhgdVDbpE+/IFhTStz7mZ9h9RKGanQcs6YDVM1R+2RKA1QT1fX4FiQc
1V+FGmrm1ujxmFGXwpfNKByVlfCY0oWhRJCYYQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
HuEXFK0NXt09xU2yxxjng1OLsT+ZEM4EhqBgpr9D2ljw2vDaMBrqEsRQTc2B9soDq3ewDduHJXBd
OGYxkPnoN6LhjULtB2nTgjcH6NxA4puZ1ZNcndDndVBo8rTW5W1OqHq6InAG0CqPpTIkuqz3ECPl
EysI++MCDfH6tIzlekxJFIJ1McJsTq5rFuLzMMcrmkBxgcayDpOcCFuzZzCczxmt/cCCIKmDybwT
OQXmOcLJoYLP4sFu6R9c6xO8i6p++crv2N3eIxZHKbek9xBBZqQM9EYuEtsbkqAs9XZpa16i5njR
BDFxTKcP6r7JgFALJE89AZhBbate5JXWp0v4ECZD18aEL17CipwcWPutNMdG1apzSPP5y59n7rMG
yxBPz1gKHc3Emkl4WcO0hjICxqmO6dMXoY8JvBSf6ry2l0sH9Ihr3Bq5WWmlhPHnoaNr5jl//vNe
KfToWtn97eoVSt1LnmXXnSpdigbHr0UIg8AdkpdkuNRaWdVicDdgSo49

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mokwst2bn6UxD6V9UdIgCIG1QQ/d0FiJqYGOTI2eHPV6YElaLjnJ8DnQmZnGS95o3x93FDOoa58C
RwYsX1fVoVtXkj1LuZq0k7q9vEe4T8xMjpkeYtIHY9k0Xhy1Lq/xRlfzGAf9fvf9e+f4r7aR/Sb/
uCZxxugG5niTwLENY1n3NthYL0jvo8Fmdw4Qg0nTCGWlVCws+09K0g9/lx6I9EcuHHemcHO3fOZG
lMc4NaPNozKwnyDMoWUkwiVxyFEPFaQLNYqzjvR+CqrWfhFLo96JWhL+eaDoNuZoBVYQtNH5ZwBL
BoO27Pw10lgcReGlZBz3BLO7T4ddynCx0+eSnw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PiP7AjOQqqouyQMoBQqgWIDhUSViq94rIvGiIJ/UKMDspM/yXw1caE8AhWHTjYckC4yLpPAz5P6s
1Z6flzDPrzVwg4e59X2cc4IMCHhedna0rDO804njcc6amRDTeLsMLTkWfvomB4xwszm2AgT+PRnB
WHd09ZUDVFjiBXT+Oa9AicgGJHrX3w823yBPuAa704kje/SzgtiDpcTU1eLmLhLW7LpEd9KIHd9s
ER7Uk9Orws0Kq9PMTqMX4hMn5K5mFakOeOURiEbUjdv5RiIJ2g/PlQXSItM8fHsBTQa6fOaJwQTI
vHwK3a8ZBHpfT1YH+n7wNiNUZwD4SFXm1QVx4g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ul5ZfTHJwMctaNhYRortUZizYMPYRef7uYqPSuMkxsArnxI/cjGh+KRMwzV86hyp/6TXSJIjm5ec
2wX2UONdPN+DOJ84jYC4JbgJQrPnTj7ioD8uLX/WlyPcQzyF5keqFgj5eR5s13FskVWCuAWf5m9w
mhFEKFjVXDAr7gVgAJh/hL8P6Psrnf+LGfiM8JhnDepsHEYykGlpD3fzru2BGgqHWqPqFMcnyVGl
vysaIXiJz/eYKvO8RGcgd3DJAM/wPm9A0m/DWcmSnczOgTjoqkHcBg2H5uJMLvufzmjImi6LYEqq
v04ESDEN31cSUzqUYcayvMFOnI/WNsWbFIa5+Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27664)
`pragma protect data_block
5j2mnbCzt/5d4HypMoAEcJyz7Ui4dUvD/CiO/FNuw2k30wddkUYigmg6nkLqe9MjKSqHqNcO/XiR
HRF+T3u+J8lVCfrJY+DjjOnk7q5E7Gj2iFmjKpV1ZMwu+rPCLKbLcHpj0hMUJe1h9uL5hGseDPHq
HgDEtWKT0xHc4/H6YoRTpVtoUKaO6kHfgg/ws+QhXNshX0fuDCIqIEaTDkpDFXNXLrmzmVvxIbfl
Z8UjxFQOM0qy9VismTNaj09We7xfqW2Nq8V0dLHtIMRYhE0576QnRbIuEBs6hiY7mMANlutkXTvr
KQ28rQFW1iCdYU4PrtwQ7vWL6Gc1ESTw9Mv2eWmuZbTtfHFBkVTsWzi5nLAdIYV8wKC+tVyh21Pc
DUr5xPkoDwChYz5LH8U4Wb4qg4vGuMelKM5QunwR5rQi/bOGS0m/Qk93nyRVrccAGnR8Yf6aF+jj
8F7/oqZJQiBStwvzUPigeJG76hI7w4Rf0ktwhUn0/QEfholIteTnt6mWMDb1qET044bAVsNcKSbj
5DLYZFkLUVPdevj9y48vwRrFvTY/9eQrEeCJWb2sNPz7Sdy0CtwU0YialWU+sxcR52IZP4JmV9f1
Uajh5U0DVbzAPL35V3JzKIZDdaEGQ7/siJXQhTu6V9wG1vxK6m3pLpKEOOdrVl3YNeeZhzWs2CoE
pGsqAgR0BFN1QKQhFQYH+9zS1roDITR23yb86E3uq0V7LMjDjgsQMkYGrGUJxnCY2llBiZ54BIIo
yBu5LRHVKrEz+8a31DOC+Zr7SX0Dt5Don8PRdi3k0M5BkcC0cmjp7FC6TnOjHnkaJkpmQT8sQr+H
BfQhhlhpkGpt2SGYgmUYxLpz4SqZMwzTuYYJP7g91mDGQAoIILw1ap45k+gqLS1uSt53mtlsmpVH
Ndmi8ZNT0Ll/ag8NX+BWiI0sBsu3/RbK1xo7YfA90JrZ1vXJoan5XtU48T4BmjjEnRv0C4mhM2xZ
+/Ya3XX0vPUiKlsfs+tYbniwtYbn491eSMt02e1Amyr951l0GNBosZ5ByND56tJRkSpwtDaN4zIl
v0pu10ZWV3woQeo97mdBZ8kW31YkkYM9MO03nzDWsTm05IHpL+JRWjI1l1CmceBamxtVn/EmxU//
ya59HjMlxEBwhoeEFrfHJ9jglGkvbqrQ1B5GAwPW9uMt9pq9l1Ui2ql4YMl6UdBrLrl9nr9X/B8l
u0s5T08vAYD43CPFH9bG4DrAonJRb49S/xnlLcphVG4k2OOyyLIUed9g85Jj91GhAJWnwU4LArNV
EmvvKjH4JoL62aMKtxgfChjyZK5yYtqtqjnjLcNdjXbxmnlsQ2WE/M4kYh9rIALeN1jYARO0sCeW
OTM+f72k4bD4w5mwLWCladrfs39Un88EeCpLoDVYH6T2COGJ8QDLZZioULuskw/tb2g8J+AcpqUQ
tKV2dRWA0c2Tpg74Yq6HROxHHPeseE7D9GbfvA9XStSYqDf5rmNdsK3dv8RevYCxvWwBaejp7Rb/
ovJ3w+F3t2X7CYzur6UPTdskIc7rhGLslGNaYooqZobTTL25jfnZSxCEbzLASLQL7qjampL0jr2e
fsSYku04qMxVejrM2NixDX8RaCw5neGia5wMSFkhCC16HP7aYzYGVy7bfg69CbAhO+yyTpADOI8+
Rbwa5BT2NZwmAiZxvDU4siB8EsRBGEiHaCO9/qa9EqWwBsSalxUYeaHtBxs2uJoWaaJOTqjsXqb1
9IlYaX81vbKrjKNyyKNTtybNBmSaHZnz3IPlnOf287+UumtmFaKkrh+VeRvel299InUznkaPCTs8
Whkjcx0bEAHEhG1FNW7PSi4Yp3rxchWck5eui/k5PkSHAgneOfyNSJHehlDSTMWmLkpSMwOdJ66M
2rbUpFEMWgYzghXxWqdSo/AfbPimJPX6ySJscESH/llDTQNSgUy4addfKi/Y/aDVye0msxVsQGiP
9rVLDwsdojfunKefdyCzH0V1N+6FjdajyD5083ReEMgHf379d+PxmFDBSzCJBmrZ0nPuZTV6+G++
Drst7cgXUtCRT25510XIuoa0+D96n3HBhh3eqDLzzLxEIUOlxv3tKnKqoqUf2KXhFLi3Di6EPEdD
I9Zg9SzVRRmR1OC/qjRj6Ef2vzQAlEgTlqpRWxeJmmCXvsm9f9ky+ooA4aqn4VVAVYY4FO/2x5YB
W/HfE0A451ORi9kstEqiL8g2NFIkQWRqYHhaUjOWLV9al6b8rRTqjrHdyg3l5ORUCJDhd3fsFvR4
rJMI69tcxBpN+A+CQCWY2Uo6AoorfdNExXSsGZh+4JTD2rPNMSnnGmNp9TIQtJi37MfQMcC/01dw
NwEES+iCf/1O01prtWhiis+yk4EVG8AdtxnBdrGbVV2onZkntAMbcG76PUfo8aJT6qk3bSGfheBW
8skr9hsDHlfwPZZ7yBgpdp4/nIJO0c9JnqXRXN0kW5Fp60UIEwbyp5hcYUL3wI2jqMsrOHpVW06x
BaAwWFxMpWTeDFEa2VvqHa2L4Fe0+roScwpLMtIKKixQQn1t+KXRg5pEzFsebUsuFJm6k6h/N2Di
vurgnBAvZD+rjzlabcT4pQAvwu5zO0BXenLJj0IMBOZnnxKeOCTzcEosXaHNNbzdRTu09AMpKj+z
5Jj2q2Xn0XwIXaOYlDdPdIhb+NcN8ASDJxh48obOP+wGiyTrv9yWT080DxxsYjlXJD1BHQGzIxJX
p/ezTKMMjc5E/yM4vUcFhvXmwO6c7153FxYKW12haDxm58eRHNx3s1rD9+bNTMuhAfMF9Y70D4Ku
4EMsC6gvnwptxFXBxDu3OhRxdtoc0Fo1yIPb4S/BeXzzsKJrBsLna4FWAsr/4f4DMVXyCxQOVX21
b1gNrvYdGei0EbQLrtxuG8w3uMUv+rv/FruaN3qe1QJGgA1vlZ1ronpWWCr0xCqmWGJ5rC4eIxQ9
iKoQESeTYjw1WHJEV6jY5ZqxDU9zMgFluM4ZH0SiWG3iRj9frwjdAujUnVsmmDen1G80LdCTQrcY
WRiTfySDBAwHjrp59x7CeL2EzSNgLD8/qA+536myFETrZh4hXLt5Asxp+NpOr5yXC6ojMjOsoAmn
4wSe5We76gqKDdzjXXtwOTxqln590gQ2p5B0hYLAWVQimG9LD7uaSzo3yuAHAPr1d9zTEnh3wKGV
FJyHrP1Li/H0V+uQ77YCBElhLehqr5rUbAIlCzrT/RYXlzg4M/3K+cX/b8oa4aYm33EEctta/wzj
GR9PdcIx0b9gmZvIIb11vNoOqkcp9x+kIMzI4xvVfLstDY/hwEQjvCKV5ywuoWILkgIlCy3cRV/q
IpD2cunI//PJMzCzM5+Xq8YSNrp5jdwjtE1XGT6QrU55NY1VRw4TuCwv+5jeIdGwojHK9Zya6CRW
9VO4p1+okYNuJVuTQRwpokv1uETsi6G43SJduJbPTKaS4yPJgjwzfUUtC9tyke/RX9AAWOP9SF95
yTT3sMwgVMVsdp6CgYzfjPweG9d64OzOmqkj6KkWYI3biRWpq754uPHQBwMmJjIM3fgrV3I7IOyU
vkXl1tBkiKJPx9skCIPYZxsAz8ItCFR4aj0EpCQx1OsulCsvdAtsqd4O32v4M6ttaACAK1L6OT/a
eytJtFPM3VUXj4MlydOJChkytTCgiHv4TT4dkWpWRKcKz/U/UusQbFdhqWDUs2oB/YEN0JBege7m
LiYzRuNWJf3pkBERuR2xfCFjdI7NK69h6/UwNFF8wrxmyNGLPdy1qmpa+Ko8uWr1oOIpz0JpP5kL
MgIVr8nXlCBZnoQLbL98nygPsyQl9EowCAesF37q/Gi10Mmfvdvnr/z5q7wceYPKzhLKT+T5We+b
L1SwvDgL0LK4iwmIb67GCh/ku8W+KLeXqJHREPM1vV9tRgy1tBCV5iT/kqHr9wsikvB9KpP0cdyt
OOgnQzNi2HJybUN9mmPr09UIkbJecVrh05Be0p8uatm+zLwF0dx8ouNMRO1HS8wMFSWpYXzXC9Tm
CI+6pVg7TuZ4H9XS2Qnsm1LXBgIbvbRBpft3tefl6jqsaD1F3OoNurZlpe68EesQbk8Q8tdzgG78
yoazfqUzE/ipTw56Z3lgYPQ1S+N8OfBOYQ4HGjH7RTrzaJyPV9Z/dWr5K5diittnc6O4uZmbCfaJ
q04YjxK2riN0leEtnpTQid1Ypfcrd4TbywKMubaIN2kwp0ZJzEDxjqxck2om4NA3+0cflXFzj+2+
m265VeWs4uH+qCKA0/PFcWc+Qgng/fAVXl8IgOQH8m/o0muTJIgpS7zD8h+oXaX89YsLASb0S1es
ogmyx4uyt4M75QyVGP7Jm5plti4MQ+4xWLIbBhWGrcwxxVlYYOAwtcrpsFrlsiI/zCeew9DEenGe
KSvacQeMpua9sqkVjVhMcsSwWiUcJywW/yVvcKeOuGtgU/LVs4P0o2B5T3mBarm07xFuNeGk8t5+
RplEb93IlE7mEgF3AXlUqTIl/Sg1cFiSoyc1muGieG+WIn792eWQUJwPOIxOOz00zZOasKr6JXKf
x/vonWWwy3b93Aq8ltpB/9YQxgpeI/G4EFcWQOCZL/b6dTfq4UOSd6d1Rmq1qrUZF8xwUS1kGZiy
4wQpIYkCuj6dHE66xf4AD5Gse7u9h9tdQb1wwc7Bo7IQVUViE7bjutWiulBY6swDX9bVLY4rhUi5
kUQq5MjZnELlZmSyuh8CUaQeYNENNe6m7K/rTa4PlQnQDEFMyWk1W9TYtX9IFvJt7Z12T1095bqp
5HMLgK0gg6Psx+LvTsBfjeb3ZEvHVgg81fyamEG8ehptuc6zW0tpcvdIjxBY4YRMdvIWUB+pkjPV
jopjVhLTaLGhBApw/Y6GUxVEH58iDnl6hbqdJW5p1W47qSwPSDScD31F/aIVZ7Ri7OdC+hZRz8rT
jHMAnAvLxLRgSAJpuCdxHbPgCesX/dloyqmccNvldgb9Rnfaec6bngEg1nYQOUsWkUTlh3bSXliy
eqLNFCGu8fDypbvSAsVW9x1hxEgqED6V0BeV4F8CH7Fxs2NqQ8Qo/BBeVvGIevXKfh2wcQ+48/8+
tmXxDmANgcGYclO/UJINSs3CL14l5hxK03HQ3bnDfjhq8GhWi8koC0sklzxfRwZGGZIUdwIuIvQj
a5VDPgFJc+UcPnEwzTaxfVWrTQhVQ7TIWy0R78mqUZ2bF3EAFrhoPbOQt6blq2M3OSOkQGzWeE3z
izVDJ2E+ptrh1ucqUXEx+Knghv0WqbVe7ye6nPaMH6LMtsJQHq9tDcqf6ibXJ7sRepqKwx3JSjub
yx/gwP7JcSOWo/ivqSxZa4lau3n3L3SW9a/bvCmMznoDLQDLI+DTLH0Lo77RTh8nBRq/1oL4jbOD
gpZEJ5OQXheRBtEbnFmznM1bRaYTNnfwj/rCjMkE1ekNBJu2B/+WuQdt9uEvDAu/9axkaV2QIfkP
UW9EejHr42xDz1H1d66449utW+U2F4/J/GKfCBd1+CKQg4MSSidQeLlEkv4YJJEgFHHOASwge3GU
QycO+Idins1w3DD3nk8m9KP4kf1VdDjWv6XVMH7NiwPAD/QpbGbMrF4APQswPegUJeP9VeUm/wuu
rtSvpQaOA7EJR/KVt6niWf8Pw6yIZmhrX5FDK42QxD35cengQgoDmzI4e++f3yJ6LjKOzl+yLmi0
EvD3BLlu3jqPJ16YLFIsF8LrTodjBQOhhzIxa0uOgYDmq4WARlt+MitbC4aQOu96xlB5XV3V1AdZ
+o/QKxmHJmRNvWdkqogNpOo3LlMVkkMxaXSm9wHr3IXrxQHoBOEKmKydx8hw/4VnABVG/jnGe6iD
18noR4omg7iqiygaMOWUJWbdB6QeAxry5N3CI1wqhKDo9ijn0nFLU9AT3eKP5hXiHFh0cteMFT1b
q5jqbH+p+o2wVLB2m/Ep3czJUdrlyNy+gwrpAyO8drMlwfnWUsmh/BSGlCL6ncp0kSFfHVfOJ5Qf
YTZpI+/19t+9HJalzsDfkX4lM3PPad7qFSC6jtZXbfB/erGXABOo71WjHKu0GOiSbR6Cot7pL3Op
I5ugZ1PYnJ9YjsLasbLORWiZdw8vI6AL5j98rFjwHtHsNyBbrOba5530FT1Y5/cPcEytxZFyDyd2
UotZ8E8uY867GKEWYi9O+uYfj6b8pcxx8yMlbqp3VJGhuZygB6LCWn7JyO2wmRoQDRj4ncvJaRrn
oPAy/OlAuW5fpmTHEVpm0R/FZbNC+V2uJcMOzk9aciI9ZVSJ0Od6xdrQlX7frtdr6wOJKKqpGcn8
hNzHjrT+P/xc31+PsQPVFr12yxvx1fP7K9pFbg4sd3EixkZvvEsUiWVpQWtqhYc+YTy8Ap0M2e2v
L7WSzNsdlFAs91+Ej+tWK6aSLNlsQytoP50eoFdzAhkf4jG/xDhd1L13g1hRvBc/5OMiLcd3h7UX
40zS1wWj8Ic0q1BnWv2kTFnXoeNm0+F9f8iwgSx8gECpoB5FMJCb+AMdwvTkItvCgPS9UfD5lYN/
rGN8suRPDPX2mQ4AR4V228rV0O31hpSRT6lbpUnYSsN8OaigKETMS4TPM4zYBtzy9KvwyUJdFGMC
SIF/1agQE7M4toV8Ceo8A6pfSsPZ2qjB22slWtXda4DaaQ9okiHRFFEEMDm6lwMXomknE/JVl749
pXlQVYQvfC/ziAQAqGYwp8ZpqNnKoMg8/HuQ1v36QruAUcfZ3D9qYukqtvaSjVryidS39ttfYOGh
N/NrMnJBzPgF5ZdhpO4etZVK5k27b4bDQAtgRbagoH8mItsEvem3hy3lueUQXyyhVqm4rxE4mn+x
GqkmYzMJujgURKhGdZqPcnT1CK7+Y2G0HTdV0xCLDv6QucNY6qGD5YWUkNoeRuS4dZgC7HAh2YX0
yQZHIhuwPx0GsoZ6vHfh49Qd+4eGZGSTfhReT3zMP0GVekuzT6fFV3UBTuSEVo7k6ZgGKawVZVXz
h16VxGmN2D/MNWoyDdCbrtZ51ItIXiEWedaHecJ6obgVs3ax6Lrt3ixCr1lqIgp7Oh1mjtnQnLpb
UvPzZyTAolMQwNlJ2caDbGPW4A0O3++3PsUJUXKHLk53aaWJT/XhuWB8JYbVrVmcP/UPLlKc8iBW
YX0Tb2+5/4GaoPXPX7ta5zJH1oXoSD8ZBf9I29Y+CJ7a/WWz97Xy3vjgK5Oq0VmVsO8JaVpOTBfZ
2VJzmhkrk5L/W7BAJnsZ1HaW1D/D84y6V+o8iTc5Y1n1XbesSiJTG9yXaRScnw1naFTNO0JgMhzG
LCdDQsQbO5zds7Rhv6jiCkGS/p07g4Xut6A3QqMtFNDrqAgU+r/f9XuPWvlcADgfLv5BPmNGqFTu
6TIEjm5FBO8GNvsSs57EkI7rrGtb7vkb3UnWMkl0tnhTz+fLNMI1wKkIQ0QKvguroc8p3qtDhywM
1rt2psPs8XVOdwefDW1j5c8VG3aC64MCZj4dbXhINUgFSWeRxA5GuMNKAPDdptknccWfXtQcRCIA
e6ywPTuGQqNc+yzudiMpqjncPdsORDtgf2F5mbBz8cXiuj76eyGM1lTDtDkGwyCNleLlj8LvLudY
UcGEUMkqV4we3xe4BMlqImpTg7p7a8jvxtDCEtKDb3k4hu78fRHof3ZIqqyBjzSGWhFozhotlf8/
D/ip2h+laFXyClnj/WwBKVZX96N2v/UoVsaHH796sX6EB31eHxyHWJavacUasziSOf7sZVeegTA7
yyTtV9ILVwIDYmW1JrbIzqzNLXCZJpcPgaAajU3dL9IZeD8h2lqxMW+2cerZFb+wilHUzGQPhnbQ
2skCRXjI4gfknmeRDauP345eeEAD7c6VVhKI3V9QAC0q7Dm3vC99lCKngUFd2I9g7+NXVWWfj2Pa
JLfd9ffFF12KLOuJf9/eeKnI8D68QnL2eg6Dl7qsthGywaspgmuXopbUUaoss6QDWDWi00CWvWnB
OGWuJDOvsNW9q00LHm+y74B/afOPch+1dwtrVTsV5FoQ94Fbrlk62CM/zK7qABPxeqGrezk0YVxF
GEt0MyDsxVOvkiyWjLPLJJFKdQur564FlZqCPhmDPabnz7lUci/bB1SwDAI9oYa/h/2j0xCQKhX7
kd8c8HwFdNsofnnDV5PN+zurKQfU5v4KtA1eu5iLSherYwV3rt3QFEn640SrusiC7XHcfykZj5mb
YIHUQed5/Q3daxO2b4TTX7aX0tNwdDrikzQeJ5e3SiTh2B7ZxzYETjSN5UAKmSSqd1vrrrho6aZA
AGZlqP4zwGK1hriGHihEPHGSHsy93E2X+KLn0Xj1ix4M/+RIlc0nOoBb1u8gLDGdB0sxodwA8opL
2HFO/lYrSi4X6+D+SlEA2E0b2aY1JWDjlJO5UMmPezYPrKgvaphHsG8CsjA9rF7bDHsAsQPfKxzM
zSVqaMiMxIqK31BDpUjX7gRgP2PUUMiVBHxZewbob7rNToxznu9x9WeOn/J+S0GVrbXqpYXZkffx
Oy8CWyLe/3a3Ay7nc+LelepuBykmfAoc/nXzswGh+bf5N904ePd5/zJol/h2CtdGI4iLeAXAfg7s
YOLsOYv8TV1tjBBsZ8aAqjUjQJFagJkX1Bi2LSZJ8XTaKuKCovmztiL+AFrtGU3L0sPkiLFG5YaZ
CbU6JFvL//G7p2cIgqv8BsCE1NO4A4/MsAVhrG8yn2bnWeBCLGYjEx3dZGQEyX64IWKc8TgEng69
a+rTwYGedK6uNDIpJYNtwUKrQBLYk1EWb8tY0sYY7ohQNtS91JPEeSKeqomwh22MPvsxR1LDqt7K
quxuwT66EljriTa6xbFhqeP9zbrCLcDcrvyu2WLzNhtTkyvJwSqAh34jHaZUM5aQtsi5A3WHaImQ
zoRWTGa9aHUwRuhcakx2Xhms4pDCzwIOGMxbXjD7oAA6kltCAzXlhYzoS9ncMY9tq2omfSb4x5id
cBI7s63O2Gg1AQqBU6ur0MbGrhSo4xfk82jLHIDoyF1KpOhXThBqvrlCM2UPEryd2Nr+sCYknLGF
h+nnbUS1AP3aFpu7U5tpjgaQ0CGkTrKN2A5rNi9l2YmTJFlLMnMNoRChmEgJMNGjSvrGRzNZVMQB
FgWXCwNmn4KazA9EmYK+Ff72a9hnwEjx7KyiHdTDiAV4CnDhyNox4x8Z2922VSNAuneoUSghsQyI
rUmreg9niiA01Ls/mucJutK1gOOEi3fv4aGpzhPIufgVy293jjHL7mRN0DaTjk/iIPiGCTkS+RJ6
MAIfkfKMYJwEM4GhgYEq2ob0yTW+Frfg+5YhySJeL14R/7Hcmz5yMHREL/CC/LTjG8NgE0vdrqWn
0s3L7TVWUdTZx45s1cLEPeo7QQtUejapMWFn6ZNNQpvd9UM8z0002rozEec7NRKxeLk3TH/gsVFd
6sjk2fg2lV2lld/NUHK6SxwK0hlw47yoTLApChtwxGvn5g/I16AxCqs/p9r1rbOqehYOgQUAOsy7
BaYaeDhMHEq4xM7Fa/KLS3aCsAlyRWITrtjLMnPe/YQIz9VqPrn4hnW2v/pWJyfKV0fcD2SdkexF
8PXhxkYzdnQxu+alWoiOPMQY78m81zz+mB6lT3uTT/w4br4gh9c9geutXA7wYKfzu9Tfo7PQ7Ejt
jlFN+tuccl66Icd+YOvheCXH1mGeyBeLKzUSeFrpyNmgshOT2ynyJ1BM6Pd/V2jORo4Inawnj4yB
X5kJLvxKewNe4RXSziMoAzvL9spbgXetFa9EiIra9fkcjB7CdMw5uGej/il0nSp6eB5ikWS4QQO4
1Y5Kqb05sU7/f5W6vdWkKG3xGF/aFdxA/6eXX4HpKtjOp3kuNoYLqF4lPwkIRrpfhh/Uc9jadcM9
88QQ3sbst8JwNsGr9H+7XWKbaQRVjiH7DJO3D884+JYe+GQi1eYkN6hwhddH4PBXSpEPC7WJ/PRZ
GxInB55D9YrCMoxigCpKoAUKUCtMUztr7dWnGKTNaTrDBmCtHC1Gy8M+Vl55mRfJhLSl1UdMmNdh
eGthLItFnU2GH7mrx9ZZoiBYvRCkGJfxmivVhoVg3JVLIe0YGo4PwRnrDLhsNUGq4wOPahUiJDO1
4pi6dLOtWasru6TN1wZHuoz+691lI12g0ukt0LUG+85SVHiIjmH63tyU2SHUquHgEgYDmpGJWlq8
7DaiaGlbu8EFCdC4SemoXSc05kD7LqjGvKTybaXI5mEfoXPtEpImD28vEPrJfIuker2ScOKro/np
Mdrp83ExD622Rt8oYPGFeyW/fF1pyaXjVD4fnRyo79E6NmURGUNSiHaR4PslfqXJHIQ7sV7pYmE9
wrnzgClQVZhTJANwBAF7OUdc98jrTc2KoSmzYfq2LxgVwD6ZGrrSIiu1gYTwPJlZSO5dD5y/QQIy
vioOYdpkIyfuWHVkIkuv4saEm8QT7dyWba0jIoZp5J1mAZ8lXeLp2IXEJEzWr7reBcFLrwuF90Tm
WcZ7BL1YFN3fdZxf3SI9DdSKUnJac8y1/smNrRdl7DI3q0V2ybyZJbgGRCLSSznYDtKTg0BW0yRl
oi1PM/30YnsAzJWFMV1H9b75SpQ/ibybycQ6ScfxYk4boyCci51snboKyfQHFwVt9o/xYWTUbnnv
9+NZZ00ufL+YLzmMMZFxFw+Udgz4srgQBeZwhf2JBYrlLU2Bxo8GKCx4N/9eTAvG6WjImnNYTHaz
4xncOolM20dy5r94K73yl7FzEaZuUlHoTpm58DyPSKURGLtgowmpuD1nQlZjasJYuJT1bhg3jzic
XAJxID/OPDkqRXdvmk5yX0nyq1c17lEFZf+eaqAXbJNMnm0FfRMnzMZOpLWYYx7tmtA06gTMDOvG
oc69VQC7p457qBq1ku0Anj4PRMufBXhuGeJc0aSqRH0rZa+KcSkY3/LsXNcCbVz4KN/jxQK8p4S1
fxGB/GZVDSjijgipaSU3lGQ721XR4LOoZHr5uYTqw2bvB3O0mH4bGpaBGWHtE/ZqZWEUk8OCOH3I
K5nOIRLTYJ3PfHwwpQMKCK5txi1yae+9e9BRvw14wZSVCwpVyo5yzLIHb7MD5RNSzPaM7gPR+q9s
aM5ST0eo00NCzo/huj9U6qY3JiUNWMq+3zwWMAIwLffLZG2yxXxwNzkdKWyzD5Hc8A1H31iY7bFB
voEI4GxL0XYEPPhVLDJduVWbHeKcppEIcsepF0WMfMIiX/fFDCMSw3AwtC7VJFBiacXMJdzygDnk
wdDq+RvKB9H8xpK8QVgSv7UwlvUA7zYP0hfLvqHmViBiiAbPFZRGtqa661bBwvBanw+VNCbDclD6
aau3ytjgueIOB/twkj4aFMzmX8cHJkV7NFF0aVtbW7zzF5LkmtQrp3J1+ZW5+jm5UEXkQGsZC+Rd
cWxlF5Pk0crDuRrS2ZrSzuAX4eq0pxyaY7uOJRZONhsAgLnK+1EzMCJ9xvnMQBIRjWcbsd5Ykfop
aGTYUmkZ0XCiVRSK1O2cWk1FCbT0gSJv5hm6LSZ7bxuwPvgETSa64meCgEnRHquYqg5ehP1bOU5S
huu3X6vBk7gDNNb4rYgAz1EE79Mcn/Ruzl9+Q/MpXiD1tW1RRrPs6Zw7wDGBqQD0nceJ96UmFNsg
9wKVHTxRnR+GPNXqa/SZwgDyQZPiep3/MufSDwRd2ZWsaQWm9x7WE8MdnazEbUbUIXe2rjWKFS3R
zI+r6/y3Od1UgT2DDYL8RBvv5zQyaW1qeVol+SGVx1hYSasRRb0TDFeH+MUAVQeMITp8RdDDD/rA
DICple4I4j74rchZvOOv0UJ9jAbp7QTJyKDWFjRTlHZuFCgn1u+Euwu0BzEdDxRuGfoX0T+n4vDd
irgoAFR5tH3qWNVNv19e0PaxJgC8RsEyfxp7eUcXDPamSMb9Rx5H8TYURUeWNcJInWT8MPdVGG43
N+P+Bbxanhk2FvLE0IbYR/lVt443cd7kFdEWLluoaEayYzI8wga4na8Tu55BPheudZo3Xkl7XGRT
2zxaQQzd6bFkFTpsSRUl14ExXQZclGaZY6z4xR0w2QV6ziXfZNqqOz2ZIi2ANAD54kPdNw41QCDK
4L/CU6whvpiScdcIVDQh7E8z6fvQ3YOojfaIJUh4UKjO8VfO4E6D35dmACNzNzgIRyDA0/lPufnR
1vA38xjwBvpKgQ4r1NSZMJmhecUjV59pZimsWCAcpWI3WNcu0fZ39KU7+68XGdSj8+hkJwhzAZL5
fDMk/G7kt6oskV552jmQrY85nA9vNjPZFOn+OPj1XnDYBq5FzoNRswM7piF0f/J9t927k+tx5oTZ
0rr2RUoii/ltk5KEG4ojjixDv/TfQdoIuQwKrlrGho6ocznBPSaLU2ix1OaalaJalodO/UU/w/Ag
RJw7ydtrf/kqJW/6v9ftD/Yq3k9my9QZgt7mo+Y3O1IMIfurVWgbzZgQ8JcPmv2FhIEz5jkY7w/d
Qc4aq9Y9uKhZ2I/0wql4avhXeQXQre3MpCBgts4s0df96SxB/LUuDgwRpQjqI/KWYs5zh3GzSn0Y
1Dh5JOyrgjikaCLhUjo0Yl/cBPzOpp8kyo8P2xpbYuVbhOzOmsBMoh7tvaSo1R8XEqAiPWR2Flwh
omhtohb8Pu4ws3C9e6mx3c+O2efKeA09zovENY7duP//h9+XNMhxVpbFd79K6rER7B83iXmEuath
VfdzoEb5xORGQoopoN9o6TlON1o1vVIk8Rfn42u5s9XlxMoxuDrE4fPaYlDtV8ra+OC0azt3kWIF
NTe/jyx/ntBWZMYjIrhYsh3Tede+ddEHa+OVugDvJZUXbut44phL4YFXAtR7L0hWzzLI0/KLd1jp
2DTb8p4aaa0C4J5BuokP8UNqq1OCulu+ptc4/SsIP2nwXuJxvF19qT+UetJUW5giAi+NWm16Md1g
r9BSK41Fp2GcNUEaYaFrQtYqXuF0P1YJalqLOC1ZTQe55yhTdzbBjfpMn9tgzSJs7oGIsLAGpRdD
15Q07CsBcL+05bLuBMDIC/APtZsMBcxd956p6WXFi7JO7rtdgoUt+p77iGH+AVRH51GDjIApNziM
k2juqeEGFPy+kFt4SaZ9f1OgksidI6Y6jam8/iUMMUB2EGau2V0ZVxGs6AMRDYR2Pv8sDIeaD2vw
hroWt/JjAF/CDkJ2/H37snf3Igo4KjUl5PiZ9m0KgVsiHIp8YwOeMUro/f3x5OCqmvc8WhKLzowv
GuIQxrB5940KDAH98PlEN573ZgCGArQHwuuQYf3xg3z9TNqvjNUIuvFRxIjwuHth2G1VYt1iUkQE
DMPG04zTKD2R9bw0Fz8ssku7onphgmMinHxLhkkPlBctkfJYnEmh3Dyx2Wmqos4KWzgsQ8oKeEf0
Mu6LlhS7ZtzHSKfmkwTDZ2QJy9GvXbZcSdnbT9aDGw6YEfWus39ojgF4fjRjtCJR2w/zRyZYZYkH
Bw4jItfRrxBjBMJuvfhFQOLbTMAIRUkAWe9Fro49tCKurLlxsvJtaESmJIn5F/K8bgXPMkK7EI9T
+qVbflJl6OjblQh645OMDqA7sYiK41BFB35hFlZtxyD1CZXiaHe/PdkzNlln0Ig0yYUKTWFclXsJ
XS9rW6D/CUxN7Ws4GSFLZ3tjVeaXPH8FjIfTzOx9SYvSoaRcc6pEGWv86T/IlQf0/fTCAcuAT2Fl
8KwGgJpI7T0ZGPknh4HpVyRUr5xXzH5xzpEFmHlNpGcZ/DGLfSIF7NNaY+CkwYWIN8uJhXtvkVO3
Du6X/SuNpX9tGBNM4LEKz5DoxIIdvqMApV3ClOfsLP+msXvfyNW5OR3S+zwIiaqFznuJMOAv3mZQ
NmvpXccidFKwGoP6NCquw0aK1b9Ftyl3t4aCK/ScrxTMerxx00LgJV0w2g3IiMFsMKovtxEvtFea
6AnMd/dFcGcCMOf0fBVCfatAK9RY+4oaarFj8XH0MrWyxw3oZ2/0XUej6QIYTTTX6WC6yOn3ujIx
gYsCdr0Ueoww5EJ9KHjpW/EBoty1ueDlD6CPN5BIKTEtSI6K76K7Y4DZOtbPGSGAha4Uw2sW7njE
mXDrFT9ghTlbzlbmhAVRIGr8iBc0Jd9Ddvq1OJlOWGKKYhB6hVDZo2LiPO6t0hZIMpqapgqO7To+
H2ZxOxh28B7H8d2wmGNRCFXmXIv00JYtKfNnXGSiB2QiaehP6EFEGKrMdzVWXYGAG04FZw0UJ/4v
g6bSoglCBaECWiyYceZfeY5XXJAKwfO0HVN0+ei3eWQNGAapO34By5bgvW7WSRvu0jI+jSZlIxQf
bbLskxBxrdWokJg2cWa5/j+ljWYZka+NWa8zMw07rdJeH8q06DqDfmoy2XMl3bZLd8HTQaVfccjD
XTsLnkcpSo+S4L39L/Z5hTOsVmqFgBp8ylRRUIZ2YsWjsntLXDMJeilrKwJF+Cx4du9JuSe40lAK
QKt6WzR48tIlPgwekP2llJ5RiMxZt/J39Ant61IMUDXrMKRqflQj3s4kL/ySvkAgonJNzBqN3f2m
wOAutZcypcPeICSkWXwJhem4Yv/Kcku1VzmJBk3M8kPi+NCzl8JsnuGtii8kwPRSlbsipajWWO42
zRZyhzpOKkJceLoPrjoACs2LX7CezScqewuMQODbnPkbRRUR2VQxTIt2Qe+2/KPJ1Jia99bcXa1s
MC8GE/q8oy+jaXwjNcPzqEhKA1hhaJG5iAFNsISusL0mzJc2+s2m5f5bu+7uKNZvp/C2z7MH5Q0r
Dg58VSmYk6IOea475yN7RxjzYbl1v8Q0+q26m2Yxy3KZPptO1YF/Qd+Unx77Xxo7UKkjKqcGV0C8
fJ0rRa1IopnzLkZij/XGWiWxmGGrAUbjMyBysO9hxqQVWHKn59M/sbNuhALb2gy8OrFF1ZgjDuUv
u2ar8eEo1bN2UInCrQF3x9dSXyvPxOIPZcvXXwTiWTG5DMzOh7Ji4eiWFtekdyfnRKSZbwT+CqlA
oPPDHfc0Fjr0LnUwKWaN1IFcjsiPhCmjgXv7VzKOg6lSc50548F5hs7Dx+Zqii13BN4U6/nXnv2g
YaZp+HsqWShHgi0/YPNytg/snZ6L9J0CRHnpsYYMupvn2U3DyiXYRnqXindSKxMKIkC8A9L82+eY
oqiK3i+GR5wVaDEV2VIx8wg7ugiGMWKRNX1Ei6+OFxtUhNeE4MqdvrjOxE6Elf+KY7QHcmokTMI0
Irw3BfwhP0o4Q+LLnSxGI9PORrQt4IyOvebUAq0b+16RMucKpBb25fxr1YwjRqt+B2vCeUdIxT6K
+V0/mrlBP7Csv5M3BH2/r7Rzfp5cfN/1IVj4kBgBiaYR3TjJ7phb2npT7gSbdNQhfuS2N7SGTeBV
PC01qOEkrm6wc9E7BNn8QYWpnuVZTTwTUZvR8ST5yLUzUBHiGsKeyr4iiYDuprF8Z/YtI+OU63ez
gyuTQKmA19jt1EvA9WSEYirVkEGN4BcE+0KvZNnEXUBB+r9XLqY8fDwYAcpbgRBq1xKb6CEJ6Q4F
zJByIftZGjjmCNdiT+k9YQYe2qGyizzvBYlqQVB8Lcl3tstaIVRS8Gq00jdwdcEX9Bz5T+P+EMGi
m2qeuhmyR4uHdtslpByOIbCtJlsRmclmoGdDvlvKkN7nAzrTvAkzuZ1mJIvqb4qjMrWgb/My1yhi
QlU4yduTix9BhXrMDdKN8qxO/H8fCF2XOl1fNKPJ5fZmIvUgPntFGCr4OeREgl7YzyJqcmfumfYC
RtyP5x4VK1DbApmLbdtPzGuWNVzTX8XQQ7XxPcTcGf2Y0v1myql1pLqIakeaSDFnnKmwIIAEfwF1
FSghnwblSmHmGv/CvI/1XLC00wf6TUdGp3mMEy6rz27QoXfCTy+YLl+J82eewQ/tgPlCq7SKnA0P
55UDXD1XH7k9nVVsNlNudvaYrubBgQHGu/m64+B0mhoS/E/cg4G/APnx7qcKtCdasjmE9meDl79p
+F86XIOTgOsVVc1C0MnH7UOmKXylEBdZjLikZalOWjeRCShSGBXOmkD9bquGUN2YlXZU34IgyL+r
FOkIB2vjdALzm33SuJj3MRM68N2CyJEv0V37rPcdZWEL2zbV+tS+SgrAyGz0D95yBk9L+Ubmy7Z+
I9bcHHnzsJZMJbVZplDz4cFdF2Pfg2uT4O4VqFZokMMKg+Zl68U7VniKE21HR8o+C6OcpA5N2z8N
dSi6Ph3+LTr65sIBTwm2z94aXKEl0Wlk0fA3oMSU7PV/t0QhfLt4uBO4csDIjsOkzZkkIZCxDXI+
sduheO2J+tr1QcRozB+0jEV3d8H/Z7DgIDtqn3hvfevcPaCcoiss8RG/2YU6aYF88x5yvNa/JTbZ
+LgenEDpHI5nnsgblRxL3a6rYcG66QDW6yWvhOnfenXFxQPDaTLYf93kzgsVKoYSWP9ygi0SgOL/
V85QOxHkhjl0+s7odaCpltGKrJzPhCjpbdEySbj3K2NU0s/zq27gzYw0mFRsT4sjDmTCSkJ3pdjj
rg0LokWWIflsrNi/aPB6kSzIsTBpZ87mdYJDKFcDi/RJw7EKX/uZAeM0ZqKPJ6c0SL3LpGSYN9f9
OH4+e1JSr5a9+EhewnQ57J8Ybpx0BPARh/EoBVbzg6P3llZrQpRBezNvSiOcnH2KVEfileTGdbnA
S3MzKDmJ/MxitUy6lOce+CI9JCOieA5fGabsN0W63sMXnaSCKLChPQBz6grYM4ec1MWC04pWE9EU
ag+rLdXqFtuzBZsW8BCLDhPv5+Uk70+CDxBOtWI96pNm86bAuokJWEyM/DZNV44ovep1kjNAOBYF
bEew0ZPWOzs4KRNSwdLJ4aMMn+40b0g703civ3b4ffDYeR1MXLvfoOcI5BclqihK5Vcf2tKcEy8G
WVtHM5YiFSIdYtVmOfY1B66P7JXN1UcztCkz3EwC/bzAfm/ojpCfbBYnipPG/TGROlTz15TwwTSr
VON6puRaGkFy6pAjkHGK14dtpUceGlD5sTL3P25511rSbbxnhRvj8xKLESTl+z7XNYwPhPXfbkTq
VUmmT0LlO7PnL/TJnyPKgUKc5PX/SaGe1hIxJnrjbH9ffiJ/JgJEmRO8UFibvE0C65s9DX/iPCRi
6vsqpyk2J/v7/j8jcc7VYQ69oFrdADL3X8q4RjLDR6a+sBJwB8lPzjG4NLWXT5dOQM3ghWbTu1Jk
d0YwcbS+J83cuxZEvbW6N6GBZzo9DJR8kNqKYf/7wfTGb5WXZqigm4GoDxsg6TH5UF3Aua8OgVRO
tS0L2VjjN3dOAS3ogPQOoylV84avSn/NDaCFLEko2w6BvUxnE/U38P88aGT9ui4oypAyw6D2qBEE
eGQWxTEFcF/P53zKaXUub/BuOfjU6RbL83XIocCOvTwuo2r4YYRUykysc3ClRUC/rLBDrOdxECeh
9H/wAiLUweM/kmca8RzrjsrcI7V1mtMj5Z8Hgtvn3E4kCmJSKiC5prv+6Ocq7G8QoWyodeQ2hlsl
Qop8Q0xq+X6lVAgwEplRFEpPZwAGawTeq8Tt1j6wh6Bcg6VXl7zxMIVoXIxfz0YqUw8ct++HkWpO
YsuFdYgG5T9kBS8eTPp13ZnqsU8+izhy+iRdpdaSrm3VkW2c/sfdTdba0G64w+QVmlPDlzGbHeKG
ZzK7CVAPIOlaKe591/VhhKGb/bVVRa5XHu2jKFeavyKxSR4M+rP1pXBPkAjMnXJgzN/HVGro+BLc
VfQu2w2vu3H172EOfBVr9SxJHDsD1Xwe8BaoAoBujoL6Wf4wDHhoK4IThGN+KBea09iX5hgUbkO+
0visEZB8MNS2X5dSXbZLCvIkmnDErAjs588tcrJ1damh7LraHxC7fLoXRvaKGCQ2fqsSz3wksMt8
gEYpV7jIccnx8z0Lp6mqEcGS6+Im7Wg0JUg7o9LEJMJGE2m3U64Ue4Fj89JPNJR+Yz+PhrFQWDwP
g82GUEaJd9ljT10r0K6AjtIAT3Ili0Dt19Sp6yIfJRiNxHZEaPPzXqjfkr+mJuu2YrBHrr0hyqPe
xJ04jOadjOLd/hklGZgwczeXYe4pvcRLtOEbraL0dbrcWwB46QeEGe0NGhdPcnVt2Lbvun9wKxpK
rgEghjPuI18TWbVHw9FqDd377YjHaY2clMi3MLWfTV1OQMA2yOtUD5lhZJ6GTzVQH68jBnBhRXU3
BY8Ziy1Oo7F2U2lyGqZfRLUkv4hTliloCjpnRUBiPwtBWDlCw9rSABagZh5Zeo3ULf/QEuYkgFHl
/MaGQ24gwNsv29IZBKCyMpm2NkIHbGHvgxKPDomJidVk/u59vLdSekAlrbv7W8rl38QzRBwr+ACP
ghjXLGSoi2BQHp6crEEbUxAA2jilpfZJ+qlsFRp+Cp4YBUC4sGXugn7vI5PEnTBCnKK4K6+PcNqk
9HR+WIK3gx7IoQ5g+cS4YVaOklcKsrZ8NlgBwVJVeVSspp/8vUoOdWuHjqEYPVku2WYCAShpxrHU
2pXyrLncGf492yOvd6DzX0kX6hEY1TQB4ZYvTwY9uPrdsfZ/CanaUJRHOMxdtVp5zbDHf8d3WUBg
lxotBandfB5SeAwGMtT22J+yKK/70lFaJZoBE3KCLMn+TZA87fNhBLMQwuwjo9OV6dcbIH1jtpNo
aMy0dZ4pUqnEysMaqLHzXcChBq9KWJMZXdeqheoud2XhJx2Vlz6CWNBLcWkzimMP1B1EpOzWSF34
rZyK/LrlObFt4R3lE2DtuNNeG048sGi9HJfOqaVgHSQ9rvShf0P9O+nyp/Bh/cE/86qLf+zALQkv
WJiqWcu2lYsxh76dx0BQeqXG5r4Ty1vzGwfOlnnOQZUcf+QJ/ZteKZfyE2tUeS75olMMGEj9rMVA
KXrosG+c5VDcsheFKpDjI3pD55eCamGa7MqS9fvgu/4PiJOAUxFMdwJKxqFUXSCweURg3K3J2KH0
cHTEhT18YLAe/1n2V0obUqYlFWQrSd4viWEL6xX7VAgAcJSnewcSEInI6LtkJvmwTuIj9eJgsSsi
+uAxsVoyExW8J+THjQXBvv95iJzZg4F5m6uogWDYfq4IVHoJ8t9Tkpn1G2DuZ+JtsPjrAXuzd1xU
FV2GAgyP3nyo16D7XPustf6mMbk9k7ucLQcbAucZ+deCsReEhC3JuXFt2KH4g0+qRQ7xhAJvZdty
j1aN5e2jlf9UzXERwtaTWCq5p0UdZjsBoefenZJvRZaD10csE8+q6dACcjT1yqslwqGryA3g88Kw
6TMtujPrYzmEneA7I++eWgh6fT/NlXPYlQBgdRbYLA7ezU2np/bv0lIzfa1elYt0Bq1w7nf/oWiS
H8cxSmwB4TWI5UtnLqGucnJTKhOm95X8KhumsRcrJ/1MbIj1X4z0rTW5ehraJrPROD02cbDPlgio
udCRZ0m17JbceA7etaJIO2yvCAJHwwKEx51k8uwNK1MKohqxGQ7Djmchtwby7ekmMOChJXWqlXfB
rHOp9G3CaCK5IN2j2DZCGTWcO60dMrenIdVt+96CPrEmlg7/dzTLm3IzravWlrVcLnwWU6eu5gYs
Eh3ZoC9gQX7UDEnJ/fdtzZPDbP3vDyIGgXdthUtavnnOjrJVEAcyr7SJV+2DZnWtvDbzQpm3snI9
g/Pbuy5jSg0tQXPg7b1aQ3Ew9SV0G4CobqEOSWi6J9fF976jQ2sm/rj0SBd0f6Q9C4IGxfbuVhZQ
2jLczyQRplobIZ2CNcdxq3Ra2taxvVun86NpDwrWr/YJauR7Fk+h6jkHs1t5C0D8U61jeamDTFNr
hOI/HStHrvfIYHla29sMQfqs5anopIIaTEEFA5ct7k62kMfNJYfz/xrLa9X8dI/iHfB3E7k5Mmvy
3FWSDF+KB46311FmRVKClJK18IGdpkpUyZpqtCyuTX0tclbie12GxLgR5VPe0Y53rNFwGWUnC5tn
1OGwipTXB1VNXuE5+rCim8RoZI/u3ao8IvyjBxRySsyjVWTGM4XcrQLPN2fbqX85WoOZUhhBPzI/
JmD3tEqooyAPWiPRcS22OcznXhJoz+s8Ll++zrqpnTGtAVLV9Un1pC17OF01sfFyAAJj2WXJh+kM
mzj5nRSPpiTsn84dvRlmj2HnoslIuR1IAaoMY5f1eQvQYHr91iz37HbPNNYU0omWmv+56H/8ns4P
Z5TZMMF4uksc411iFJOKBWk5BnejdM6CC6je0Tms1jRdSknRBmIeskVl/9C+q9MVxJYAn1U6aT3h
n7v41nJl5e3I71sp75OSEOkLRkpzvpfDNHvIhuynPyPK6p0f2UNxZ+TchBEU1lO99cfAoDtYrn++
YkGiw8NNuHUCY00QeIvhjyoMG/6jtS5jJPgG5JclaRG7ikzC8XM9+5SkUye32hBUeTtZCWvMehfQ
zefVT6Ki3wII57T+HeQHPoGOVYnK0ao2HT0qGlXb6WmownyIhQzQLBBeDsZ71X66Ky5TE/4gLoSt
6DLbTS70+agNIIYkiABMhCMzPjxkbO4kmPeEBrpvgQZwILw7oulRbzj+m1t1vwt5gGmyib13Pdo4
zjxbpkapkXAVfcZEsSJjYIB4szdJX/UrX8WkwwyMV393t5wuEdQHa3Eye3om1l3qWNn+dHqVqNB2
/hhgFIFNficSIhlkZ4dL/YADkSpTeJokt6zbOaEJZpZ9T/jz+hTR7RRbkNq9msSY0o4CHiradZrG
QGhs0qcusy4VwY2T7cZia5VOHbKXJrAeB5VHwEwNS/r6xc1cSqF22zgBvyBTrJlduug+qRX10Bhx
E8arKTPa7MykKJCumH3S569/VpROS0mxxHhSMCqcACTiABZG/moSflq9GWz3gn+WDwt9HJkNy1Zh
pyl0kitn0CqMVF6rgq7QXgFNYXftOjXBj/0Lecx0UpTYBybryy4tcwSkYtWom8fqcoP7rwK/bO5P
8V6MO98aHdG2J/o2tANVLxIDa1apEEBOl7aSKlwUT0qqH7BquPdxEzl5bxZfmZqeSSS5/EdQqAuR
m53zuP+EVhC+HSHDgCx0Uzya1klHd0+dVlIAcNQqLJJTczbQhXM9HDbcTsSAhJWavzEcmrhsXDmT
Y16miDwjDNOYT/L2i1e9AmLIpkcq0KfN7yT+AV/mJT39RIHCqaOceePhyYuEUVxaIsudqLSizz4c
TxHTXg/fs/1/VlWk1yGNEFtDx4eaN1B4AngWrK6+yGCVnYO/dlaN+//0f/17gF2XL3HMBiNNMVoN
PqxEaFj9V+z4OrZAkEiJ38gM/rXu3S44tw2p2IEydYb7vXQDPUPBy45zpLEuijloaaRadlkc3xyJ
i39ybkpwCfna9vTb2kUdR+O7/PBPeq0evZs3aTZ+OeXRdm8bnkqrtxcMdprzYqUJPvQ3E8CVI/0/
w94hGtKzJmB3Not9vBUuf9LT1cv4KIgLJgedfuQNf1CpfD1qb9LmKvhzlj99lZbOm8I+ZGsCe6kV
zK3b6JTWaN7kuvkJPLShCRSRyHi8klzqRjhdwTJ5DGzeD71udjQXR/2/Ve2l3/NwV8aQAjIduF9A
CxO8bk5ZBYhWUFJ8KZU1906TpNQq78TKthqLzL/IhlLGhq8K8UZpj/3p3jMYQ0hIAyfgxfDfimeC
szt/ENs5ON+Jf4LMTlhpo+PMWRt/MYlvj7vQLf5LuKRs+8KXz7nxqr+6uwC1eSKScO0agpdhbvFa
nMyTeATtdTmcMHTg2Dck3fOmAo7uzfVdHvjuiJFNKgyACq+n4ZCjrFs2L1OrhpsAg/u4TBwImnX9
1O/hZya9vRwx+r6fOaxJdR6NKHsUfYfqeafxxL5ksvqw+CNcVFgntCvDvLIofuwJFKXskCtRkgxv
ZMRS9M2B6Zyg206KCLb+4LUEC6e8/y6WTao2RYBxiCcu+Gt5LxnBUrHtVo0mrd9cPA+sY3M5glg5
qZTf4eJh2TS5Tm+WshQQxlubFFsjfmParvE4EQi9TeKl2P2NYy5M1xA/pddPHSekRiVD3axHQqtF
FZmrtoE/nbrDuOGgMHI/i3ofv4J5wMfjnES30juUbMxj1lRZN6UjwiV6kh5iSMVuFHsY1QPKn7HD
KuSPiXenB2nl4agyRhHDba9na/h6V8OaA9zD8CtZVApDts3GaW4MtVh9/AU9vPSehFmm1xbaYhHf
rUmVsRNg9ODuw0j5SXbaMtz3HVf/oz9MM1nQq9IffPg+vsYI/LnPu6TQQyKqmicM/3t5DLpzsNBB
aODQgtNI6O/b7rFAobdt0yDe+c3xEayadOqsW2+39aKeSVHi+cL+VsclKjxgLhOuXqRfo0hIxXT9
knjDGUvmCSDHgEx+p4f4RfTHpG3Gex4mZEl8fKwBu/mYsU3FNJyPEUBJRnWV0+BdG1yWU0rU+tiK
PqLKApEn33uwqYrTVTutD+3oh4gAF2n84p0N3AV46gdQcm3Y+f9+ZDPd1r+7++Cs2VHqLEE2dAj1
i6T7W43YQi9U8Wmz1nYa8rLawnNDR2nXFsvkVRmtPgXPIrZYcG567fjrS7zDFesNJXfxAw/3BrsZ
e4//O5FwVgGSZ2zs79IQBMN4W3WHbhQLCzQlnnWi3tNVCVs7wUH1zvqJO/avBjD4MUkwItnPB0/0
FpEQP5WqiSUE+pqOJbtAiSPWwLtypRYaXrIi6Yojn+Ikr3lGQFppCVVOG7Ab5lEfe7iLhk7U0qRD
tb6WtsBCrBkdRbMhZ8D9iNBfiGpUKlxPYwpvATFopVcTbUC1DefA8aTSBAuZeWD5fcHi9vRj3a03
DpfbcXXpJfZAz/i03dV6wnknXvayhp/TIKZ4Bbvuat7yf2VksydovYmaOPIZTytwgN5aZt5eP5FF
Ostdya2IiiFIyX5m0EwQ+lZRKycRZWirYAKxa3bUAGEKt3WfayRLveOlmz+yELSy33YlypqApiI0
89WSNv0M4+1+V98NUVAiC8Ly38oTtGCaFtIUVf7WAnr1Z2c97PworTU2L7ZvqZA2TOitxa0W/25h
p1FQHiD07TEelktSB6r/LuRCp93X6nUbG1iwgn1giS7TsXLkaD/AWlf/1JRHkEulwF1ZdIKarqZN
tBJpNeoIsfQrhcZrcBy6t1Kw1FGr8Q7nnz/VRkHHTAzC8kDLvbFM/5JvgDLv/E+vvShTj9mzyxob
8aaI4cvklgCnlBnjZN6GwQ1hdRj5HInbUU+ELU2v98ZF/b7dq8O247XVCFcmknTpm4UPQtFyLiOU
WyIJjeSOmfFnSUsgRLsXr4TZuopRWCqz0+FEmm46cv5Xl9icyk6r6NuIknTbaU2ZsoxOrcWsJEyT
0UIVqfvu7FA2um5Dyc1uGhmJwjVR5bKzCdQqj1shKxVVZJxABLsFwbzd+dJOwyDranw6zaAdPh50
wGQjCMr22ivosCtwB6FrMM2n9WKBx+4Fd4IgIYC8tiBz2U4q/vnJTZ/i9UV7rYnD6pd1L0ynF1DB
udx53BjErFAzEqn+9p8jCG1DIhC9dR1LMC72Lz6pvuVMbhbaEGdfE7ZyK2LFIFZIfhlfWTEe/WK2
HxSNvpU9/gKvCuyOOFuOisGUJkm8hs7dnMAlBspub3RvazNH+UcpDfO9XXP8Y8EBjmjs2UlxFvM4
RSo5N9RI87jVoBJQr0sfKoYKlNtG1FNuQlcC1Qf039tTsL7pJM3+6MzlkaJTIxEeHHjZ874wXCvP
a0xAlR0c7zPS3jx9FmwsJTFaJZD0vvYdWcTAo0oxfQhBzI59UO6BwzDCVkczGtU4Um8Os9bqMK7s
5D+WIMCT0+2gm187L5XFcJMIIKrSHOYOKDawkvL+8erM4Xeltfc2zmGRaXe3a+GHE2Ve47dKoYMM
jOJIzZphS1A0taFIudPjcKFKgNoY5p0+Cyb2G9PmfAqQt3TMhJ8vgIrV8SygvPY+dNCVWZYLSabo
5eHzw1AyN8+QyrengNWlKCCnLu8NbpNFUDLzC9iDfelIJG1Ku4+5M+U0tc51JDxeC8pK3m+ruosN
3Mjo7wH0FfxkOaVUQxoam7uixO9RWUXC+qr7hkYkJ874uNBA/04L6mQaxI3HCUu50xlO+tDDkhHa
MRHxkaKGRhrIQgYRdWOrfX3hvD9xE/P6wTH3tj3IIG3JrYChexA5xtQrsAe/Bfq5C9V4AuIyVfJb
405T36ISuk9yPVCuEgfNqRtu6Pr+vXN/tqQDkOgPyGOfn+c9gTbUBKR/MwN8u9nGWimAjbsObck3
yht4PQ693I8qJQgMJC23w5qBY2FZeqF3DRpsihFFGR5+y/9+TKBv+ovuTMJQYkhO2BsG8r5/PJcn
f9Yo8IH8K25WiHzPtX3HcmnpmOlgUUzqNMfJ7+AXY6ZcSodOCoEC04/ZI6UpwItYW3oMo9gHFp+A
HeHlzlS14bCN/pvXKQzvak3d1TtFJoDW1gw1Pu1OgQOhpHYGVcvwikSVHpvyPfJ9ubrb4+okRt12
YyqPQyyMcOCrUmiNjl4OQZsayE2yjLWC3D8dsABg3VGSQRnWrKA4/sAEevQ75p/qY3ExYI1q8hMC
zM8B2v9nKgLMPlNsbuwe6zFr9cHrKRXSqDw5taRzprXifaFHYdQUwxItOstaKCKO0AjKv8Zw0U99
LwZdTAirjTmYuBA6C3yzzdlAFXCSueZP+1NDQm3CuqL8YBc/S9p81K+fz6uz5tVvxL23RrCM1ORd
wbEtuotNwId39hgZvCLHErOuQqVYQSuzCNjvRK/vHXTakOF+iJMfbaeS1/wayX+ULc5121PWSxeh
O//jqlhxBxxWytxdISPdWlvkvaFn/9LdD9PkcbbOwLio5PpbFTgesAmapdnudo4jedND4PuPJtwn
HjUcBgwoLUzqhyQwEvaB90HrEBTSSNBIAanlX90w2jz3eP8opl2NryF0ziKXHwW3jCGLh/DtFlgC
pXZ7G3hbwf8ox/L9TQjSAji/a8YrOv/WX7NKVoyt49Rp6KEQuouAiE2oznkfMmdw+w0icI+oQJGl
2DV+7Xsm7In+KQeIQfZrT1r/T2KrjinyQsEbdS9XGCUs0YYD84qjwX3pe4ujuCaxYoaLXSgx02ie
V09/Z5TKrll+pYrP1JryxE42o+MOUR6g4YnmPHcB+nlTIN7UbGrhupaaa2D5MlwwBzDCVwK17+iu
xxPJPbWFcCX4MzWZ75my/vfue3sqhiT/7X9KL3p74bmbHBtzk7P81juCzyDKDmXEe1qwFCP+iQj3
EMBJuUxpy6QR0aZcTiZr7zil3gZBL3L1dYWWJHTHYPtyqbFUhg4GFUS2dk9O8qiD/wWUlKrxUOf7
7j41BwK+sKlbc8zcw4WewbEvtHJXAHq1MniBdtH+iC6l/ORUOKtvAAIYpBsDZtSwUJmBK24viMrT
uMBXeIt3t/1b8Ko6k9A0cj9mT/NntkguS+c1GCcu+wXbbITiPwIAvMvs5F5WHBYzv5YIh5+HPciC
AfnQCzmErOcC5LC2a5kNbu1Og3Tz42yc4zWYoFUjbtJwvE0rtvBjdYUFpgJGyk6doHwcHfktzjoc
xCOTVgLSO8fwQfw5s2HQanG0U0FmZaHtc33FktCRoZBxITG5RhiMRPGbCPWoaJG1Gtqd7Qns6Nwt
Qt8JBW+us0gAuq9+jR1wVLbDXXNZAd5at6HpPomHdOT24P2eGb5viAiHzDD4qf6iS6zBu80ozPQ3
a+F/Z04Irf16J7LilY3Pwg3+inTg1RV+r8gxfBC+pYdQG/dO2eE3Bj4b7Y1ID1QTl1g3aw0L3EDP
0zHFYBd7DQFOm7wHGVKT86M79fJUZYQbbsk/zfwKqjkF3C0nhs/FUsgfRyb2ILE39PcX3jIP5+8B
LAbJ+ulF/jCNZ0Sw9pYmRVDBanLIyIzlLO2Oi7jQJ8BhtyY1rOa9hYxlkpv//RJ/+z/QXiQUMj3w
ARTjyO1iuEQ8uROq9e7cPw3yCT8av/clpljVAdJV+hJ9NzxjtekUsHvcXpHnn1Qi5nUWpnRG6XO5
sxenPbI6RjfHaVWa9oNHu0m3R+sfFwiintCiH0RSwYvxuqzvNACAjC3EM6EhIv7jheDfQnMYoy+W
AJboplHaJ3qqpLmKdRY+6R0JCsv8s30D7yNZg5wmSpq5t3wO7dP1DgbqEWSdd/KHL7/yVQTEa3bY
ov8iyHcnvwKcqBluRCeJSMOqQ9/ssfCbLrEp7aHElteiyeHRUWUr+gZbzM1st3EpoPuJCVrzIJ2y
0YdVonDC9Mh32yswdE3GZKy/t07c8tcr5gwPf7XrEMett04oCXpaOmjQiLwm8R+eWRMgr+ICU6m7
6qtiihyFssSzq40JfcuQ2UZKvWpivLqxa8IxQZP0m/915iiJY/GG4g6DQHRvuw4yvTJqWSi96OCS
Vf5LXmqcXXKNeBo+n3a668VyDKMB/NTI587vcSutPthOa7ZiirKX66Typdb1fQoHtO4eLDjLFBJg
esCaPiL64SAkEciK1pcS2Iz6LNWddpIcukzzcoS30Kw7+hVJ8vmCdsQ8nHNBg+YN5sz8LG3RjhBG
lyV/suZhv5KptGZEfuufnZnpgsyVm5oz2Lgp96YeQMmkaJpCgYJv70wqQOlWkFvzS0OgvHZ8Kiya
5r5RtpUq1QAIrnqw2M4EAt4ByUyeT7gzd9oc7EP44Hp4zsrvS0s016mc/CaobfgIgbDdS83whsIe
STa3V87Ee8Pj0EBjj1nS7VQQvkaTM5PG7kWcDUkEnYl55QuHjKY7Ff0iEOZiYk3C1FWZ9m4EFr2g
nSLHtolHe/PBMEIYUrWBKi/v/rrzkk5yNtWGmadJoGUO+S/V/yrH7Uyev2Q9GdlDliiEfBshgNEd
IhHpyi3w40P3la3g3YOoJrFYBWV15XZRhLSCDaENNHW0PfIYlwjd8CJy0MmtlOqmWw/f5lAnYZzT
Hyls2CMyeFYcWs2Ffzh3AMX+phwqy03+08G5QwG9pkQcMSUdtgGqmVkej4EFZWzyZEmzEHmfxIj6
8hEg3ihZvQFZvlrj8BmACkUYT+lnbFGVQcU2qWXeKZWgnKnQ/bQk+gSiFM9OxS11w+0UndzCFq5f
LG6zeSna0gh6FBtpxgPBXwd2rteEvadoESBJoDHJl6jcZVICbCneBCAT5zA7ELGRFGKgPYQE9g5z
IrMXAfdfvGG/gJGJMP8IizXeyoSvPYLWnIH0GSbEX0YpTbFIKLmPtDpyNqiKiSsejdlgElsChtjv
WKTvX22d83ameLhTaFh24Z1C3/3/MoVAatFGkpA0njHa0M9T9yCwpHzGqb2X25VIqXkDPXy0MYwE
4X49Le2wpLGF2wNQpV16XULQRKEc+G/hkGxbbr3XRLy63yr/flIYeG7P7Ww786fkn6c/DR1VUo9k
DlSMYxVcPCViR7zBwNK6Zp0Uw8EcfXnuzKMXdXyaG/6/++teGzuRh4sycbzavUYrgliPiobqjyI1
VWljKSMbTlsNXiGI5DDSfVACcVeizsOYkHTgUO3mAmLBne3xL+jfjyVAQWkkA9lJ3pF9UcBl/ZMo
U0pSsRxst1sNK3IR+oH5uxvBBvzoE91jbSAlA8euuPEMb4KOVeBZS114OJBEVL+Ge38t9WkIi4Gk
T2R1iWSRO8XXqsagveV0e+mhuiCagDoFS4qEMHb2v51cG+3FTzkS09MQktg+5KsyiEaYmmBE/yrD
X7qV7cGOKaPzItZLjtAg0GTKf+ZEU9c9swq69X3SznhajFgZCpBbfQ2/K8xIL9HQLqOOhZGnDT2Z
Zf0O71+mrXSFrDRN1if4O4kBpNz2EvpQaYWX/ANcmoEVXx4xx7mne3yi4Yz7C+uaXd+MU5RCva04
m4wyHeqghEVlh5Yk7iIxdhK6rVksrNxf2VOP0yw386s+9gPWE0Bclg8AunQGyq5+cLqupGAqg5Hl
UaVrpMXIZ+do5WFRYY5cZJFT9xyVDHsC71cjAKdyw8Lk02XSvTJ5HpahxLzp4+eQA+8knB26vJpL
6Z7fAI0300HHP7Kx3afX+Vfu+fyIVHQ6NNZ/oVVlTQaY1Tzf2+IYAfuCldJOOTAWRLwqOWH2wF1K
1LcLDq59hgZfZMKFNGgTt5UKMUaMLa5KFstDBgWIslc1E1s4OrQCc06A2rG3pPsMG6VNgBZ387iH
JKpyzXedMwtJZquTdXp+zsi3+iTfpfxscK5hrhV1LkFfzyyGkDe/vOEqTlXIZfV9hFoq6yOYD2Yu
T9FTKqCtDqDXKhUdzJHgN9h83Wi6RkkAowrjvjMcGgFcKa8yJDMOTLfpld4qCQnSLyA20r07vOhR
6/qEOx2SDPrxePvnrLNRjOnuAAPJm7aa9/ryxBt0CC/yKsmyOZCw5av3au2UzF77Ruyw9ZMP6c5x
rbHlFWx8EgBQ7e6LSnYGhdgL2x59DtXzbvJxPawk4MZQR0+TCpf/0vNol3gwAKjEFl7qSZkGlLfb
iXiC5KvY9Fct3PAeGLmLirg8/8Sq9zseF2UV9mpD0PqTTOY7sH1hivw/OENxUtzX9UtMX00YWcus
sTD7N6fJI620Ee3x5yJpDdUuACboAW+IYabx/4HjGlaaemHy+TWVuX3ykfhP73cnPhzBv4Odr2EQ
KQbr4vKq/0ei9W4rQQScRgOrVRfvmCtkAA0ym4Y1yUxr1QzBSIU8fyv6oitYOlfh47KWdc/FTC5x
vC4T3QJRRD4j9pgUUpUnDcf6r+plQTTabPHgMxbhq7pWqLb6uQPknDaWBzhysmHWUJSyJTM/oxVE
63fRGdA30GKclN7v6XpV/ndBl8iwyk9UEQQQ5hVB9KJWOW3jlawZrXnucBG5clnDNjIBECAFZKjZ
N3+YgOHnLBlNjNVm8IwRAnKmCh8v6xWlf1kJjrg6UWQiVCKhKON82sf9QqhkODwVkpXse/vZPxKA
M8gmAHL6UHQFo6PGVkqtwwZg0jfW1SyMLRTWnmyZyTOyN53fDCts4J3pkyct6zOEinpVnuBnhMqe
HVi9UksytBEDPjty2eu6ikYM+TvnTGux+GN/L+e2hpcVA6H2f/HClUB9BZ97jiCHLOZ2yXseJbcM
eALk43s6NUOsAX5cGoRn+MDVUxQw7NMPb/3ojwpEgqax1vdf7daMii2fSYZqt3QuMw5hL1ljSKPS
e4MvGoLJ9C0ldQ0784v1oxxgLcobmm/RtPJa5fjnen8lOyX1E/kbwfaZWae2chg2DWBa41IPQ1I7
LvGXJ3cG/3+xoJHK52z+sLhTKTBxJ61WzIsI2oi+HhC2Hc3WEvNJ7247e+MnLfJ/tn1gGlVFTeLK
vehrHl6oMHR+cBknfXlj2b04tRjd/o3a1AiwzLz7XOuxj/Vu6L7yyc0W7KjagC8vwgnkyoLBtW/Q
13XLNrcnB0rQhzHmZVyQUEf2yRsE15CkGJj57SHxHd6Q/o1XibhbOCqMZtRigci0dZVMggcuU9DE
PZm6fqE2uZvscp3Orj2wf6mDd6jbn1JWYSYDoyjSzPnU+jIdgZF7LwT3Jg272NqD1GC72YEYJ4N5
Ggd+H9WB0t1eR+7a97jjvu6QdZnSoKHmynPHUAdAugg5PIbgqhTaNwaCBFqSM+5T86B21MjdYU1E
9iUmxGO7d0F0plozeJ9uKhNqRXFw6Fjl36zp+dQvX859YLc3ETcJU+QCdUzJrLdkz4QnTsDA7U2M
TUQ5VEEquQtyp4idygFb6UU95rPB2YFvjrQoJnDAWsiF4CW4n9oKGf8WVZH7ttAXFh93BrNqjnTl
Pr+uHoeoR0R8LvnJ/Gnqy5jmX5arZOFpt/9QrmhiephA8ajUW34p7PMTCKUA62kH2cdDYUJRSsqu
X/Ry5MMOoyEr/ZDb2SeTwigExGr/WxwfbLceCtlK3BlQJkwnsEQS6eZQrDpnOTsVfcy1pGqIHvx+
Bd/3xBPwy+XxOLEFFZwulNiK7FjzE+tdI9s045UKsdSh9VwvhO10NqVN1Qt1S07tLcrVTWHQqvz+
iS0l5wgxqEFRUu2GBm8F0mY2L1k4CSSaJqxX1NVpR3pqJKmhXDrX2B9TwEIljUOw8i/HodkCWM+w
Q1z9jVEygYc+t3SJGVu/KBGimcfukF9gB4+mPBLfrPKgvNnR00QcJeQgXzj8fQkXIbXZD9lVSj++
Mq3/NnUENAKWOLDRh3ThWMhVXlfSloivEL1PIPyR9QSShCjrESc4HTrczVSYAimaXWYsCVZzrTz6
lpCQdkqlD9zCY416VOg29qKpfL0Bre2szZtl4y9GzEmoqIQP+w5ZzlJ1t9ldH/jkuaVE0VP6nFdc
u5vaHQ/f37mKGjpgMlPKb22Q8b0XRVX2Z4icx7kidk0ncHSE9M2iZh49RHg8tR2WZUn2CahW0Zc5
uzlOwuhrFHLRyGfpYBBIP6j9Fqq/jiOPRIc4svyjERljTFRqXRvuP3u1yXFFdBrSHAsmHnpyOFH/
Fo3RTCEBxJg13rFw+mg1c98rnpalsNc903A0817vSfe0TDCdD1TpD76TiKvu0u/vf+HHu2R3mnTQ
ubLCtXOpTHYWh66GlJpYfAS4PFDzGvr+b94sewFQoZc2XWiLbNnzJvIOjaYER7flVXdhx2tDhSbg
GLwpOadHpLesLfooalXmvZuIdpaYK0D9wckNUs/+hfcDfRSrRMnRi5Lr/sQuL/ja9eSjYy6iag19
XyiImtYuDNqiVPwiPd8oLvLHoJseOLXSQ7G4tSuGGqF4J85tStamqSfc7FD3uqhaBlq1ct5TCR7u
WYYJfT8C1kmqhao14nXMNQLXBI+KUSTDRbhqOn8msjclC6gn/l7NbKh9QFFAaUdJRnIzPHj7ktI0
ex6Y48L3Q+0J1ut6rBXVq0MHjFcBpPJP1rBpnD/jPhKWxh9z7+7Gl7PA6RBEpyzwrQdpUca9sdnR
It+eTABH4UHBvs1WP9a4NEFlJ78ZozIRSooRDAjGVFK3foEDSuJcTZbZmaXMm32tNaskZ1F8flJ4
tNK9GlGJLG5AbQjiwfOmc2OoMubWatCxD90ErQKz+HvbwITr24q2U2RxR4eu1VxOzadl7nqzhZjX
c2LwR1FQSESOURrCyjWyM8R5FLlMa/kIStcRgThqz32koJ3KoL6fh8On28n+Pq2wF3UMrUM6FwHn
BVq5JZoYAxCfss35M3XaP9afgZA/QpO8OLokyjqmxv3jsNNLWhHVSW+N0FZNletUq97csT6/TUAU
xHtSq2I5HbCV+NlPprT5IQbhLGZMj/ZiG9fTmkCIRkh3j08vxdiXmAoJLf0rIYsZV8CoK6K6ByaW
rHAB1MdcMgnLdGCDt9nEFPYCS0BoSyCgZYWz85UbS0VsSLoTsPlmyALRj9Aw2n2jKvK8k/49Rs1b
gry3CiGa0nM6R6HTxcbqNuOOaVY7mKKjcul4sEb7TtoVo/5rp6kH32CmSfIcV98yNDzaWNYFqexH
ZtSOrQcVAGD5oHi359FxHQUrd6iOxbIZ7XPA9v0T7Q7njkx0Cltl8jH75S+8FWVP61DSF9/u/TPI
k159mZrkOAPUkftpTzHj4/9FK2yT2TbiobqYhdYikEtd5YeAP4XwGev7m2xb00ZDKkrVxoKqfkfC
sPfGBudvKO7EapKYtwdi6eWIfRp20WCSmrROfhQjUPr7pcdj6bCqtz1LBU1QT8i1nJQNrrm5x1KJ
S8iXUAYlxb+HmeuPYuIXJA9qC8t3I2uVgUNU06tbBF1qtZFeLHgGxsFuhLsHxq2AbZzIJbm0qDxR
9lICCIWcHx7NpbeiYm9FLZplVWBwT1go2DX5ITyKWVjr2IDuadxMd1tGR8RaZi4ifUwFpqMV3tvq
11qiO3wy2blUjastkl5tjS3z8UYOhdmQeiSd2S8EG5uTDAGtcLhtb6nO9EW8b4P5x7/JuOjYK8ty
BjY5Tn06j5Ax5UNoInEZj7Kh3zhwKTrU4YjnOXISHfhDW9GzGpLNQ2o7g98k3zElIOQapObvJgM6
IJX/3GYjU34rWfz4YS0MlpGJKHQwWGAb25hMI2YX9VAfJbeXIhlhH99izXlilUhs30g9Ve2AKyQe
7nWQpqh90m/RhoERS5qWIApJbmE07S+OiBgpu+75woxj2Gxr+4QB1NW4IsETyNIID0OnTSVc90wI
pLfaB65QmFhmwgeEit/wu3tDVibsib18JbFqtb4Ko58jR6ptlL7GMyXkjZQ+/4tYt75kBF/qTZws
Ee+4MUwzX4WfZjtOe5yKYZpTE3DgTqhpbsy090gMs3iPlQcI2Zh3M53JLUcRj/215NZTVsizuS2E
/3HiXqD4YQ0yusL3OkeJL2+yAjoXSGFXUwdh/YkA6OZqeDRNuxsydlZTknnapv6Uglt5ovTsg0Oe
4vSgrE9DPHr4USz1BQphG4fi1WKhOZSS9zXdmSgoZhRvseQZaNmIko2quMM2lzA+x9C4TuPcQxil
BYMi019YzElskw3xxj1rXKsP2ttOy2hi8MPKXULqCPV6uA8jWvMJdtRA4hTlvbkhQ2ZyEYj0yF+3
uAOAAucE05ueQwp1uRSfk3xJenUoy/zWSJzlmUhOhMd+fUxLmr/B53I448csRg5IMdXfbYDgFHEv
CuXu4/Qksh85J9Pm/iwdJTkWjjhj5m0UVoMBAmGiqJNttwREMLSLg5IXWFddDyAiEuvPN6PB7p7F
w9PwNkldkVqtFP3IVeop/C+mSDmgACUIQjKdPIXx73E3VWrcltzZEjMzjeCSDxT/9puVD/f4hSQq
FNvYW3re0xZo1INfTSnjJYqZBXDUDGaQeAnwePuKlYRo4XH4Mw/QveZfjVXtzNmZoOrs0jSVKDRy
nzozR57WLyoJVcayrSGpM8MM4XACp/Cd8zaoSdZRXZSPCAlLkO9uPOeooNOWIamp46LxZXeJHJfm
VDPOrJ2N93cVw6DFof0KB65m6R2X2x1KIuCT97nH6UpO3nJ5aK1Fo+SCzva6k+ZrG95a1kWMnCic
sT3LlKGLK9cuopVUg3C5iZRye0RbxL7sFkwzXaw11GKShonZntHN3J8R910NydChaScRV9RKtZi5
wy22kQ4r2SMLjit6ky1X8vU+tqpY7Q/mslAuhPEvrT4/h+aEhv+5/v8d5Op3IlutMhl214teMfrm
6OLWP+rBtqUiH1tzMBBWEh7U2PMDZeZwlsjxwFdkJehRSi7UTjF+BZ7NM7EfmPvzy2k9mdq7+HGj
w1TfJffMDOpVWGlKvRGKJpayM0sjcwrg11I0kItolKXGGwRHX5vpiQsoaQwoCtfaMI8E+g/xlNyb
eCHUmBU8c1+WWtyxgCOHC+EIysezf/REEEg/jgAdsgQGPCTQcDtW3tMFB/9u9SMP/cdsjR/CFjVG
MbyYClqUh7EEvZGfwP926N5FvJA4NaZPFBwzrrHF2Tvcv3Dqb5ZIOCbZ7OOhmyJuzNBsy0it6W/f
GfbQIW2UC+/lb1WUpiJZeNEsyLLHfqK01xvUwUb7E5bbF1rOg1bWWF165pQWHKT2FO7H0JgK/qhl
rGeIHdakZ9MGuLif5mN1RHMFU119Qavyk9H73x9lct0MMNhD2WFn522IAVKJ1RWeR14r03bZg8Gy
wLdcYiQirhSylagQmMVn8Xze3jQKkkbGVj+yst/oyhUcwugo/s/mYawzJX41dLcMlFvIhjchwIj6
CaRO40lcBrdgHafWVwEoYdRUHC+LCwIYb8dm0F79rMCAJRvaD/kwaMrDoqsag5JqjM37Dc1G0TAS
5ru8EEnZdGsktiQwaXlABv0cIMLC1QzkKaY9gt+DXNU0ozevZD6mtmLzfLeriz/Qa0LqknomN6E4
PjucRg86lB/l8y8/QB1hpheTPtMEID5nfeGtojszeEgJ4dIn9z19s2m4eZ3B5WLKIuystw4aOAVR
QcOQL1jsqwEeNW6eNIxD9TpAp/gbH0m7bcG1TCT7pTt0+HrvCr7Jj4P7iPQZjyCWQIvGreaK1rLC
0e8lRNkI+WaEeOhqcSU6tBmU0/iVNe40ooDHnZGQ89XOJg2lV/lQpyPE1rkRSrAWvCNakL8JeziG
6MZaG1YSn67qhRSssR4E39UKlndQpYOQbQtB8U5XQ+U+qNN+rcKJzhpy9uWczakZkzupUEVPxd3g
L9Ka9xhSA4nAqp0oXdOSaTLnANXmvGzyeQ6nlCoj6iuQK/pElnZxT9Wzj3/glUHAlMZVZV4wM4rT
dUharcPmKp/EmjEhG/Ij4ilN4KJHiDkp8E2TLDcnOTetcfyfW0S6Q14zADBHegKlfGHCyFraKICF
h16CoXrOJySzAKVceA7VTnwjBvIHDj6jnX5pBcKWAggi0Rt3lWijMRPcX8ZqEHPBlOAKSlqdNRCx
XkD75h5s+snrDLKgWZZpju0aupfvxynwWlvftRTWee8mGiNNJN4LUc8mluWb8afCfxXq5xnB7O+1
sYUERTca7XYjzzvQ6PpufTzAOTZgb0ZMqmh0+Uk7FHFiU3tSZjeYTFohcCojxvepMjJZinZXTo+y
hU8RpLMn0PZqFTiNZx+6pxiIlTJ3sr3SzPsvmkIN55zPxwCgtMqYm0D1tNQOgXTG/IApcMMOBIy3
XoT0XeL0VKtRL8mKbjyG9VzeczmMJlzGmtNCRoGoPPXjIGa02zOaSZ5gofEpqiGslEGFpadUQPSB
r1liG7gQx21LKv9gOA1iyIGFvEYsvlwRnj6fbS4QfRu42fQWqSuheAR7b6spgjkc7figjo690Nbg
CMOW1P9Nw/qb5Xi8Op/fnfW2KYcpSDKz0+x3+3OoZMtZILTylXY+3v3NEEBzJcKl9ByRXzkEcd7I
XDKOMIhSNB3rDQH60wvO9VrttInvLJGrrpzKPCfPMGdHUDbyi8b3vV4dUF1+RaFtPI+7uBwDqhuC
TEnA0ib0KHvWzyqZv7LM0/Lurxr1kdKVkjkm48sFsgFtGjtZu3EyYzO8pONmjovVDI0zhsMgLwsu
rna+OFEtqFpdUF+fXKCxFLl+3SzaK+l0lf0aq2OrKuq5Yj5A2cxExCjhXELdgzA19wkim4XssgzK
JIivR6VMTcicizwgJVG+BpbhmItABdOUiWU9ZVIPKSpYUJLHNthOzSDcJuFHrLU8p6hjurW2SgqX
IshuVPClvrPLkBRzYGtCIFg9rUJZGOBP4L++wC6fg6bYZgviIB651AItvnV2z4GzVM6zjHNLcmv6
gSaBnHThM+ET7ncMLu6/7QpqeIrUKZYaLT/nyZYBUf+drHXXMKZyRPrUyPDy44DwOXJnbVaVdKk5
82EyNFfzm6bz0/llnlPus1x6SCCk0EoH8wPmRdRak16ZgvHK/1zzFxPvKmAwl9TwzPWxibeRDSPy
s4HXwdRGYyobrR8CKgSGK1Rl3Z+UyCDYIHqt+RxhUpHf85YU7d+SKIZWkE27J7EFq/akbmZEuURd
WxN6K+Yo+xoZ4Sicadm/HwN+eedHeGC6iUAmr/OUtUfGFHNXM8RZgqegoeLeyc8uIkYuOgY6v42s
ToDawihTiJrC2mKDwWJOshcVO9H9vw+7bscCOKhpvPi1lOVnqDcSIWgzup3DJsTOvbw5nQ7PJ8QS
Zh2ozusvfgixbc7RIzXNkdUjAkKfvYnATyS684aDSQ94EKr9Fwos/mQtYjsqrqxK+ElaJ1pcsujH
wElMgXE1gpHpSEowiTMKja3dfPJvq7sV+iqaA9xGz/7ilR54t9zg/+SU2aPIwg6nknCzCahUUFEq
xA4gJ2s8hmXBjUPmSGVQSVKXz5aHx3p0ERdMHTlK1Cuj5P75Vc8sx3XJ24UcdGyMBLdszUIJJzWr
JgbJoLoK+9ANKCrvg6mAkJN2CZvsDDeGB20R0m0V78lRo4IunttMieQYpm4OtIVxEgqqMk2MUHmq
euN/uBLbqzmQgvMZU639UXDCrUJpsHUJuJB6EaZtrMdxyPu3LzU83/0NdaIBdVlpcD8fDdBsrcaN
nWFYjnRri1uOXCO0MxYIWzHKg4K63dRyn7LwQPh30jXDULe0MC9+D89vtiWPGlnzRD0Sv8es8hqs
fs/DCxTIGozv2w0XKSt8pis5Z8qwERS+u7tov7kdLyyRcTR4gMPKuVI7VORjqfYjo0yXnOD4KN37
vErPYTF6jLT40ICyyyFDk+fpvYWovRN7vEUULh8Dp46Rp0BzbVtSc6/lDMWd8oaVY2IQgNIEE28g
T34l/WH79MafWxXCTjWIY1BRCV767qJoCiFrpxbJGSIjcXRrc6IkxIQ1ycc7Fij4wqEv+wB4MYZ3
IBcQGRfmKXoyAwMc68eNBZssJLsA2MG13HXAcWD3GdwpfUF6TME6QG0p+YE6c8C1C/oL2/Geo2Xn
jLBMq/PFdBnl3TJAurPmkwjzjz0x/tPbM4L7I1UwkMb+55J3/3UeePrmozYDXrkvDhTHfvuy8uhD
a5WgU+f4lEuNaDwsCKaGojZFGg/gsCaoFD6I77e2RcSitk8pAHQCMf7ywObt6bCzc8hs/4Brkq01
PdQsCOpC31K7Z5RAaKvjvKICoOX7oI7HxHjDdJr/nQ7KZ85woerLTk+p2UX8QOK2CvocVNWNibqc
pqW6nhuhNjyLgCM1i57n4tXRcoTZzROYlbFJ8BL4I5mG4ZpFRUMJEKMgYv6J4tuAUHS3tj8Ad3RC
RD9EFT58WU6dFN8Vt8P0n9oepZ0q4mvwVGqoqrVsDG/GSqSae+swBj/nauoHxRHbv9D2i/B+U1kM
0m8KMm/mrrtEVR86WqhYktE3yuyHpV6rLnaU6WDms+wOHDjDIG51kuWIdBSx2+Ox4QxqReahCBKb
5be/8IgRmbxb+6FTAxsQedzPZIjjvUApqhUhSFOLgdTAUcrl+DnqO2b6qOBAejcpQB3Z1Pz9hBHM
CzaqTeodXzw/dAPbZlZH8k/T4YLhoES8lhMcI7oer6jjM/dgwTuQlJWT96begPqcDmi9C5l/Ee3F
m95U02NN4gQoZ/yKbJpgPVxRnJzWxcWL1BAzoDdH/K6j3BOzkzh5cXObrDQo2NJt71TIqVXazZC5
nocQGQ6quaHO9t4jDyNBRLQf1A==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
