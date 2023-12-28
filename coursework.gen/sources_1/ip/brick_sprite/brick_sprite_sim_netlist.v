// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Wed Dec 27 14:36:29 2023
// Host        : Meena running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Bendigeri/Desktop/josh-new-collision/es2e3-collisions/coursework.gen/sources_1/ip/brick_sprite/brick_sprite_sim_netlist.v
// Design      : brick_sprite
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "brick_sprite,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module brick_sprite
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [11:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [11:0]douta;

  wire [11:0]addra;
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
  wire [11:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "12" *) 
  (* C_ADDRB_WIDTH = "12" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.511199 mW" *) 
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
  (* C_INIT_FILE = "brick_sprite.mem" *) 
  (* C_INIT_FILE_NAME = "brick_sprite.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2272" *) 
  (* C_READ_DEPTH_B = "2272" *) 
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
  (* C_WRITE_DEPTH_A = "2272" *) 
  (* C_WRITE_DEPTH_B = "2272" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "12" *) 
  (* C_WRITE_WIDTH_B = "12" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  brick_sprite_blk_mem_gen_v8_4_6 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[11:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[11:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 35168)
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
