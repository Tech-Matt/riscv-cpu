// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Mon May 22 15:41:38 2023
// Host        : techmatt01-pc running 64-bit Ubuntu 22.04.2 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [15:0]dina;
  wire [15:0]douta;
  wire ena;
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
  wire [15:0]NLW_U0_doutb_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
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
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.57205 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
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
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "READ_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[15:0]),
        .eccpipece(1'b0),
        .ena(ena),
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
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18944)
`pragma protect data_block
R9abCkZ75upExURS4krEJj4q+/7Y6bxca3p1beCC2R9sduCmziY2Fk8LNgUfIDFewEac5EB+nT9A
KEPTY4Q6gGSQKiqvRKhxRstHGWGNKPUI2hlp2iF077PYd3jT4VVBmWTXtnWGKSW4fbYKuWNEErxX
ZAAOOxccIMK07bF/Y6FC9L40jn26/A4cRLNXlFvD6i4aQc+YWnI690/Jx9z/Lsdase+TvKnQ5n2M
VCpSDARZq7E7mCPAvC6lUWW6qWmK8yjT5dzYh9T/QtO4LXZdbUUXGAiv/qum8/ysgyxWA07KoliR
z0ExUNC5a40xemeWUg9LrQt/HiKji6Ai9s57f+BXb5ndABkykFSTc2NjWA4cc9u5x4N048zsSlt4
sl5h8l68KNEI4wcrAN10ZvWPkb0o/SD3/dZH9z+nl6pI1fdGzwKs7Wm9/UmeZfGnsFP5pf2jMBeM
cOqfK8M99nntl/hZp7DEFrduIeEYrqdMnmjQ4nPXO1SqjYVMDgd9+EfJvdiyALJBBzSLNuvO7E/q
Z3e+hllNr3dkE6R94J4cx6jzA4UW2zLKn/VGm/rDf55rEVDGGFuhsjtJUypOdFvasNj9flCaDHQ6
IZEaMAnzxZeEw7iphLsLv/tLi3aB8OfXNfoVDvFj+NxL96FgbDZpDm43OxsGaBqazloGymd4taWM
AjHsZTn6/ySd8qIeE7f9dJ7KRraQz7+7+Aj0GdBcElTzrHzLFYmxrDVm9BOS6n1zhUCThdQIf3E0
E1YrZyt2hnH+stvdgO8kA3hBVGrPc3dmnIaTmBLKxTQKiHtgArp3Lf+YyPC4RO7NsRdiDuGvPCMj
j2D7XLHag+IkRFhwqDlHL+odhQZhWxCdmJRCeRiwgvIrLGYkLjHjLVQ3NULRXevFArCdsSY6lSFc
dbMr1JvYdxC1JOLqxzwilAklSOkpWT73HC/kCZAN+Ohm43b8jYdinTbkRFnzfxhK1SARnPU+bT13
LXuAnsJvFRYuq4xpRR4jMEbyr1oE0r2X/dkQQelmtjLijAzpv6zxfVBBDcxaE0e3GsQDS/ldmidZ
rjsB0yEC9pw8mt/AAw7KCwnZBub8jwLBdCgX5WJ7NClkj2uBk/C7pT2slEtv4beHgp4cYoH+1FXH
iys7Qfu7haxZ/A+GLOXKESAbVHzdsK/RGBq5Bqknx/CzROi4j9ZrtFvZw0G+dgJzotNmSg6PeyPK
lo0OXFLcPzzOf4rAxQ1jW5KA9Jj7sNVBY4AZ2B2Bh1O7HkCwTTYLsZ7skVwoBC1PHv/xohbZOMa0
8gfrNCo4zy7zKjkxOQNwVpdw1+Mp2MLreUC93RC+3xvWwI+W9Lvd4UXtbuQpUicCRs18hjn58I7B
88ymISKa4/wgfFLH7Pe55v/yfmYEVgpqWn5h6sQO7ffX9kyGCjh0pdLTT7NH8tcqI4Hmri+VljIA
3wsHERr9IDSWfrYx/l4AbhCILfC0NTbPQI0cN3hjWXQzAY965jTF4JTamfBYQ8ECDnSPDD51V0b3
8tT2Lav414v5VBj8AtyPXT/a0xFRLCYY7Wht8YwqApmQkIlsbu+Gx6f22ludcuh2ZsplTj2+l8w1
SUVp5QehVqIGQmRNTfJsLXZQ6F3w1U3ZnIZlYwv89VxqhnbrrSGYxIOwKHUVo45WQEHeL55iFcpZ
8c8fjTRr+/Fti+QBx1tyCPm5C9v5+S+dlFZnYGR/aHS+gmgzFwDGElE5SrJQbBY4WmOp0gNyZ8+C
hgTCsoT/4HHAyUVALm+35+a22hlYvJoq74KSdRfN/lSfXPSuXOKKF8zP9tltbNlTbJfHvgp/mRk+
AcaEO3KyzR6OuzYmQ8moSW2wiYx4gIH3KX2/3hr7ob9mpDZBMACouw1wuLYvONnVdh2qG8cMKnoG
qeDKuqZhxK1zXScwLazI+Ho+wlU67El5g8WeKKAhe6V7fzkwem2eCmeGQyGdFWg4ziuSrw9x5QDT
aaXJBluQ5e+0Fuw0ppwaLbnO5kHHV/GsSzOOJRtkd318R68+5m+h3/oHBs41sR83hlpSZ8MgUqNq
Ewy9Ft7c+srVvzOF96fKiAJu5BtCqMJuWqB6243GIdFvVpgX80fTmto+zj7aPJYoSmAiyALC4uv/
1F8Dy+TJWECIw6HXC59CsIMufVqHc1WfL9vjQX0nS7DP3JXni8aXsUxbOhAL7BsCoiwHBVKWX9kU
kswI2l7QCZ1+HCwNhskAjQA1J/5oQvV3QWVrWEqWSmF4jbE2VCkEnctWOKT4mM/fId7Qxa4VYtMJ
VbPrsU9UgeU8XRSu73CJp+GzpJ73h1ghOv7+qOtDW31EcLmJv1h/1r+pNYqO5qEd84cUhvx7Kv8E
NUtSW39L+kJv93Vb6VSaOS20Mb/NjzHy8HzbWJhATtwKnHnem8xNurqKVeX7qbRp8xloNblNn9Kc
u3yONJCmw53gNxuJKRU8BfSEmi3HQeON95iTLFjbQvhP9YKq3Pnh4sgbwdjLYBlqaSyve7j7yncT
+z9L8mce0XrUX2M+h00Yeiso2fITuzH1tvTu87YlQw2bfmLOyivDt1pjt8kGFkPaFjpLp8X3vjLt
4xJctTDoq6u3pV79cRT754YzZFMpD2tuIQVBzy4wt6qyBPQI8Q8e3X79XvBkrJR+5S0pqqUNfGGS
haf1hiIv+SwQfbOCSXuiactg0pSuvHbgfRip1u+bFN14kuLC/eDUZShGx7TyN/D45vZahd/mvT8O
lBsUVfEmZ2pwigstpk7iZwKuUlRkNUPzi/kAmwngtqaHR7jClaNhRTXjzjnYbhl6fGmHFc/eFCDK
6pmS4Wna1Ilxo1tYlK6zh+L/RU9rHo+rKLViAhf3cm8aA71/TGqKLAKZ4Ze9sDaGTk9nFAsyOdMz
hKanvjtHz/1bSK5ybqbVZ7hOVbzuliJ04ffyXkjhTMHouhoF26DKR2YByQ+a7eyQ97CHoyRDFYCX
MFdJb5uoUngseaesGwJcBYAXqBW0S9avy+fQmM4T/olVXO88u/ashhe6peTPo0Qc2b/L6+2jRfxt
xDNqFK63KSUJBZd7BCNpqx7GBL/a5TI4eBNoP7ftpx9qsl3kd/jriDCgUKpBqJlJLZU1vvkFwK7W
8P1Td5Ey6+zY3UTv94sl75YlnOn4rEinS9brciwW9oo5PSHP8Yg/Ixm3fItAxQi0Kmh7a4wkXYrb
+pJ8MqT1iAXIB6PM8M1yiMaxjIBFc1IiL+wx94gFz6ZdeCoXTQVIMEsEWIMqgw2cATw8txXomzjO
5h52t12GCpcc6NAFRGuaqNIVM9QgRZ9z3Mhb1X29VngzkztNc/wJI3to+EYTVn5ZVXRUgx6dZQvT
DXFAo51TK+9nVIa0KdQpm43BMsW1ZCmEgDctJhkGn50tXFGn6fMEl6rxRX2yJsDbOkTraA3srSqO
ls0ZL/QO2uPkS4bE1HuTSoMc64LpsO+Twwy8OvcgHi+0wBnLevfBbyv9Osyez4rtKBPPjadg95Rn
BRrUp9cgWoPolIJDa5AtNFml2uHJ66zkmfgEggr+QgydJB13oS58ADF/HIyRoSf9o2VxW2jpj4Nf
AJc3oRT3Bdxokxt/WpTm3pj4hlXUyPH1dFDQoiy83i+t+S3eN9YdNvd4ba+dTdEtM6WkDtJ0l6+s
xbfYfCmcN5fDb1pfUXVyW7du9fGq0wFxRmxtAHkxj5SfO/ZhWMYakTScghwvP0vD6Uf6y++mwnF5
CU3ZLs6R74Lgr60XvKASDUBv6yQdaqFdYrWX9yiZJ9LKkHuMAMbLW7zdhqiQLvkJp57z9rIhKHxh
wHRBXL3kvbyl+n14A/TZKBJOXbBR2PKaDfdwJEUSPR7zCU0R6RqFYP+0oaeL4GBjVO+4DUZakPz2
8AiIUYGAyvahsA4CWsEK4//CgAhpK+rhoF41LSxAV+XfPqyAlMjaGaY9PtDbLSIIeMX+kMoBEA6I
RUo2jwSF67QRXID8ZmEEptvHCcOfSKvAqcfhrdA5EOeCFM8/7nQxRLr/z/Fk6sX8sIElzKapFEnI
RqD/UTSweaYka/44byeZsVXkDPVkImHIrZya3wIQMWyZ6ftpha/PTybc8j7yRi+aESIDENZaYK10
5MKr9vx/a+OsUwJKTHPq19xrjcPLB4JBLv800qPchcvgmf2gQb448nwaJgBvN39JmVcUW5AZ8gZN
WuWVYUJQKYUaNuEtvYA3LuOSWZpjZo7p9kS0Mh6+HEjbfgeBRplJRi2cp1/fF6nNAOoLuf92dZmw
ltrZIvmWrGUrvuu5A85Wn2KGFm500WV2s0t9U08tQeC/tiQBwm04qm3FVv27+Jp+r6b0wlMa+/ci
58flWoRlGPyADknMiY8qHoZew3n0WNAnxZuYMmw0V5JK2Vp7SKWNthxG14ChZH6boFPTmIZbK3Ql
baLPEQHSVd2ycTGk4r9TacfR0brNydsekaYp8RIGrhRMqCH5pxwjEaza592mRS6xThjSPKynehMA
ys1ZaZ27rqS6LueOkgEXzZCBd+XLRhGCmoJOiB6mdSsrNphrBmbfHT/5bxNfh0Ye9ijQ336fyON1
mro1Spl9+pX869DIgvMJbkMGk8P3y32CwDvRVmZqxuOplCbi9JmD62V6Lb5ukSMrCh9WPisdwlPu
gum3kXScoC/X+jN3B1Fe1hW7u7sZ0Zm5rTX9dhf21Mrl5MMB+en3hTYZ0EiWpXbUC4ZVTlAZxJIM
kAjpYMbxwaWRLWtr9wpdTzheUn6PT7jKfA50a6OBxj4ApTZUyzlcLQFCSyQjsI8Np9h4p0tRbAWq
cvOUCL214VXK8mOlnRFispc8EyHP7wo9xhtTLcCaUd3fCX2Sb6zSeXIPX6C7WBJf8lQxyWYTxoss
HFX9euQkGRKkIbnDCNdj1g5vIbYzZBTD00MPG+XzTJxYCHfWIAVOyFRLaV+Lt5uyVZ3YVfA5oAyM
8nVgEV9ygF2dM7chFOqDJIOkne14cNkGfVuJPsEXoMC8lBIq4AGpcafrUbeEOvliepnL9YDpXyqw
D6Di5jmVBZNXSktyAM0OkVd0HMU8p2XHs67YVKOxlXTSxpF+uTnIWN2eyt20b39JBh8S5HuQSrVi
4uGuvKFfrZGHQjJwLcd+tiU2ZgNPSYUndNjuCcXgGOWV5Qf3OMCJ0m2OEluZ79yRUACOnSBi3GAb
mfnJizG6f1ldwvo1bop7PO5ib89J3Zt+xqxRmAqlOxXPdfL8neEN/jpjbWDUMIoI9WWeLhoWPzMX
kymzujlIwF5so59T1JWBMTAmSLriNZxj+ZT4LI58FWrIkw7gbkSVTlGDJH4L+hDeEzgjB9byxdsU
PI/cnNDQjVozIwug0dkBOFvBnaLs5lwYtJs4w1pP0dXdKxHr2UtQyxsM9uT9Aa+3lvgsTD2WAN7k
cqPG3AlhvL0Gc4DLciOhZw3DsKdIGn6SsFCMWxKkQjvUepJMjHV2SwgxD0z/eZOSwi9wsaDZ+4Co
aXommxp1cdEMFuT3zWXMzxHc6fj/vFSZ7Rq6dtXr0iqTBwuaXSXAbPKlbfxBgWbh6PlX5T9fD7l6
96qHo0UZ9jS3ZVwIH3AlXSs1NtDOeaHXrN9DRUff3AiNlxbUvRhgh6Jo0j0Ay4ukNK2u/hj7ztU0
3XqhoPaCt4ejDkqF7wukt3DPgdV7qgLt+aL+0ua04VLwdq4nt6MV3IpkNZZuRTr3DZGFdzLxuSDE
n4eh+zEKZx/a10ISBPU67REvTuwroGJNNNTDb6dxdrRdGfvEC2TOIozOEUM8f2+3yMko+fi7H2Jb
xKROWhicttjNRHfXiJNJ8V20ep6NJGHYquDiTafsobWALE5iCLbyMQTXw44Kg6uaMKc/VSqZGXF0
FvSKm9PZoQw1LTpewwo8OTQJwuSHd+rpRDx46FpDLTn9ApqXtawBH4f3c5wd5WgUyTpfahxe4qoh
EWnLD/X3EwTSrEoETLljp5vt5+92t+eWDJLqxwsVCMuax57hioFKy3NM32nvf15apcKqp7lHzUKa
345lf18svmQOlD+RDCe4ty6ITxHRQATjalCQ3TK8lfpGbU4tV5fXYBkZnyKwwsmFdw6L24W8LdfG
d9Okijw6mY2X/JF57WrySR+qxeKF6WQrdAypKnwN0yZ8JlrPu/qQO6v+DEsrs3t0xot11WPE7XE0
0Wm35DjBJUB6WtPJaKzgmolYv51Xsyt+FGh9dohc2FwEv6C+qWtjK3Izj1WSeyP/StrL2qrMEHXQ
8BoJyWqoXLLVy5vAZNcChGcVWLypP06jk03aFelDGMVPH/jqyMcaG3O7gQh2EgqhJbuO77br+lWj
vkt+b0980X+Gqbg2cOJnb8mqQ+LqK3XPt6Tp5rLHgyXA1UqtEEBTMveZpI4kJHHIsyJmqUVgdsMH
q+VkOz9IlIEl1mVGbNxSLOnMC2Q/A319xvz5zIllJphDApprB9yjuzxEXz3sUedp+LG7IFUmh3Zj
XfvnE80lGZzXMtNKRbjK+a3J0pTXlMa1/SO6qwIKzgcpaCn7b7VlYSvv7V9Fj/WXnuLXAonSxkkV
7bEoVh+DBG19ADTjcZGuYeKy3ynZfLphhtH1Mt1mQVCBM7wNTUNOQm9K0L8XU2ELDabX2gKdMVer
OmHYff9SnvTxaj07KdagulU9Kj5PuKMGyET0zDjG1lKUCCfWT+Ptc5C8ARTRj19+9zKDJ3OWXkWj
SVPb7Ej3CVxp0RldmuY4VhYtH7YlsRAAo91A+U6f2ySJAXJ+ceUwVitfR/f+Q/IWXfU6NQm5S8TB
swoKH5lp2naV6HqI38DSUWN99xrkvADZig72GnBbNaNkvBumVUjVgZZ5MG8fCNm0+7g0VQPAoXrG
eikvobS99xYA1ueAm6uoe7dvQHVdS4Z+19ZmSRs/fz9igrLWgiRyfW/0BrkUPnVD+d5tzP8VKH/I
J71CDN4pTBRPeONzYrTamfheTC6e5KDx0+J5h5UIJ9FYg0xGw9QFOtOftP5ihmzYw6PiIVKWHVqV
X6k1KDEJkhn2tkq3L5xirfcfaR4bLysuMwrawnSxb0I69sUa1vVyM8CvOF29ySg8jVK81EMvoEs/
kxdiIqfVqj3cwq3b0OD9nadykUWA0KOQD8/mid8LPOf7ZJAnO3i/Xg8h6Q3xtawXFMVl5yVnECoP
E5GYmnSEaMBWMvxgXMXjaSB693GmWaQypC8k7xGqsIQ1F7YC+hkdJQVfgI6A7R5vYhO/mt2MHnfF
ZHyUE4o3UgWog+7Qwix1KWDUuHX1bfF6/X05Gt5wSpes7DvMS5cMCsJOwQR9MHBmivvb1cdcnH/g
KD7igWgth3ftSumpP5tYZ/Pf2LzYD34nckfjJ1NvrJGg/LDDrhWsemWHIR7d/xViy5Hsn0xoWBnd
WB9jqaWkgHQbI+9uFnIUTL75dIecb69Q46Rh0Ih81tRIrQSAAyT4q7qAS7JwVyLMzP/l+DzSLNJz
M5D3hyeb1znKgzkOYBuv3uttfAIEf3ycqQnsFgNRhxF4o6WS2AHSgmRknI6d1Yi/8r1T/kEJNTKX
BLgzPrnWqwYUxL/YWWUdxuGoIDdFIrayAoapA02h7a2yGqwYgOU9wd083SfNm/Sj6KmZri4WjZl8
jSlZzmNzaZRbj8UN6q1EMgaL2PR7RW84JcIbhR3ZlQ/6Ejh40WDRzfJ0o46PE6DqjaTKC6Jb3igw
k/PJx2qziy+zVzQtrgmgcaSJchlvTpmkPhuFlDfTEoDgl9+vDXsWMJ1p9iKGNYjuAv3dDLq9ojM/
Wv+hemiCLZwyZ1ociaux7+8eSZGlX5QEleltaQrHg3i0YB4amV+S9PZHR3yW+lWOw1eKDMRFT8up
B1sEKKCEvV4A4cA3HdpMay9D13btCWZ393ksBoH36fPfR5bSC5FY7jXsomXfTI2VJlxhHs71V/KK
A4Rxl60xgBrb28m87pnZNc8CE29L5Su6DQa6EYmM0NbQDvCRONq4rTenxrmVlwcV4+Z3HSDKcdVc
ROCuuDQk0lgOXDVULmMgZwkCE0w7+aC3LN/uxFylmVzTFI4eoIc1v+P0ew6APPPZGOUPSD3jVR00
/ywaYD4U/GGAFreMpK5k6dQ9/7MAc+0pHsO2exIAxXZU2/zeWbuhy0pXVcqAbIbkpA33n9npFdcM
jXd71b3bibct38ujNFlorQrU1M2Fv+3djfH1yiL5mtWvu25y7xvq1vIq8z7BTEMq5MMUkxMFTYA9
22Dr9AhNS/Xq+o5FK23lnF0RhJoxFkEATEr8e3f+8JRuaZJO8gl6sTC2G1TLjwvq+GFYPAfcA0ym
FBd0cCffrv+9rjY3bl9oBKcyzYsWzS6QTwvXKVjpgr+mLTRnERAVuNfE1KQ9/OHP2uyhgNWjS62H
95EDTEPbtwIhkybEFnHI2Wma4qANtFwc0dsU7ms1YtwpoWJxveEyhe2cYdVKdN+OdiPe+QlMLmGk
ALGXy+vP9O2NaeSyRYYoTcHzGFvAzoQwJxNlMiinNoDS3W01PdR0x+d6BSYqPmIJ0ziiFjcKzP1x
B68FzQNigXDak8q0x6o4BQ7Nj9rsXse9QYubY7gX0wEej16sl2chSYGcNJmUDFmYhLuiS1KoaM2b
gKh8D0L3C/VG8sS8DgAFDurtimXqMLmtoctPImGhTF4e1PSFZZYFTZvPxMyQ1s3P2F68inV0bs8T
aFZsSJ6JgOzkjkrbWYS6fvLGV39xWESBuge6e2xtxETqsAJql/Jh+P1EQLmBQj5smOhvWfZtXtfR
inBSzZ7+pECB9TlRo0Ga8NBMeRbePzmhMYP1yn59PL6fFVRm1nx6ZpG8hC4AIThooj9U0yrtCuwb
D+Y4p63ra6zVPALM4XhpGTiHiKoHgtdh0n/Ub0K54wO1ONz9rrFSX96uitHp/jfRQRSmolKZDMo7
iiLz7i/hqAt/cqpg4SWtjBtoj0aDX9kHlb/MH4DvA2uMlDaH/FfgElP/FQ9SA+Om/H7COnBtif43
y0JR+m70rHTJBmb/2AtHDIs4mnYsXacBMYaOLYowE9bozfas+KcZb91dg5sxvq1WU7aOvjOfd/cV
aQwaviB+sW13kZOgfu1SUl7ecFQ0T0iQKOZhVDS2i16t4CvulflEoEs8s0afhr2hfI4STa7YEO43
My9rr12/HA5puAldbDaE9Mt3vUhJYAkyvlJKmNzEoLMrvSGoPIS+oBRAc1UvIRmrdd40FMVY5Qty
QMrQTPTguWqCStKTm7qME4BMXNh0tAbapgc3XH+kpsAy42/iFrfVxn5GCuhQf1aATN9MJK+0q23b
jeaRssibdJV0BE4kHJaujQeLApxWy5mzaa/gxRR4o0imo17qSdsBFKGRu3WZFDG+jF6F3KpRLr+P
dxje32Qp8e+Bjy88gXnrrcGtFLmXVQT9TbYHrNOcrLagV+0eJNB5pjsgin6KBOId2eGolCd/ciBg
xhNT1+XdOjctvsTdQYXBprFfqcbwUB57XcEATfUiZgJ5AdE+yaPUYNpcWHgCVyO35WMc6IfOzqhC
OE96d4F4MkfAwD0uD+QQke2u78aehDlheE7u+m9N9VORGeLZZGVeWfSxh9u/VmO+rndGHImvtwb6
J4hwJ2EFIYJI6C0X51nuFF4Xzw0iAJrJeBL4qPkXqM6YKJjwWF+XxDAiI0FZomJNwX3vCXQqgLbI
A/FGUE+vgfgJdObblg4gfMK7N03+XdpN3ysIc7St184dy6JJyLh0DDeiZnE3gGyw8qjqaqSPdeGW
IwC33q+Rth4EjH7QSOP9RZZEZX3Vnr4wh54YL9GrE7P3eFvTHhD94mqr/06HDpwITqZLug2dZFDo
n54z+/jWtNXDcqGJ3h3KHFJnE4c4SlZ6wC4atYlI6UEpW8nCHOn9VOeAC9+/lThhA5QVDkL7h/s0
Fv5sCQgfiNriU36H1OtYmKwqsb525wrnXYnAnLw7+AtczYeP+W/9KhdKKk1qKAtM+9Z5aI9QXghE
x8CtnjhzNpd5ICRmUnzl7NMCaOFxys11xNKvCW4FyVKE+UAh+GvvRykR3Rg6p1xXrq2yN1v/evV4
h3pYLRqqhu8mpqRSe2PDQKSyKmzpUG3cC0QQdoFhD9UEMuP8FpR8UMHm27PxwKvr8A5fRHNKjrXi
E1jUnW0cFcUzmUALAj+U3AOK+71O5nnks2hKTgJcxC1zEMg9Je8wI9GGr6ZGHyFPsqnnYpo2lrpt
CfkPaeiYCKPYqvqC40GgXFS39hIruL2Isr4V6aTsEZCXfu+5M+9jUDHYts/0/f5ourLFdFlNZ/Mo
63SlkNTDWKt7XXdUmXBAhe8+HM6I7aqzEl9qo0sXyvTO7p//+doJn5HzxTkrYfiPOPr8rbYv2e00
EvroY1XyiOcozookCLVoqZY3btmGl28nmSqPDu4AVAU5QnymLXf7MwuljMeOguksC/2t/nqhPrNy
S1TbJUpQRLSkNWiHrjk32sJlxZJhKFgZqT2gHSzUGSdAuVDE4RwVFbNSVK5vaKHhiBbmHe3KC7a8
WE5Xe10YlSq0PEWgruhbNIIcyqTz3hxhKEgHgJPSNHzoZv9iNQB99j36By5c8wjsnQWkNOvdOVlq
Zx/HBdUxXttYh7gkbqVpFAQzLii2bjFnUlPje3yMEzF8RIMAqLE0Fg73xvCF68qndMef+t0t5od0
12tHxLClxRsw3JNR6Nh3ssAMqDA6nTfaMQeRSZvWYj9g0NCPUyrQVIUuoirWvclcqqUqFFhPRftv
8pbOCmH3vr4tH1C9g1U5m4u8wT9FsJ3G6BqGO3FQKJtYRPKJ5NvbpYgY4IH2fCzKZ5cmvSxvfhcG
1sG581axt+7idL2V9JIjSuuHp2FAGUi1OZANv2Qwg9SBDdjFOQz+zjA3RHh5YfNi3B/2gI60Cw7A
0ta5G78kV917tHvZWAj+unyGklKEWFMq8bMTwSe5g65Gaz9bwIOlhhZo3BCiYJLIG1inRb3dcA/O
sDE8XDc1DPC/bPRZ0/nSlGUWyfMjlY9rJjFUH9X5GNahT56q8aEWlwoqx2tNJlnUPMoq7N7+9fN0
QZZ75m/ycg1jpgx2p1LZLMnP3GNKGlfd2OZe/xF75tZ37F457RxLJ1/ZWKxMv3rAfhE5EqFWJOas
61ig+xEQuVWUmK8MaIU6AeUW3YerrUgEDr6AvdXQA05uMpX1i7TWsy3Aqp7BmEMgFV3hApKLYgph
Q4po1eKe0AFhD1XttXSBHWi9Z1kNpMsBS15eJajC8I5my97BA2zoDeuX3B6gKGlKosU0Ui8n1MVH
gJ7U0RDlkewmADe/3UToAkYE9qqq95fB6VJMt1Ih+vstAfDLwznGfNq130eTTwldstV3NiE11Qqj
QQ1f4WXWNGJhwfXf01tF+SbL2ye42Yr+VpKMVBikmLno4b/G6HJkt6ZsAZ1oUzDi/kidsb5Kr5/U
YoId2JYxSEYTcZxSSfc9YXH57VVqOQCv/ZVuQfMqp0EY6ZHhNAJ1eS0iRZD5PMrHWOH63vsFrizq
o0k+rswcWUvZsKVSIPGCr/HJx5y9PsUcTNYCj1lsowlD0/5PbpTYwvEcoxlers28RkTKAB/BuNaz
dVfPHkQAN1wy4qGQVCZYGR+TBAVXE/nK1gW2V0NT0FKumoUKRTkR1kKiDeyHfxOs2nb0TTQKFbS9
7IO6u3icUShypeiUERb24Ds3wokjBH8qxhnBySbuKaSfZz10GrMsGWSdKOwI7v+EnGthOA+gwusV
sSiY7x/82Cjgn5ikx3hS7D3W03nNHc1yR9RsSAsl5VSeiKtr1EndTOCkgy64G4a5BZ24a7fAHf3I
6FjBsNJklBMuouX5aTvD1HAVFE6EFFuSuflgQ19w+qHl0eke1Meyszjy8QcHSADY2Jl45KUK5Z49
mzMJ44xvlDVvQT6e5EyA+ViHbewQHbGAIWZYKyKcz5yrq7tvE1GLdwkB9IFyEmJWhrgiAIq+djow
WyW3a6hzz3f4vmdmd2CLXP3kX3+P6cC1ZbKo2nSRhBu5YvhHGlT/c+cTHFY94DsuvScKrI6trNdy
tvu2waD5ia3khDxrmR/fp1Wojym8ny8XvPloR5ai8EH0YXpdsn+hlJ0HYUugZyjKgdneslM1aCPh
s8Mf1ucMXzNhgsrlcDPURKjwztQgJot6c5Agc+qNJiBe3agxaO/ThRQVpADQP9I2k5cyOxNvdrUL
371H7EJPsJKHuf23ozf4xFQcnQmeqTpbuZDdvjUhSTAvzh9MrH/zrSQxdRQayCdgNXSiu88dln8q
7k8AnXLEwH+NusKOnmFiOQTwHXTMK7T5VrUlUY/6hk1cDdEPku8+jW2Ohg4Gtnn/FWoWZ+w8IkhH
SNXgT6ECBwrtDS0Nm9rXCGVQi6E1hsBVylu3M9HzNsyimleftTZEhOQ77tXdgFXlcZu4/ZY+IaLA
VSYhpswLvMCsjb+X7jOTPVV+YCIYR+hN1z563aSYsoSQjG3hIZwhXeiH1/Gvo+a3BABKkorhKVCX
SPzeQXJEFI6u8lMc0GCfubnspKoMd30Kaq/kMXEWe2hC7zwqwPRkPa9kQ2j47t/U0wsegAzOTuG9
FBEdU2Dm9AOPbxO9Gr0v6r34ceKtmX3u1lnBxnAhyz4b+Y0N0dnzsP6LijyCHcXcB6AdrjCY9DU2
f8ThaT8uVh3wx6D70YO1SyLSKH7RSndw6TNcEfnGDG18h+7q1JI55gAJvqBEn5wSoorLqdcy8wTe
R3NGUXvSBEoG6BmVM19oM6N/okAKAwH2xaMVapyKv24VqWfQPrYwkPRMNPVxd7QHnFV11OvnOgNh
gS9PWozTqa47lbFGBOn92E6+kf0vWB3kJbCv6JbPB5+f2sFx64tVOfa7x3mgYcFBme96Pi6HCUOm
25Cpl2n87hi/CVS6Nu9yGcaKKs+S910x8wRS6Pp+mqyOaVrkp1PBtwW3xW8CM5dLaxV24TqDZKCZ
/F3vDEkSUcHmlYA2ELwtTa0Iy8l1C7EOzsKugtbq2Iy8NGPXW8z3cu5RuRqFRdBKBPwNTvMUUwyw
t1l4i8+4STg65UN9DNYnEpGzWhZg5fOv90wTiyK8KIX8e2bgZcVMfRPH5k/0FUCFJmb1Tg4EOHy5
vO+JPhJliBmhcy85fCV0n4emJpUmBH+pkK/+nMHe9lHC/l9WNJySx/TCKp4hgln+9SRZu6M1fsr+
NzBV8JYx4IFOXSPUZNqVvwLVxACrNnbC31Zee0slECYQu0+Uj4QkLQxwqH5UCZzuYC7l7H0rcCKn
m3p66pi5XB4Ay00zke3j602atZ1hOUANj/UwvPVN3RRrCmMLr7aCBHOxZ/RWM3IdFz7tcJSUSAOp
6w5h1CJCXhN18Jl7gXmIhZvU3jt+kElWfD4nc4OT2qmxjlV13HqxEz5XuAeX9Tjji3gE8/da+wu1
BPDJPiFveqiLbptqAtpiG71Q28lpcUWmvNZjzJ7c+2e7MWnj1RWamJ37xfHphITuSRL18vHcGRb2
Rv9QGfZ9U/8Hx0hXXZsXRgxQWatsZyIi27hcnpVvViq9hvBa5bWluQdIx1qV8/H+idQtsQx5eRhO
URMpVblLVCcfrHakS6I0UskkFi+Jk6fvhmOa00KqAUFKvpovFfNWuB59UA/2VJEklPX0r2DwxfL9
jt3YQCzGaZGTK9bfIf4Oelwwe40wEYFckvO8qG+MRKx0wmyUq0dtPvZbY7WuyIH+TkXE4Jx5tD8U
fnzPT8w4MCC2MJulTJ86FtNUD8Wd9KwQRpXS2URrwSl/1AMe81OxxL/ASECR9YecDd3nNwGb1F5x
R8z5J1R6fk+vHSh5Sx+KT1EeUJIt6cdmzT8aE1CkLi5uj0MkmzLK+I5yZljWlUILmdTT0rw2rFHj
GyZSIQ4DXCZwXkmYwrliRqsQ7kIfKE7krmVVWPGPgc1B6kbNOQotya/o/p3Gt37u/v8+pi5d5oSa
0hdAMMvdbXOypCJDXXTAz0x3rkCVsvLXJfzV+ZL7cTxFJZuJCjTxzhJMIy9sfOa0rPkbTPy6oBwW
LGxc1dxER02/MgpcyMB4MjB0NGRLh+yWK7WX5UWHQ/9vfhVVL/e7kr40M/GP5rLC10jkBiqAOGGo
TTQ5mhz2FSvQigW7yxi1E9BHVBhHklT6jqAKB7rmURMzvFFcifJh1xLXGCOIuSHhsaULZW+EPMB3
/Nf3EQEwQCX7TsteR3bdNsbtzxpu1ODUkh+HxfG0dhRWRJ5sAydwPnzLKf2xEjwkminwnEDZhccT
SH46cmwAsD6dJZ/4uOExEoPUEURRIluoIoI0VjJSHVra89Zu/mB1ud7tRu/HPSdxJnf6LHRsMmZI
oWuS3bpXu7P9EeLmT2nZZnQqeNjQExjP9nCD/R13FIYRktYizA6vDiar0DUhYdlbpcLwMVQUR7nM
UTzMgYmnyVIfrco+J+5igHoA2roje3nOcT2OG6kxmu6rd80OjJyZawSMu4i8ZJzr7onUSwVyAjX5
4OpNfJeCk8BrnBPYpgPOs8/fCr+0+a9kAiK7B9XpoQmOajEkQqmbk2JJVmHJrkYdFjNL1gLdfO+d
Lths06QSPVmRnx0Ox2oDeG7nIdGdk+x1VoIsXpXZjk95GysgEuAR6wtFyuaQHgPMuxt00rVCD1as
3c2fhhu76htB99exDJBCL9YNhhHLWOyQ+l7dB34cjVYbd57E5Ya2XoWJDEhEAO4+iWrGSDH3cFCq
caqQTxMF/f1YJ2WGEWCgCIBxOnpUnk4ZM0/4nltY7qR+v3gy72MRpid8PoTWp1LF8CNBvMZxcLpW
n3lYEyQkFuLj5neN4htZJ+ixI1j8n+xYA4EKavwDv6Zp/4hi+nw49p4g3R6xOn/avDSaMCbFeY5x
AqVnNwOBTs/jJBvI8cN1HuGKgT8S3FUp5AGIDiP3TMvpKWsy9xBtcz5G15LHNr2CTg7xg+wLu2I/
YwnPPd+vmR7JkJEVRRpfor994HnPh+yriK5uhVv8cpSysxJ/1SEqU8Wfb8+cuJAOZCAdDEI3bDHo
ZlD+tbPolebjpXbBap3QYthQJDD9qYoHzp8kjDoR4l4EmqinPXwlcT67b7XNRR86IWMHZe++QNbV
qi0Cqy/i0SH39mZe+qNQBADXh4Z+6giQidiBUj6IhryPc+YTv8vkWd6dT2AfnbXatQ1Q4GuH8HFS
I5L7DE9XUwjvoxiEBPWNjglRzT8MmoFVIP9FuxaBZ6ws5KKN/hYvTmNmXACiNakVDBVizRxvrp6j
2wzYjQtSRRhkRMZjRy2d5DTZ2w0cygT9zEOJEVM3qFJlwVwlrnROxNFNo2weCgSGQl4pCYpnvB2V
HRTaR6eFfBHlUSoZY+ibJenlluIGgNdR4p3e+7ktgyijGl8iRo6ndXcJnTje5quVQNm/YOY0w+vP
qy7E5gvBX2POH1+8Qj0cJqnTI4ifxeAYqQZo0sPIK3/2BulnjiArInVaLfprxsMhfwxEYWO/Ghrk
WtvXCEBMxLrgpJ1gLZ2mGboVNJ6Xe4AB0GVGGqMLs39KbQyoZiByjXmdYVSeqQTrebcKEEBUNj3g
fmapLeegMzwwZYQspexK6JZZ2XU1MRBjSaqWmIe2gzvkFkBS3VuoaFC6JbkPv7pBraLpDZTbjhWD
kL5LMfyFBRRwmZgja+mGdDZJVGNxS+NDm80PlshMut3iTG9tcepESNFgmKbn6UAZ3YAks6CYj8oy
Z96ffnQnU/weytHviM7gJPMiT1ufGzx5Qp5vjUyqjvkrnI1kWjltSZkiKk2/gZAQa4zTaAg86HRA
TLpYoR3uCoEAk7xtgnjL1mdPbT4j5Cs3qJDlNDrNZi/QDlqI8LrPlODDskwYoVgkU+gv/c0Hgf8a
c4iJ8NJEXZspobErQFmmVrYwGkI07OHPysb+ztZpie4pmEAam1kMg/+iIxtXHGPQjwKTZ2wuQ+l9
V+VvJYHtqleR/6LdGADqaDiXYned/+RBQ/rQenw9lvVGSBuJ+ZA8cZQnKQHi8+Fsc5niEUGxPjXb
A85hULTwhFEv0SUF2QvCXETmTc/wQys3cBwCUa/tOuff9Uyz9jMEdPYfvGP2h8/DNdkdt7odem8i
jQBZXbZUsMbzLdPG671ofOuRQAHmXHb8MXJWs11bnlzfhES0t9dHo9NvQn4rKIcd3uXgBcbE9Iwh
t7fLejwXShVx/uX2AgoonYrtVKCGBz+9yzHy7S1E6u1jIfZsO4DyU04rjtSjpNU3oon1iOYImeTG
IATnH/7cVdG9jtEFdeTxuQEFg32f7OZtpHBw7BsjFY0ptcI07HM1eRDyfbWPdJdgszoC5QQDYiN8
9Q0sY679CTi/vMMyoWk0jRJFxnbUTZvoHQNKc/Ihv/ne6KKsUU1E4vA68WApK0s8vA+NXfpvhALE
eT7aTSFrvYOqsuo9cZEpmv15gMDovFOQ9qhIiGp28kJJhfLI1kWakl056AaSEQ/INsklICr0Wc7Y
7f4TesOgeXc4qlBpjXNUTBU2W2OSK5xq78cJytc1oIYGhvNR1DYenT9zsq/hXzDwb7CpMCnbn1mu
y/47hSYjHCml4RbAX9XYSb5l4n0fbThkG9kIuZmdc/RxiYZa5xTmFUJnFqd7DiVZKe9jqoyyJi9+
oZOsZcw++aIzju8xJhmZUdirvSiQ1dVDo+iLAgDCcF3Tv/NVEh9Cx7bLPuy9vWy19y3/Lki1fiM1
xXnel5Zex/PbQQTHPuNHCZfX0JtQUaUX24ZH2kExsPmVE/Mf6c9sGL9cQ92oim+K7NheFtUeymKB
8d1XD95IxWJv3pBe0jCgkpvdPWp2pcKcRHy6RU5L9ex5QK6Uk/67f+gnGbFjBltEpbBIwD0xhJHt
RoXuVdHGvyRdja5avuV6pNSKv4Bl3dd4HqQaximmfaX7B9ZRitveAahzu9boX44ZN5hMeZ6Fse+b
2rHJgFH4oOEaFmYTkO5p3WfcwJfPDo6lduYeyhI1Zl393UcKKfasnWKNHCysfjlXPmWpkLGtLPjL
Qni3tUt7bmBpRyYgeG+aCx7+H0WPMAJ35jDh+uHHfI3Mw2JKX7kGRJTxPCrvlYCBD8Tz+ntkHFHZ
ErmyEQJN51ILnoccu9i3FlaByLEuaHY0YnOtW8jZ7dpmiEYFFPOK8fBFQ5kUe7JF1daLEjKS8HzS
WQAOwURct7lseXjD8ekqi1fiHZ6bTR5H3FX4ZQ84VvSDrOqNNu/SP8+20qzMywYVTkaH0CgSRQ8H
eXahmRW1j3fbTkSpWbXKZ01hX7yugcjXhKAndfNmIYIBwjkq4QvZPL8YHjGeBIkELUkhbxAAQI1l
IY4aXaJ4uPKirJWAqOO4mBvpDMLYCUMc6NP16p22f4/9e8lzoqdP73Ixwgl39oL0N1pwZhe/U92b
JTGR0wGvZUvlyz+qNdBum4Z8YPRX6I9dQgHaHlJsgPm9P5wutkxM3SiBEA9KvWCfwrudDpx/EmET
31YrK+iT/sUresxl/4ZdGEu6bAVCJRRvFtJSswuaJ9/k2ik6o+GdIyGbPN8ShvCx63ckTwHkQTjl
0jcna/OvDtuLlYYMhYiCK2HKRgWDjal2NIZnPW8KVjonDnPgZ5aMzkSfx7hUX80ZTBQSYdXdPnJj
k5LRPhDHTUXexZNINy6WwcWzAZOJohF2ipEocndYHBQg2Siz/2Tbtois56eDHaIpPTKon9GNvqGx
45YBTiB5Z0WztJDMZgP5Ef4Lc2N/7ANdcMEUsM3+VXS8ifGixzrrlDwfMSUWQyfuDU2cCA88mNTM
PWkeqS2pVXWp2sDCClLGoU+LEsVTF7iHhQPK9GUJjR59WxxoeMxM+XPXyW1wjyhy8ejQXXhNS8mQ
bchkmZak1nIAS+q9P0oMXCB1TgUuVU91Aqz9B/KYvunaYT6B7MObFzrfgAXy7+lP6GULsx6yYAM+
edtUwO3ye6PA3mu7iUMmQKJeD/W9brjEByjB1iK2anqD2FwwosDypy+aEeeC69KqTBYZ+CF1yKkK
Su7ZFzf/OXS8iayOI5fw0WS6/2wt1XvcPqc1O3ne4MMqcV4fP1l5ZqttoKeR2+LgDlf7dCAlihr+
njPz9jkwxCp5X2QewKzODwUD86GC5VEMzoOKlrD7vY4NhOk5e0qt2A6MGR71IlTGE9ZB6kwp7R4C
WoeePQ+ib/mdwRKVFJ13OIzLEXefUhLSxa6s0IcVI/aXyd4MASRw1EHq+sAidPP9VMOFaiBqp+4F
hQosk9MRy8JhdSD/6ZqtU6gnIPnXHH/Dpr3+HkRc9de1GUagfpjAGWsmcFCvNERrfTwPBhjtaz+S
lpDlnzO22xUlc9u3MyDGIPBqpoSoDsScKb68qFVtLeCyCmqkTNCxaGydB23Pj2o9U38rLxuj+lut
wuV4jodDqTtlWbjFWLHahTfHOiVNR8NXRK1+glPlLxwUwKUkjmM3RDOmDD/X4OLQ0064Nmcu/PJp
9vGdU8RKocK809JFNAbl27yj9ntBRBu0tulZl/AOOCMhdaHNxwLNyqWEd6BgYI4gAtVbxrnyBxpb
GTzO0002QuURpbiqa57KEm41L/cB1rBrHi6JU492KpO5XWqWxY6Xy4fXtaRQxuWM9YO0PFLLDj9g
v/Gx2ySpkoXmyH8rCXKaD/7qv6/wngKTpd6Ojmt/eGszvclN+UG5D2THv7wS5O1FPvPVO9aE322v
QVRq5EdOny8MaFZ6gfpNsGKgukZwb8sJ6Sa8q1y6uaRJCN7zWRLK7Q4Cbmd5qHyh/vPOShANq577
kyh6trkzQjThj2m/FeLyVYuUcXNOPRSnzCl7g5CH0kIjwH+s35IDWycphG84jDlORLIgtKO6aQtF
m3udGkD5Qq/bOWI1ukKS2HUW6cQWfvMH1gKfHw9uBADmbT9A/efCsEuHtjzsBD6m7GvqNeOu8XbY
bDKPTFZmIQh9vjdFwJdXU8Cs9eupT0NTrmFzP1JjdzsGUlMFKgXKrS+b0aM8d2pGHs5KFc9rkwnr
oQ6h+iRt1PJkNqbi/2QFPOv2vptCLpqT6Gr7h8CGfawe8ADk5kr62mwerBVeq/2jXeCLyKUNJoO/
aHrFsYf2y4hTMVDDJcgVeAiy1MoUg3f4SqND+1fC2KJ5gpeEM5WEE3VJa5lsD3igRK6FfljEF9/L
iCWZ7qe5HjuodnPvOoQjmUq6IRinINWeGXRD8WKo7fO1Q7SKuIExohsdyig+tT9ua9R5lIAXcE7m
u7ItBECY65Tzck75YsXaK9pdvXvF05QLl3Qrcm9w051KzQsGFr7k0y2oAbQoZKb5sLSKbp4DVE/E
Ofu/JpIOz3HeTjXvJwW2hSp53BaGOSY8koFFy20NJjidOg8bRZ+pg8prpuex0sLL9U01cYx91NNq
kz/T49vM2EpOdqS4jPvwfJyq7qJaTF9fPRtcg+EtcMVIBDCAqNBINabK1FdUNI5rJ2ht6eHr1rnP
5mxcwZbuZcKiin4OhPR7hSMTF183qJ3PBRYoSs2m4xjJ+xVJ94aifi8hC8Sul6Ss2KaH5Gktvjut
t/tBIOZGEyma58E0shU5eMYh48wAPs8xLcTNj+UmbttBaEpcgKSdYHeEBRLx4TVmq2jqkMOqbR2E
UX82Ru0kEK752dKLyHsD/N1FH7RmAOjtkiYA2D+ZluulhXAOdPlPr/46yOj9PzLOMGfRPVuUrcYz
WpAsMEKbZ5cbBgLhw3fw9TTYR97HmkwMrfY3fAMdHFUe4+3XlCXRt5aNNSIUbZDC+r7f9ApUESaW
hTqr4IhLIVqhFRmSMgZpfVW+d/76WBPNTTABcqM8TNV+/ryPcDcBz3bvdcVXzxsmrc9a8JENMWhb
/ua0gJdoOMB/sGeXABFvZon8ykAh8sS8SCrttK1YHdGj6SZC8mgUzZUBip+k8qZdQX2oPZsqXZL9
oQSWM6ji84zxC6rRGN5KV3ABXbDtPALzpznCbbSW1uE5Xnctm/Ps6W10goOjXFIpwTnICbhG/U+W
r4kJWsUeIX5vS49HKxmLA/PiztU4QXI+19ge+sF+rXoBvq5e4pyTsnjfN7aCWNcYLH2ZfP37/uZh
BMhG/hZOCobgCuPx5jb4ehycZeZJOCfaOHnyfThH+ZLcRR8oH68ZA1+if49FoZEB7ySLhZPlLL5N
l5I/wFK+6kHSxnLvK6jVukFDjBgIqCyjEvqLwb30QHaDXvAkbEdRT2pU9ZAlAX6f2SjHvVGiGeq7
RKUek8bzksLTKii1YGhKO+FuSkWSe9K6yeH7AAe3RlM0Amd8KEKIYdJ44K72FLTKCNBTtmtCUX2i
ZIbh9OaO3gVAJcn+z7UWlIsleT2Fg83mfdyAJmATAZj5/dRdg+BhFZulgQXer6hwvhjNAjSYyQwp
MPFX065B2W8zTltmWyTeyESpbslW7Em8o9BoTR99clO7GrvaYLfRZs34YKCwPwUorY5uWtzIQa16
V4jBehWxhPTcg+5E2xmO13no6T0HF6AoS0CCcpmyU9jChJc9N168ILZlZRSMTodQj7x9YKTm+TBO
U4v1qIpyMwd3yv/K9hQZLd2v8pKndswerLFjRsZJiZ/Ps6Gh6f4jwDsLGUSK4SchY6JIu7xRXWVw
k/SLQRB+H2vfMcI7WijZSSQvW5WjeR84oyB5yLt9z5NC4KzdRx3Wa0fSQ/sIkGX5y8JvjByqfzMo
Ld5N33RF3YeDplWBVMS7qyMGXoShSQkAYFTjNbQsyVdD2QDCa7rb2lpSL1ri3aUXX8gfN5KPPPsD
VvqiBISJZSMucmIvoX75i+D8nCC2tfsV26mBB1tF1+0esw6rBJ17t2glvyTq+radBrC32F+wjLDk
T4NDsbyAX5iUDw9EgYI6fYGXgwGXOCPAuc58prTx3JOZ8cLN5nUVpvadPh/2EWF1kUmUCdsSF/kx
dGHAw35R4HRZnzjdp/4ShZ0YILvaIkfS7T2d1UWA4ybagkNpfgIxTdmm4IHLSmVIlEB/8P4go0/O
wBw8NPhFHxq0jDceNFN6rywvF4elh7JwPn4Kjwb+3/Ycakwb15iBatXMgQ5hWgCEL9Nmln6JtwrQ
elJl6ZHoxKsOcvnAebWr5Sma47gFMYaGN0vZLY0un08fLj8mXg2uf5bmMcqd9xEW3PxHB6mvf3uc
1dhmSUdanM4tsYoXq4mRFQn00Zh4sk7YOQS42lr61dxzdk5iTKY0QeB3jLDDs/U5lbutvauLzPf4
znNX7EM5+l0Pb874CCVjeOhFyes68S9AtOm9+DnoLU11jNylZcxqZvAhOraicF0DuEeQB4oXLGRy
cQkunjm4JbXS5XYfSnpYaUjx/qeUbRXIxaCI0kuZOxMbL/nK/EZ9G2ES6MlimrBHou3HXWe7ZHYk
/vE70Gc9ZOQbLFuR5Y5nen3vKP0kIdjAF5zubzP8rIizQhv6dLq402G3qyFO3dr5L1vUK1t5PZ3S
WqzFnlw1aKTnKmOm1+VqO6iNnEZNMDFNWWvZmIqmTwiaEJo3S3a9qnAIC6yLDNRXtbNiYhK+6wuv
2gRluyOCLMGoTQnQUMuJAU8eOD3J/u1NmnbgvEpAm73l2XNI1QZmxt9pTc8OI3MWtw8DeaeH37ZL
aT/M3jOAyd3YjmC/2HQ9sI8gD3fPR21VZzLJ6sWFYWp5YX64BQzyX52A4NkfBNHEPTaggcIOPdoL
fG3+2A6BpXy8EzHfxNSz4n/bli+0ATf45t57d1C2N99YEhcpidjtDFBsdrWerfpyyIXr40YAz9kN
cU+mmAfo8zJgMLMjrIewoGHxocZWq+n5B3s5DM8hK1mNyB/98gCgz1cRQIVvTp0/fwJEHl+VlrC1
LS3Evf94Zj9thx22cllJIF6XQKERRNJWK7qBLkRGCrDelk/dobaox4eaaf0+0yIbIUUoykDXDr4E
+2FnxuQtb4dO1xLvKfoNGvszsOtzeZmQ2/7P3wxIzsiWqQG9VbIptKbmpul0FXvJDioyDuKpX7MH
p2T8Q5jscVNfNNcnglNHdzt9X2PCPN7K4nbpCHFqu/AzioGcDgMCD0u4PsjJX0Lba3YH25rJk7UP
W0ssbuVTzoThBs+AuZdyR5Ewq0EnzsnetucW8RztDxzOy2DhPCgqhsAW4fk1UlsC5DRc8dIF5bO9
ZCbjwWCpy/6nkrz0l5Nl9LGstnrRi8gCB4P3WC+xyqRcio68EAVu+DYS2le47iipPpWAaG1TXNmz
JR8/2N97D4iXPv749bpq1K9WhAB/KmJRZ9UydEP6NezfNERZe/H1ZbFQwFeLIXPdy/ce8iPhIhIv
6sPkznf4AUsSFbVSnUyj/H4OCfhjD1XFDcoL3Hglxnoc5DJ29SvT6rwF5QQ3swjXrF/J1brYjDP/
NHRY+4Y1ZBgklXNrEZMazcyea/o62auEaAYIvuVUi1IuDB4QZkbKofO4e7WNGeQ30dqdtNl18ZBf
6AVF5MaJrR8wfgtAzPAcDGPpai0Wzdtl3BWulbNaEftohpEwGIUUk1dMLo3EBg1rkZcVc4qLc7uo
elt+416Hj7Nx/dsZr4URr1IJ6NyeiyXvD2BaTuoqpR6yKTq1+hInHV8TLKLgrQWalLzvaBx0Z32s
jpQZtib3nJjGUAmix3ijkJqOzy5IoxuMyPiT88lzf52ZLH3E8tio1cFLpIsCSDbSkmT3z7sFWVYa
95juqf0aHPL4giLN89BvaWK9eUHNmu6Ka0JzLSZRcnKKHWI+/AkZp3jNRVlBG4e1J8sdFNoi+RgH
ZR3Fr5aktU2vSuiEwvjlIpJow0+y/aFYhMNaxGhgqbG+TarSdUXH1DCuiYm09NJ3NLoIwRY2tyZQ
ot3/SkdmXwxFhoMvU80usz/oqqAr1g8CBTUiYOYgva5OYm+RT+3a8dOd9Q8CaepA4H8f79NLoD29
YgORBDIuy4+XsbpHCMJHEUY5Slud8Mw2XafbscnQNpa/PFd0820bcq3z+ke2DeJtZ5RjML0Lm+Xk
cHBPqcWwnpVieTk16sYYuWQqykm7vVlhF3uS8hTRbF2a1Z8Q+FjtP99djcPOV7tQIBxMYj4Uz6Jx
kVf8zB6ooc83KSaqTMFX/DwBlQFs2AVOs6BRfHBQA9xqFMPP4ApaCkXQ1UFANZS/oKMjqoV+kslO
hVQoAcA4t/3QUF2CMcTPcNi5etRhQuNwgG1SOGQ52QrNjQW3YdAJ5yjNSNpq4Nrm2t1AewUQDDTx
MpBpDqw+m0ogCFpmFNv4jC34JuDzhX0Vl47stj2o8mwZ6i8WXy//mkCbNP9vUI1G3UhtZWkGVwYk
6MLadNs5SoL5cPcLwRTFGpMV0mSmQVhwuyEGbNNXgTqL6UsyMKIOduQmyiNKaMSLZIOUw9aEEIpn
9A6n/W5pyloguvmn/JGv25pXUqkmGXMqUblD+d58KRgLN8ci7hTG67qz+oBmPnvDOFr67FClzfW0
YbTZMyw/jeRv6IH9bWDrg1bh7LKPoTRkClq5M4bacgWyz1tA1uS8NqaroAA563CMamu5kURCD0yk
a6JIC5diQlFrjrjWRLo1dsAWQkuLGgDu9PWhqgwgpkdljItIHGCX5Xgqrjdc5M6wQGlg6LwPxQRM
qGVwbqjEc+yI3jm9CtFa788IswXSs/dJPR/lnQrtGqlMx+lYYvQxDl1v7DcB+gHzY1sRl5UsAxaP
Eq0ZntpI9veEsa1xWbOy47dBxscZGOyYkl9As3rQm8+3qruBSKQ1sE2R75ok0qlwelNlWPrTrLu3
DaNzxn5/iPQEC8Mn+Cuo4seRHzjrta0d+vTsAPabHnSYxLha9xoA6w8uQSFtccsR9FRmP5TZzuzB
/clM0W2+vn82xBVjBhORTDpIBlUmjd3cUtcIAwV3OT7KNF3TwROexbstVgdyJbx+dR7mgP0EREaN
UYSt/4R/WzvggphWrmAkJ9/P5xUtcfZvwpWahMEM8aej1+D+3uYoP/m7c16URvOpvOZESLq5QNRX
MI2i3Byox9God9AhFU2K4Skjbisu3oc2PZv3cC+gY+OcC/JQ6KRJetpF+isyV+eyimIoYbS5dGep
G6+/ONrfl5G62/g2pEcCAqv+nieSC0I1wpI6RArDGCPR8ZJYw8k+35Mz8y2o6OjvCMExsmdNW3Bj
y8CvySAt79QKDFdRx15Rumfg1gTprVp0rYyQlSQaOvn/b91an4dWvkBX70pVm7f3z9X1dCJjBM3Q
iu3SdXeKJftj4MPkRDdr//lyYFMK6RZJjWNhNB2Y1CAigjqstPCXHDU5k8VK8+HUt+eX3ESh0/ub
dqRSV8JcOGPe8VP+jV11qBzRkJAkbTmMD3j8Rqk4fxiM8cqTX7r3H0z8oOqDpYHE+Atr3n+FBDy5
gYwtiB+EoX9CLLgbdKOpts2DkUBhLTBe+bgRGe/U7L1aIO3ihElKCZ+W+S4Hrtl8rIfMbXRL4WkM
p4LaxrC2cCIK72kyvCUhzSB2UxsDKHOWB5h0Ov82w8l+md1VmcCy9ab2gIL+qIR8FNVOpfsP5sqL
wEwatu7lYquetKj/uAkcj9Pwy6u2G5Nq/pR9F1m+BKWdMysl4dz0tRpwfRUi4kEfq6w89dmXnsvV
5tnbll6GcOJb0OW2uTKiwElIXHhgom+7LXPAOZ2Npfz2rqV1U7TCRuNZdGTZX9YBVMjbXDl2yATc
n+VwVGUU36wnIMrNf3QzNIc5KfDPMieXtLmvUGhCbNWP0Bj4eE4BsFgS8PwS4SN3KzmUKAzDJOsA
AOeQ+oirqSDBWDsrJgo9uoj6MkcZ8X9xOh7AzlNiwmR/ESwNk9cv1K6UqhthMn9AR5SUnYctIpnl
gu5uZv9lL80i3dfrC7gkyBgygLdP7tCWCjxrEeOSgSeLn4ojpBdJE+kEVjTx4HvdYcSQNYOywWys
RiHlmy0pGonG6R55+79rtPMhonVbEgbHkTfGHDis5dMqtflJe0MHt4Oc4R3A6U+WbmgZ4BvRKP8P
4W9wkPdyhWO4TZSbWh7HiOPCrKqvN2PWkkdLKmNxeyfzlPZ7dbzdZI4Oh8iTDutU+8dnV1Uix8Jo
lk6ZhGe0pu7s4ZWT8/XsXWon5Ky5fh6iQP2UFkDNLnOfAvET5pkS84nqOoGXSPIkQ3BY2ExajnT7
qibM20yCn22JoyLG/zNN32A0ppEDcDsUiSeIPWQiI8UjHf2sDPcKuHjJ6L2T+k/YhttzU3wf0Nrg
1nSnZfJgHEeWOMIV8entD7V15f5DJyvl45mfYrA8PONSpJUP+4SvO5dxaCE2yFJCFe9ga/TR/cWC
AnlsjvtLxlCQMJBSPe9bP2ehJNUM5LpZ0rZB7IYX/hYyz4uZ8mSqOiUJwj3NMJGPMFrKQRudG5cZ
Ff+PVS6hYAjOfIM3QvqK+i1ob7o=
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
