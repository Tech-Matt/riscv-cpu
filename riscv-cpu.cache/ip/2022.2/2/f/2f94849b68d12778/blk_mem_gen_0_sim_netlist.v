// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Mon May 22 16:03:47 2023
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27968)
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
