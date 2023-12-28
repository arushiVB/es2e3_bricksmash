// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Wed Dec 27 14:13:52 2023
// Host        : Meena running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Bendigeri/Desktop/josh-new-collision/es2e3-collisions/coursework.gen/sources_1/ip/heart_sprite/heart_sprite_sim_netlist.v
// Design      : heart_sprite
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "heart_sprite,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module heart_sprite
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [12:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [11:0]douta;

  wire [12:0]addra;
  wire clka;
  wire [11:0]douta;
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
  wire [11:0]NLW_U0_doutb_UNCONNECTED;
  wire [12:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [12:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "13" *) 
  (* C_ADDRB_WIDTH = "13" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "3" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     4.62695 mW" *) 
  (* C_FAMILY = "artix7" *) 
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
  (* C_INIT_FILE = "heart_sprite.mem" *) 
  (* C_INIT_FILE_NAME = "heart_sprite.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "7900" *) 
  (* C_READ_DEPTH_B = "7900" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "12" *) 
  (* C_READ_WIDTH_B = "12" *) 
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
  (* C_WRITE_DEPTH_A = "7900" *) 
  (* C_WRITE_DEPTH_B = "7900" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "12" *) 
  (* C_WRITE_WIDTH_B = "12" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  heart_sprite_blk_mem_gen_v8_4_6 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[11:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[12:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[12:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[11:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
aMT3usC6uizzcwnzOCX4OsS16Ob+YxFcsGovFpFklbnaIaD1S0lVdxenTwHPp6ByIEi+ehwr6Rgg
z/3AlTheI5NFTM8ihiMA18/wmUxI7EbaftJACA1LykUKCuj5myy0T+DACuv3sGYIZS38TZTZnnBC
FGAlvTZmRWs+JzneH3o=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lR9ZerhYSAb39nzEkeYvhnwEs5t9y/+yTDf8KuoUtR1BGeHZq8pA/YxtjzQLtaOW1R1IQUb0FtSI
e3CYAb7WHYbIjcpw3vKHvW1SqcGn9CMGa556CYKmD2oF12Kow8xRaFvMSBUVxX7HsHxNWnRd+PU1
+C0YayU2KFIY/7Yl6cZ5luAzhw/6SW3PFYUIyyqWy5MCIXweHOwQR2IpQEdlDur5nluN7i7BeB+i
fxwwHh8TU/g7T4mhZFkiTuBKdLAtQOjxWxzqTMxgcuAjlTylY16FgMFOASdvvSbqBZJjbxMdVloU
rYjS8O/8rWktv8GXcaIdBJ2BRj01q7jsChsbwA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Qvl63GHz9mq2xOB7elt/vAQ7URLGdD1Lkcz7f3Wtw31dwjjjbP62Ny/Jr6OmBIheWlgejx38qxAT
TrHiiEyjKmGcnPn1Tn2n+cH4RAxCbOFnCI9n6+YsYMTe9JkplGhGGr39SkFgJz0I2IKpPsuqTjCj
rhf49TAryNMQeRpREJA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MA+9Ro+dh339m0iZrkKbqTKN8gQ5xkxN/SPCfhkOn+5jjgCTS5IOKLHil+HsZDjX333ebxnornwG
MOBxyEdFfLM8SA+bs2r41J/j0af2VVMmCM3hOh8JmZxB4X9Jg/glegNCbvwzqxMbOQNEy+zt7j5t
TFVD82RtPFmYVVYZZyll/WvAA+0aVpyjzLCIM1GznFky0RWLv65Wp4MJJnNRRrtG3muMznVO/u2s
tACsJ9jzv9M0IlMYjYH9BixhG6cZX02I4LEXXaPkhdOINlMMhsbArXtc9NphzmS4bY1/1yF1D6YD
EKLyS2Sr3HDl0O/lefN+jvfG8iKuVl55PNNrVQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
wpMTg7STjFkUDhOqdNPa0FHXTnHQgKmhvqDv+rRVBvMiQ8O7u8oj7ibITq3o+jugJsMJ60B410gQ
JFTcqCJKYmYJvqi8rPLLOYDmFG6ZLP/Ixr3n62IyIaCeDltBahi3yV009QN0X+iuzuFCL+Y7g9ff
IvAgyBly+Z3Itv2H9EJMZPMl17Sa7IkgjmWqzVXIKNMKn0iDVYsQw6ZgzQDYQ8N8IvTIEggU3/lh
6Nf0hV0ev3qOv/2P+4w0U766Ux3yLuzPJSI7bKm3/ip9NjhOytxOiKKqVXhKG8dzbbuS5u3EE/eq
q6YxkL7gpvNltVqqBnJB6vHSyWrD6+MqsCtR9A==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Q7Q4SSp70lxFryaopuic9VVP/Ire0pSsPEIMYdURBAczC7ShkuYeV02U7L3BlAiyBE4vBKcwYSQd
cWiaj8sVP7q4kxoRHKxLV1R5PIO6l4DsLWE2E+1MLyUPME0w5KTular/oX8EPCJ5n/8VCtW7x4Vf
dpeyki1/IAPJkAyi3zVZKHzgKhEwnZaZZtZYuMWoPZMt4V38sAcE42Raf+7yfFWG5HO74JY6iEnW
gJeRk58K+avB/XLF2/j2RQZfjTYizrprT2tUMBK6e7DRWZZtk8AOcsMhUikev44IFGNbNXjP8BXC
0J3y3P7pCFT6l+saU83nRwi/H25fSA34diJtNw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
a/8ooC+s+6nfvfa1+oBhsvYWLJjFgp83DI1kNyOi5Am+ugPbGRmgGZudfyo6yw6Yd5gGbLm5aToQ
5G4cGF5HaXD5TU6A0ZZFMTIbzFLE76JMjjIxX8JcaJIZpSmrXqlru8l5gDINUEAmwUY3mRQnjcGJ
0Z+kMRH8iAEF+gEviPiFZSBbJeOPqivIS217kimQJX3BeNbNPQTP+GUidcRywpGMh5avxtA0kDRO
F9SoCSyTm9hr2v9hsK1IUAYQLb7n2/R+z5YNKNzt1oN4qgJH1wZfdI8if2K8+ohyOdnxrrgJOWdj
cOqr7cGqEOYfBMTIQeHVZzb7NGWVN+9B8XSUaQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
FLPvOUNRWNW2GU+FEGmt2XWthOT5bY/31DRbol2cUmEGNF6b2XzpCosNKGx/o2n6sQvGP39KRFCs
nJu0ihe2dUGee9nEZZUcpwPjnEfXVI3yJaRVYy8iL+rm59lXq0jX4sjAPieDvv8shgAnoXLTZGlq
K+2c1JhaHt+nFi27TDrYar/+P8nP1MhocOS7BjzCvSs0foEXj92/qD+71Sm/LqGr8cjlH2qTJJ8B
ynxoH6iT+bksVA2VbtPT9o6h1kJ/zwP4wcsL9l+qSlJhd4GI11JPux26DlNyIi41WmufQcfiT0PB
r6O9+0E9lV9ODwKdjaxfZRK29rjKeq2yr0jWhMV38XKKqHAJli7MIypGRXcCo+u89H87KgYt+ebw
s3foIqCe0JKR57WzI8VD6XdNtOL8eBxK539oemx4vkE0cGYECZKYru6A2hPeZOYDD5eyWSUlQl1R
EciK49WM8HnssyRVcmE6di6bISMbVi0TZG/v98bz+9UZa8DtqMVYH0tz

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fphquQOeFuqByo36Gh2C1zEC1J6u9swSMbMzsKldIvLm+SZ6/hr/N8KJ/G2vBABzX6UtbVuP1ZXx
AxdftP4Aqis1B3Bs6989aQG9eo0SOHA7r6aFLtFb3qoD5Pvqw4aVNU4z4EtTpFpn/jCWD21lKROf
q5X32HRfFq1jwqod+9vIbUNRRzz5y9VHvXfacZlxDazSPmcCF4hxB1KqWqT44KmYVkDedgkgnYgb
ZGidHnTb3W7C8tSqC9ac4kNJCL429QndtddweESJNlpX+65pt9Irok9pkOodwoj0QScswOIFjhBZ
/GrzZLQcFWiD3gXRU4DazzxQnGdRH4qEIRWziw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
1lUYYHPCt1BUJOvcBbgMU2GSQiqfxItz4ntieMaenjrtsE9SLwaU6xB0tBl8Atw5yP/RRNww1kX/
9uZbTz5He3r9mPVt+mGxB4N3f9BbCrQRb4USVPgKO/+vWUfMQERGklScy0+fz75WuxH74CjRUoDI
8iyssb2cUNnfDe13jIoI8gM1w4w/Pkxkmb6Mef53QMxacHAWEZeytcH3fuL/adO263D8P90U3XJv
vBXJmbjkRVi9qzjBzfMxuOy2KbZaZgR3BLzaffIfFnMwg/Rb8sGls5pQsZv5jL2wk3+Bj3OXBYdd
pDyjGoalJBzObKzd/t15kNHwY4FXYFcZLQPncw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YRmSEzaa2WFVvMH1BwWc1TIUpVbzSEIP0VbI6n0sEgct/X4PiTfMQmK1jBVCaISIzwBxscKQwZOt
mb/nmINGg6I7ih39LSbBMtx6cdCUiyaLkPeRbqfyPpKhvnUIFmdKVvTd1dYzxeOeuDnhSVaBaAcN
3lngSg7lIbmhLIGjC29yQrBTiLArbVZi6IRGronMK51e3UrYa6GspsznhiuRcXjEb4bHKrJ2CM5Z
BUwA+E9949sQgyOagFZbLVle2ESbwBaoxcAPn2gxfRHlT0leqyLgUGDZLsfArzGzw9BTGzyEG2TR
XOrKFNYRfMXMrnGsBM7acIelY4LdAMgsKgDH/A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 63376)
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
