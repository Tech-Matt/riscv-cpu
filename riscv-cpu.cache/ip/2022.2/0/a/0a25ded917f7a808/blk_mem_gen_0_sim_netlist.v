// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Mon May 22 16:19:45 2023
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27680)
`pragma protect data_block
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
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
