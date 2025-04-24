// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Thu May 30 13:13:07 2024
// Host        : DESKTOP-MH78P00 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {f:/Hamza
//               Younes/exp6/project_1/project_1.srcs/sources_1/ip/mult_gen/mult_gen_sim_netlist.v}
// Design      : mult_gen
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_gen,mult_gen_v12_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_16,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module mult_gen
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [3:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [3:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [7:0]P;

  wire [3:0]A;
  wire [3:0]B;
  wire CLK;
  wire [7:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "4" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "4" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "0" *) 
  (* C_OUT_HIGH = "7" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* c_optimize_goal = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_gen_mult_gen_v12_0_16 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "1" *) (* C_A_WIDTH = "4" *) (* C_B_TYPE = "1" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "4" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "1" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "0" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "7" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "mult_gen_v12_0_16" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module mult_gen_mult_gen_v12_0_16
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [3:0]A;
  input [3:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [7:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [3:0]A;
  wire [3:0]B;
  wire CLK;
  wire [7:0]P;
  wire [47:0]NLW_i_mult_PCASC_UNCONNECTED;
  wire [1:0]NLW_i_mult_ZERO_DETECT_UNCONNECTED;

  assign PCASC[47] = \<const0> ;
  assign PCASC[46] = \<const0> ;
  assign PCASC[45] = \<const0> ;
  assign PCASC[44] = \<const0> ;
  assign PCASC[43] = \<const0> ;
  assign PCASC[42] = \<const0> ;
  assign PCASC[41] = \<const0> ;
  assign PCASC[40] = \<const0> ;
  assign PCASC[39] = \<const0> ;
  assign PCASC[38] = \<const0> ;
  assign PCASC[37] = \<const0> ;
  assign PCASC[36] = \<const0> ;
  assign PCASC[35] = \<const0> ;
  assign PCASC[34] = \<const0> ;
  assign PCASC[33] = \<const0> ;
  assign PCASC[32] = \<const0> ;
  assign PCASC[31] = \<const0> ;
  assign PCASC[30] = \<const0> ;
  assign PCASC[29] = \<const0> ;
  assign PCASC[28] = \<const0> ;
  assign PCASC[27] = \<const0> ;
  assign PCASC[26] = \<const0> ;
  assign PCASC[25] = \<const0> ;
  assign PCASC[24] = \<const0> ;
  assign PCASC[23] = \<const0> ;
  assign PCASC[22] = \<const0> ;
  assign PCASC[21] = \<const0> ;
  assign PCASC[20] = \<const0> ;
  assign PCASC[19] = \<const0> ;
  assign PCASC[18] = \<const0> ;
  assign PCASC[17] = \<const0> ;
  assign PCASC[16] = \<const0> ;
  assign PCASC[15] = \<const0> ;
  assign PCASC[14] = \<const0> ;
  assign PCASC[13] = \<const0> ;
  assign PCASC[12] = \<const0> ;
  assign PCASC[11] = \<const0> ;
  assign PCASC[10] = \<const0> ;
  assign PCASC[9] = \<const0> ;
  assign PCASC[8] = \<const0> ;
  assign PCASC[7] = \<const0> ;
  assign PCASC[6] = \<const0> ;
  assign PCASC[5] = \<const0> ;
  assign PCASC[4] = \<const0> ;
  assign PCASC[3] = \<const0> ;
  assign PCASC[2] = \<const0> ;
  assign PCASC[1] = \<const0> ;
  assign PCASC[0] = \<const0> ;
  assign ZERO_DETECT[1] = \<const0> ;
  assign ZERO_DETECT[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "4" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "4" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "0" *) 
  (* C_OUT_HIGH = "7" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* c_optimize_goal = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_gen_mult_gen_v12_0_16_viv i_mult
       (.A(A),
        .B(B),
        .CE(1'b0),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_i_mult_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_i_mult_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
ZqI7Lq/aGyAcoaejBEIk07VX9jYIkvdeTPQu9dSbDEADopcPNa+0k8THWemULZmXocovtHBV2sQ+
UG9Mr3L0hg==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
R4vPs+jPUBq40hDi8U6b9avbUk2Eb50U4A+mDDli/Y0olyqpMjS2bHK8VDjTVAFuQ+H3qih0cQYm
+ik1m47VLNMfNDfRLbftE2okRK8Kx81MRcEafr+7z29VxyL2KSwmOKbcDCEkIT1VX5y+96x7q9/g
O5zX1cVuj6hrFncQjBI=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RHGRLed4zRtfx3HaMZFysMR3Ua1JohlSUQn/uIq0QNaCK2P96ztDgqQoqe6ZQ11betfsHTRFzq/1
66ClFz6QxXME/fh2KrrXSgUZxYxwfstEZlyOThrSfu+qzCsdk0R654q7wyvVT8+Lni3RuXc5nFXx
raCVZl6qLm50r3EadUq562wDBW7iVkrMp3OgccKyJyw39sT1Jc+0IkzHuHqjKA44tfGTOOSTHNUj
YgsyeZCJS72pabS90ZfprHyjsELB7Bxw/M9/XLEV7l1LP+SCDJFvOP5dNLZDBmwYIJ5OoU7247Tk
wYu3m6ZFZNnTwWGI9SAZJyiXILRa8hVZPL9TSA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OU7rNiePgxinwm/ruLBNeniAmTTLdwPhOZ1i35IGtDWXtaPoMnsPLRF6vnJo1xeYUES1MIlBqaG4
FUeyfrnBl3ofk5rfTbxL16dBcEtA8Z/duJARcLCIBD/J+xf2VlSqIo8dG9Ww8/L9pBTHpNAObSOU
o17xArTTrLfHWXZRGfRwuRpGlTLTYOMvS1AGhQcPbXjHrlijOoz3XigDVsnyGbHfkSgOlGBCnyDS
TPebi8IC8YIl88ieW+lqTL6jl+3DZ55iTfCJKbFt/HrE1Uou1l+60xI/9h9XhrNzE5ANic5eFmyC
tdncsHEBtx+UfZhyFrHV8z72yZoLCX2rOJ+IJA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
GUoHfgebfwQKNkw122kR1rRfB4ZFf7/0xjFIvV3auOQ9RcZO2jgecvvtUAn3nocoMNPW1jFFZW0u
xgkVDSrwVJrMR/obpu7gqo1n1FD2E5BpOJV2Gwso9aZGhgTdfd0mINfCxPi4lxUYuTw1vd+iNkBH
peC7j2xzDHSu6o2S58c=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lW3oa+bS7VSdBch0q4Lk4kIel2MxeXNlqo+JkBKYCThE5vtBv3Mob32tRj6s2h8BAos9XGsKRu0r
zWpu3cgAnv8lYIL4/UPBP9T+caGqWHHoGULrLn4zuybUvPzfGPj+ANXGfPXBomTO48UgPFWBnBA2
3vlOjCiOyKLMQAUrg8RqpfdYfcnwHxk8ebrE+lZJf6NCQtrqGu/EnH7PYFH/8MSQa6yey02fLQ2J
HenzdGNam7fu3z20gETHgePuewowRrJu5bEZOzlor2RrSnb0hcSbcO4/KSA9EcbmjzBMjE5uRYAM
1y+0t4rNGr+0XAjpp8m6B8lGF+m1jIGYMJ55eQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
AYjoOGO5c2rCxRUY5RbgjfKwpMKJQrCDGPu9wzqv2ZhoT9Trod7xJlCnzNNU4kNJPTgmDf05Bkoo
EvR1hgWeTmTgCGdy7Qci0Z0L3pdxnOg9i69qsJO1qAW46sOYPeZHpvATo3irsreTIyOEcblYRdLh
Raj2T02eEhljrx1UdWXHwIq6kJGwbPaiMRXRJewJ75w53lF3nNUwTYgttUbm/hKuK4MTBvyDWlHF
UReBw5kEbERTaRF91+HNJUeoBgfLIgVhtPzX3Yzqy4fl1PxZ0BzAGNRQWfLI4TBSyl64znmxdzaS
+wcpSJ3OHZL4sBSIwGqpZ8UuNr53DWWwkd5lqw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
F93W5rP9wRsskpVAtvm9VhlFJY5TOuivcFKT2bVYmeqxn925TMU0N0nDRJZmC+O7NbtC0kbL9Hfv
iPaQAjkvtWKCEafU216A83pjNwYVINq3GbStXAtCrvf3KbYJMQPnr6FzKWLa0RlmEqf2z1LRIJMY
cR3LKzziLGgP+oQLz6W3siXeoyqxsbDm+dasSbu2YxzGAvkTos4kX2slGrQzxYSQogS6j/MzVgIk
Vhsm3BYDbtVT5TsiHGfRfi137tS2Q9o11KN44GT+JYigwORe+GyKi5xjI6kGPl1N1DK12TlRGsgC
Wq2YWMn2ABYXE2F8mkwPOJqSaaAR0S5MMCjkaQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
EO2KlFB8vWgjeXvua8SEZL2APl0WfdPtqoF/0VTjBDZhkKh8T7GBS9tSSrCin7kHRBUGF6hOUPK2
V0JQtp4yW7c3oVbMN2ePIV7UdtkAszA2lMqOqeKJbWn0TfxRWL5adG+jGlhhYEbaT6tkCGPbbtbk
y5Kew5kT3RyGP8Rb0tim3cGvqi2BdBxqdc5Sb+Vyj0havZUyZo1AsjuLnNukDIYIrPCtqOY22MTp
VlNOr/u23OIMx+xx7Z4aOvZacPCxfg662ljyHetf5a0wu31WI6zf/69lkXq1iWJtHgEJn2iDpIWs
bSWDEtGgKAFHGKVAoc0vIGP3aPG6DIsqRyQ90Q==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
D+skz2FdkiX1xhJ6x6uOlfCl1Qs8LEqebFWyX1950tlYRLd6ITZFz94lGIqj5bU5/fW8ZW8rVCut
5TnaLlpWIYRwntMVfpAec76lRLmGZfoG26g1sMIt2nW1ia+2VVqAOOjCCURp65j/4sOPIunD8SUP
CGoGbf8gVOs34zrJ+y3jH+68z16Ov0+eatKx/jjnGFTxZ7CPOZBaMRp/wfxzPkIipW1oaHY+zQJZ
ypy4W8mDv2sJJveTOcsYy7Nv5iiGhEHTRYe6DQ8/py8njmTtdAyjhJkShY9dDol/TqvPxwEIYE9j
CYnbQoUl0WcAPOwhgoIp8neicdzCMmvOiiQgpw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
X/8ec+TFS7fjfpgoUf9MTmGkl1V3l/Ch74KTawNSrm/3geogT8iEmDJd8K9+VUFQIWV/uo77yVrV
NKmzyB0WMAyXNg5Cy0bpOip/YuQFVUy0pehBTmn4t1BcfHEs98EWIlOjsJ+JkHTV795n09VM5da6
DuW5rdHiL5nnNSt+ACHPyNY9P9nH0M6ULsKqAJnoh8iI9I6OlGv292ZKiwLKFQ5pzHXmwOfpIpOx
H53DksN36UQgjNrVCk0p4lLvlDXOrlL8gtPH0H5EFs/v/aziTjHoPGKoeL6XEtPYyGXaWfaTV04Y
4/7NUVCkfJp69K83zBvENyhLb/anZRADVVBbkw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 17168)
`pragma protect data_block
VzMLvR4MbbYYdLeSXIzkxDlfjaXcCZqBXTefd+pn3RDlOmFmL3J84AdiQDcvv1Mr8RBLo7cAta3k
gkzziQdmb2aLEaXWNZVKUegmNXmj0SdwDB9v80bhyOesuKHI0M6xTItjuLaw+a1OVRE1+orxMXhF
GTB4HC4ocMR8oBGRITPo4Nz8qflE5JJmXsuLXU24XdZUF5lfIHuruuu9gjVPJqAnGgeAF/lHsLPV
6uf7189nEhNUxDeyPUQ9pQ5PVoG2LdXaiin0zQ1BzEJrf9j3Xp4IaRmYpGcYv06gEuNuDSwLPSgy
tUaD0uown3pmpY8MwcyGmm6Hn6Yx5EFcBYUbrfOIWyYsVdFfz1hWO0AYMTzFvem1w561ZaBvC3JH
du2+cTROMxIH9s423DZo1Mpqcr9gVQDMQLVkZyxPY3zmNr5qu8AWVlwg4bqCBXC6PRRuYLU9sK3F
XdhH1NV+bsprBrYSX3/eEYe2Y5UIB8icwUXTnZZJ3Nwuv9/foBrp74CGGP4hEs+LVoOaEPirGfDZ
7FIwOJ51UoyID1nFvWn5B8FesEPLOPpfB5q5LQHCATNjPfKEsYMC8JRt9KTANX4yWHfavzvsrvtC
vYJA4S95WJvKpA13eXtGcPEpNjWxO2RPhv2ZPyyPbUVDo4eo7/XYGcsP9/66E3EBO+L8dl3AAI3m
dJ4nh5G+pGcSaFvhiSUi+bw61Jyw5xjsNKniarTSF/GqhEtz2wUZkU2C/qwLUuOSZRN5EayFi1rE
v1ecBK3epWATZcJGZQkoWnFPIdsFOWIhoY9qmXAzZDvkg6o0mYEz2ZU8j7XQGZhT+PIKXdmj645y
wrkXjG+EQfQrQX9QCBRoE/X09UqbGLaNVEq8Mnfda6qcbEqUJNtSMEZfQbDN/BqJBMxCMrUvVsji
hT9el/QFUkBKyUGgyGrFa4+32QUMtBZZMDcbjgoo+tjQAXylMObIYcqKW0g+RSOKBjbgY6CX1o5v
6C9wGWGfUumvwfmD4qHMg/yknah2Ko6IvpQBTslCR59WbOIc+t36dt8KLx1Y+XBYlOCznXIJvCt+
54LZckMhHHkZ1LuActBjtMYtcmskIdNbScJKK9mCc45bf+vHHt1S2nCcepxX8R2Bz1PWLcYk2exR
BUGPS43fUzUoNzFpcVP+cMUl7iwHVVAj98O6pivBT2/vgC3MPrMsqCkBe3kXzpZUr9GCb3ZlSmKn
kyg1BVS4sduUroqjxCWrv9AmX3ziGLvqse56F+Bq0N1F7OlZDz0u8v2QnxpLxWDSM1WfQCxpXUId
H7GRVKQiczqgaj4HRhIzBc/MLyWrlvjT5Lp//UPVy9QnSmBAqhLdTUi+pVlliZDLDoTjJNg/iNMH
cLCLmw4Z2GGK6ctlfJOPWBIPqEsFNXRE3/Fz7vVbWuMQM0CmCaYHNeYMFGIxZiK5+WHp/LJFxNZ6
H5ZrcPXKleB7K2OqbU1o4rfXRZi4JiU7DZTGjc/ZHatBP4M2V9F1GlxCX6C2WlzH8THvP4ETbDTi
ub68ZzEfIIOa0+8wgfp5F8MCni2z4mSvSggDdaVpdOlbeJn7UFUQU4hPy9YyF2OGJ7ksLT264zv0
WVV1M+KClMPthnpR9/VAAgRD7vkN27egRLH9s1MHXgZaPViI2dpb896I3MLwmzj4IUAN41KdMCub
eRA/FjDKqFVQUrqXd2y8CZTZpzmM0umB94pBFaIW0nbrgsrIR7fRRusRq/8ZMWSygVUktnduZnN/
k4ReIsVjNpO8YJ2CeyVhz6Tv+SXqQDFztQ/5/UJ5UIHPmYUvCs0reXq8GV/YU8HzI/6Esi8L9pIh
bq9jyvO2I3hMDssL9KToe3A1gy6a0UaWEl0H5q84vDWxiUwdRqyCJytHQMzGDxHttvri3/ol6G3O
Q6w43l79ByB62U/e1fAEjODG8OQhxVuq07ft0SHGHbCN/PW9mjVYalPBRo9lv4yWGnhv3EWrJc/M
2vHBCKCDKlbvebrD/FmF8gWXrzEEXzTsRr8/BSTdFPBvkuyZV5bGFG3s9pdJQVhyeU/oJlnEutcL
g5Msxyt9a3bOut5gvm0w2biQBFU/QwXvoYqAG0CX/2HV4BFoTKXZNir1gLuJiJuxU7FSWjmsCyBq
lr0d7Lh0GTOP+RwVz/stfWAeHy2rUs4CCegXxG04QFad8ZUhipf2ijZhOoZ+2+TCfekAn791cN6e
nLrUcF173fRL+PIA2yQsg8kJ075KhXQsquLfve2yinb0FV5ln8tQ5ZCTFIR3tn+fJBioPUslL044
iP3rkdeM1s4v+x3+xuEWUBVIELN/tmjtMfY+2JoVf1DXVdRwnvW1+utrhyMjJEb9jiYoWdbx+eIq
Yfkq2g7TNYaGY3ykYHAWzazOYSnXgy55yiPMVFsVEVZLIXwCcpHeHGvfvYBqKaGYWbfiG4Q8Dht7
JgTocn6dgxNwbDolDCK0/U07pdOcPUTYtH4EGRI/PRzev7cpP6CXOx1pBRutY9o+uUbpEDzYxhxp
904ATMdSg2alUXSPUjggjJOn5OcdPkRH+LjEpE2ZQaPItXiTumy5X3T3KAQCsun86DI+0QriVFd8
TH8Xk+h9+8cVPzYVR5BL+wfobxrll8b1Sbar87hVqbSJls9PITalhJ8eNys10WL9cxP67MzlnOeu
FlKK5KkDA/SF/JUr34xnAUwC05TFHYWd24/mro3PA7FbfFSIAEE71+sSljow8YEK7niA1mLD3Y/m
q0OGyVkg7xvqhW85saBYhUGkfRmK6kOIKtzd2Keml7PE1fDvHQDVDPCBR1g5MMwMPB/2boy6RX9T
hXnlv+X2romVFTHDV1gMzOS0Upyh5SyK0pJVdvQXQHbMM59agIlkcW/3FUrA2VWGcu05iAXb2RYn
li/8U1yQkNBg3ccD0Om61pjJjOWP5eFf/mAH2GEaxnA30i3xz1JqjZBmBgGTLgIrH/MkogBrJXiM
ly9+g/EAuObRkCHXjK5AaSQX1Wgx60z4/pF3iyc+kJizxEKQe4pDGs+vgRmlD3NpJrXxu1kEJmKP
n5z8SraXmTlYI+JQrdRQFAVbb6vdZgUQO5UycaLJ48rS8KLEVrgiBPTETO2qSwx1wO7k0ALm2Mci
Ec2YGAak09MZHqyZtf/J9apFQPUZZAGiUVL+Kcr4AzSjXwjrXwfs48PzqzYh96PG7JlBUWjK3lYY
nWNYDSTfVGY1ad+sR7oy9e2J0NQrMw7TV4FgZBh3UzoEKOV6NFzbxVZYr5qjoxlNUKw6gYb43wq1
6BiUys1M4+W5ddauMGVtH9YBUvIBN0wwEm7pb+F/WmyJksMoneX0iOF6rrWS8tAjglsFaAusEGOz
NySPIemUeCCWHDcDa3nul4xiN12y3ictE3gztC5SZ2Nizvz2LpU2RzDRHtolgJZu5KgeVVP3MAqP
FN8oPcqIZRieNKrrrm5wVCDDV/6hNm8u/23H+qpmN6oiDEZIOAva/R7e0AnMZuUBgIvBXVeB0mxD
IRJyeBWAx0Uzw4ceaVB9OA4XXiFMudPwdI1HnImhPAF2dPA8sUkpnCILWmn0GTgwD+Br3qmnQxHz
YRviihlicOCjz2CRHG/6H5nwt4VRSSS0KZ8ZqySUPM9OEwDlFaiG/Ohd49T9creFRfcMlMQ1c4tY
dtwifdPi2GCP7xp8jCYl4R4amSwI5e2I8W3L0IgmiUECuvQ993uEoayc446Ku4kxzD0YiDE6XyCy
pjbesbRPv5MFOsjcDOX+M0vPA0IE9PSzLqvlcyAl/XxmbsJ1lizRf1RvsKOxQ9JfdaJwXFLQRF4e
q9WaG3zTmGL3YHwiY8C/icqeI4Jtga1OIsHdX86h0hGqYRM6eh2q0pxtuofJ0jKgzwL1l1ySdch2
YAW3yc+NxGmvdK1Q/35yzlcCrxmPUyHvF4graPs7NICBbFU9my5IkKb5eDT4v0n3p7pdz9PXfQhk
DqpBWG1VZf0ruoep8YVJXDYB+KGUjlTupB/GRWZgteZz+IgxpAYfzGmO9ynoGeP2WmT4rNM2F2CS
hkgzqS1cl1Rm+pHl1dAiOf0u27hgtla9Puk94i53SamY1vnkA7Dxc5Li3wBwk8e0EP8FFk6oaKES
w5vSyuc0EFlQ5IocxqweCRGlqrjHGo10nWWIKVzHAciyrTjap1FBDWPRN6RJaW0Z2MtWXkNQ2/j+
YToffnvbiGk3bFQsbQeOGeOuS/5CvPV6UDgav9PPvgg4J+rZuYP7yTW20cLY2OyDcEccdgnQWPIu
Ksvc02vZ1w2vnG4mCstDX2LOzuGz+teUVKCG+GLs+5Rmjyi3yxC7Ts9brB4HepMJ5EwW185qC72t
GyQnaonYM1fIIg6+k87aCzBp/IUbsQol1eVV64UJI6qsrRi3uGpkV3d3f5VSML6Oksvf5hDwMLgW
nX4Yink5c73odePpjs4i8QqEmHFBNmtb7x7QQOMuYPvzbqYVetdAstZsMLFpIhcGoYS6nj11r3FM
PF5vJgsP8cIWkrGGqW8KLH8aUwsa5bCggy5QGMzPWbi1VcSB39lzfjt2N4JwXpHVjRHAw0VBREBb
9HkvJ1iYSADrA9SPwJHzEkL1BCxoSFC80YWWvpg4iqwVPMiNrgoR2C/UIZBV0L9rvpm9hK3Nvf1y
G+jbu5jBcrcMU237ArvBTcIsnSocZfWunp5YHSKtEHczcgZ3wKZ4Huj1HqlgxxOKidICYWB/J7C7
uTj2gqelP22RuC6nbyXpfF89Zdp2mtzJJvvEfKRbSXjjbbP9IFFQg76XLEbQThRI3YQBbZpsqoO7
gk5yDMqnQipGcieGERn4+SUpCU5yNDJv8wF+S27iQHyKtW4o4efMEWMw2jiMihKsvd1/+6lAsh03
7Mxr8SuklLfpU6BpfYEI6MxG99U+r6Uk3xLQo6aiW1/bEalA8C8tthTzPq7IHvg4BKw0ghuTvjdN
OU5ANyMhntRxr4wcCsS5bl72MiDlQVIjaVUbVwDlRTDqUkNrvcL62RL0UJTP8JMiii9uNSmohptf
Ftd+c86+LSGofSoeEUCs/eTUGoAw7EG0bQsYsuuzDL/dwJGu0qSoNUIU1S6QA+YUujicrGQy4c98
F4+xgRMI22bvcoOi0PU9CpJSUGspv1zXWL9BOw468+CoasOpqkkfFiz2llhj807DNMl3LgBa7CYz
SVR/1E+MASd3rFT/7iPZquxEYb062E6wgisW0i9NRbclsFWtXogsIOsDW6XRcNNRyB80HEL9t24V
QQAS9RrY+1AZfCmDrPWGOJ7GB5rPYvP+2lYzd0c3cSX/6rUU7r9m6uLfsHTwfGIthP0JAqHItBSr
HsyjTYZ+GdGiu62VxmDEXY/QlxiXbH6IuXJjebxDYFvhmWSY4G5RkeY/Pgmc7HK98d7rwaB2ACye
qhidMox3T9wKuBMmua/SKxq3jyBiBPV1xBYXoagUGJc9GKuYgCqF8P0GjN4bFXh9EE74m5FPbsVz
nVC0GFDK2p/J175WoRN26jrIhLINnlSkqqGrq4F3zmffS8URVCZu2OUq3RxdXmnnajKZMIX3Br3V
RQzVB7DdB6iRuT7YC2nfxiYJsNkBpQeWW/jTcbv7xOKu1v7RwqHCvkyuuQPUkDcZ9xNaVcP8NKzI
x2zs2KILbNJ3gRkj77v6K0Zj5dg/l+zXzdNzlAoKG1aUySR4lfiB+q2z4K/6Wl7myhntpfQCwu/8
WS7hBVI08uqPEpyXJ8kfaGbQtCB1EZNBtbWAzdyDIwBnAFkrVS+IWS+ZvX0yw3X8921CIBuws1dV
iqCtPviJbgzC1n/j2W92MM8wPtcckDTUbHTzBi1Y4Q6REXoEYwE06ziCTj2ZfCp70SSiTCjFJWod
sAUwpeNqTdNpN3rzcA+/hwbScs8pKBSKf27y7tibkmIKDhZS/y+69NtlxPC8uTgzdFFue/I0NYT7
CLn+jd073m1tzVAJ+HpTeo4NXToL1b3GgCKdC9T27BpSifGdrOHO6V1oNdkdqucrMdjCHDAFvI4P
gPQnGpOMQa+/QeFlFF2XqM7QP9c1d0HivYxrKYr+sgJIxX6Fsimmv84nr9Ev2PfiT/sUJa6GI1dD
f/KJPbjJaFjRQKkY9X2FPSroV2jFtTFZyh4QbFoObn+QR7Tn5998/hfnZarUyn2vu8JCZcb8H4SI
8WS0xGNA016bdDRamK8zBVAbzo9luOyw0djSfddy5NxnMLnaNGAbt4EyG29RggpUDwrtzUw8yZUP
O8ebujrEQIWHMYwvZ4cO4QjNsTT0MN0Az25Jw6awrpDJrJA4ghD2JcuwO/i8AvhEX8BM2Ke5ZGeJ
JcnPWOmPMCXMNm4iQycUv8Y+DgIARauWktJYJAHsXV6dCzJAEcaiwyKbJHns9Xxa+FiefU3UYzv2
YRd38xNzilpfzNBMmZzUqf1tUBnaS6Cb29ckrKAnMg7+HQFPZHILZ9L82uAMa7vjqvZqznKnd6Za
LuQn/sgTGK2U4X4OZQDvPsp/rRyuEDyRoEFobitq5m/5b4kzIaWQg/guJiKa5IZj1D8RDGjiCjNV
vfxwjIwEz1w1EwEGhzJUJEviBSZbt1PdRjKviGi5ckJKqC1CHYR8m4jOUfEwmrtNVInZmSjrv6OB
k6yoFkPGcEiXdBPNa+Ds/svzFzqmq0F4hh1AXQxjk/plwokHW1JFd86he75cZJ+HKlOPcKppHxv8
1xZHuBK0OO5qu+xnKh7+OIeXPnfO3fM2kv82h3UjyyNaLYRgW/TkiygaAcdY0ywuFCBpxMHpd4/r
kb6BVfX54aL8ZQyacm5ZBzAYeuQDVWa3tWxHkPkvg0j6pBqYOQypvem+3T5LY+P7A7SdOWZun8g3
2ZpynbH3v/SPZRzOLwt1+N6zyfSYglCe01ngolSVSFUFxzB2XvaJypOmrDi0X1dmiTXkOqPuMZzh
kMGiVp2JK4aqRCeCan5HibX4YC4Y5q1isyQ4u2+eAbOEaYnpTjvAz56IlLa7Cooel/YLqSqtTEvT
V227+mMXfWNYD8K2hoT5NhyNiduf7ER50JDBfUgc197WPqEglzkM19lft+WDa3YuuPRLrvJHr5YV
ecGmBJb4AGez4ex38/iJjlmE7lsKKCzsUIVjzD9uIQEZ7SAnL2K6I2oAwGavvHEFKuVeYVf+7xBB
IBxC3TjaHHUb0zQvBGl++RgVbJcYPmlkMet3E7gDl7MA1dW35avpWlXQCTzHy37gbC9SZ/zlDVCC
bK90W6Pq53hNhZ7TvjeV8ltj1UYbdiO7YtNwgoxgCmsKHM+31N4KeTMoHSmd4UNL2ncFvWgQCIyV
W1DEHiF2vu0odv+mxbAaOq96tR1maM12h3PrEi7n79kiIGPJ9Pwn9hShHRV2uUWGDQF7WiZ0xhyW
BvAvCGuh4DTzz9YDnx84X0dfCfAncMBpr/CM6ieakcXi4PC/+A42GRihm/l4Ni/mHIVHsk0qyNyZ
+54dyA7zwwvWlZxt0QJpIB1+6sXXyQf67RrFr2Pncvh0hQ5mBFn9+bceFWFOHU8qybEVu4DXdiQ9
U2ERNIW73BcarOhSFW9ExADE9YncKvKDoyoq35w8w7LegAZg7MICVa5MXtxj+JNjH7P8WiW3yE3t
abqr5MIZQr2WQSB0BoX3D31tJaYBZL9WlJhmflYS3VtV4Eh48UzBtneqraLA5C7hFEaMEmOMi/v7
6M9JntYfD1pCRDLlb8nuZYkyWwtgI5TrR/ADApDJR+c6hni2L7vCovu55e92J7V0Qf/JMyRxDni8
lkRJIqUb0064dLXKbLWeYm3QMAS6uFpCSpUaSGvLmpxXtvVkxug9WXkQYdiDJLK6+MCHGGeBBJaD
pJg7BExXVqDE81KBO5fkiguwctgHDlOQaSBxYzDTcT6qy8itjwqXH8TbaOc1RDsGUeWDuyjZFL5g
XVQ7+9hvpaEv0XjiUXHKnbS+FqjhIDfbIl7FW1BwPX41rbY+Z3/+K+ggZ631ZJM5Kap8XWdVB6IV
uJZaNVY6fvyVykMHrS9aYbc4Dnpw7RkAAfeUJ9R3Y5rLXhY54I42O3SKKiPwnIt3Y+g2hvmIBQAj
GQKw0cqGlxEo1s8XSRCzZuNdFTAX0Do2R0FNDuJtZ3Mq21Z+aSxNAgZq/nb/uHwCT91aAwMbnWt1
VfSOPGLNMACdxUxv2lrYvrtb5pkavTwajR/psXvtmMAuwPcHTU5/AGAqJZF5bUvT1ahm8y5JOR6O
DhCc3hJwQ+KotfSCLuYgKFrczOe6Sci9N09leoqxk2KCU+CiX2gJYEmrl7XOYl9g7x88nQSrOcQq
4hwWO3v7gRIRBzYnKTGPpl3oIhxVDg7wyVu11zalz+NTit8Q1TZ5NSQDJmTMjtLwkfihPYstuAdB
IEhJvDggT/l86Vx+GUMeaTmrtmuU0ilPUcyLKEOQi6+6ZP0O36fDfAYLYXQn3ejY6rWmOMIRf7pO
f3m63DO/kmoI9MFyK+wgF4hnM7b9RhSHwxEPQ73ObcdrrlMFiurDVOEOR4WWJfW0Nk0QohyI2qPo
hk3itsMYvAHPmXUE3aXucIc3l23SAsQrl5O3y9QuO9of7H3WlSHGIPwoh9HUpMd8qHro3GInqtQX
NhjTH4yPVWngN23K6rEidYUoKXKk8yHfK6AaGwTruBodpeiG6mdaq2GIJfEbWe68ZiGSujs9qKTW
5uLh5X+pfQh63qisnGb1GI6On9qYVuvJlvYooK9auM96Pl0FQIRF6UnEEkNU8BGRsnuWe3q6lcsc
vefYPeZjAXjZzA0pEzPMZAW2Cu+KxOBqDyRdW5GTQs7o8i2ztGgG/Zq3hmGgnCmEA07okG05YGCL
L5HirIhRHc2+M9E1Dm77l2J1cSgw6TNxCZ0KncG9NS6KLi6ETf5TkWvFMRNj33iXUASsrk5UL/Ky
0+IqiSrwn5ATjmDXENXZCkWrg1e62/F1p2IfICFMmCQE3fME1W8eLyMUj3bhww50P1GPdFfav74X
mdUbS5svi6YWiP411ozQoRu5BTuBcBzm/i9zbI4Hb7v8qYKf7yaL2F7zjGXWXmfXzMjhH1NcCcCs
8znOqSbRuDxwRQ6sTUiH2CXDO82oqmkFDZmZw4WLWHFWGN8JeBSGjUXi4jsOwul+6WoZD34I8cjZ
Dpr+/5bWHJYt8JX0lWDSMj9n9Rgb1GliVYrtV0ZvctVQuUed4GPGDBqVWOv0xb1S1M1mbPxkwDTL
Z8hkLbsRCeP3RCtH8/NxX3lQb5TnVF6iC5MDa3SVdhvKA8IXdgMyYMzoF+YdoGVJv5JU/FN3+tym
7Zozhk4gi66g9HXi3qFw4oXFSBWlUvEDKtTpa6a5sGqxdPcEp9mmlzySZ4X6YeVTK93hTZuI3bSQ
QN+TcYvL4+B07S5p65GK75Dap/p2f9KBo6ZBGeG5vcCikwSqEKQ/ZxjRSKFby6mFnUiRtYPMl2+r
4X1unX4yc5f+WAdujQK1ApBh4q4ofaqTHATTWBylqbTXV7azdyuYGaQ6hUf/BeSno7euUvcMwWqa
1k/glH6luCZJ+h6xQDrIBz4Vg1pDsRC02sKbC3853u2//Lfg7gY04Pt8RSa7dav/Bk+S4211tolE
o9DIlMunqTFsPTs7OHt5czphK+zBV1oH1AsK9Seh4gGDCnmJWhq05v/Wi6LQGWW4FOzgfDk7MicY
qjJvJsQMk2NpZAv2FPJb6X07h5tosWSBrdIgDmVoUdIQfXHVXujzcTvSee6u4lKFm1mh2cvVlcoq
bn6hsbQj5OABlG/SM2dKg2exDke95cOxVF0lXpVRF7AXKpMs33JCWSZBg7MFZ6GDdrDiZLP45UFN
/PnuzByxL+2sUCPCxP89dDfn/9SLVD4nXVF2mMJC/1Ots2NnFTUL3BFBFkE1OqgJ1eSfKZ+k5zbD
q7jKkTKo8b1e3yEUkp4sAlvmK+lTpnmEQG6WeX/o86CqpkBSpNjWP7b4BUgLPGjDITyVv7dXmgc5
wF7eGQvqA9ibF21OaRTSZGqi2e99V2AwVKUc0cEMOoTb+VHqcWbNkP9965MYkcqpDboxbRIeEI4t
xh7tlAnkA1RFKgEgLt7t6HfqE5wukHh9ggnkXcLNjdSBsaRQLggzayKBqNrgNsjUK2zUAgdSvUYX
nrQ8yfGqLwlPWdvG16Y6gCm6YvYuz9hjvVJ+orTulgDanDvbnug9YUaeJbbedBdaxKsuWq6HU4t8
hL/96n8hJenH+VWzR4FS1SNJxwLI710O/iTCzLtZLAkm/sohOiJTmD5HbpCPHcm+xC44ovw3vE7X
okwyIqcCbE2PB1N1ErRecDt5Emyr2+81QLXJpk6nZXvSApPgcqQ/AyGTDBmrINeoQWrstqMX4FCx
c2uMxOsr0U8C6f8NE+ogONjwcAW/bbzyt4yUITG/sK7XyyGcmdSXKSVNB2j4GPl/QktdlipH0oAi
flFF/j1sN3iJyp5XQqM4wT2rwjgRIjnb4OWv4nPWEPgMhvz98RJvBmVsYwCGBWxNIjMWe0KdodPm
3uKE+a+AwKPDwTBVq7XAN8Fi6/2wRaGyZxrKohrkW375C0PGbH83ZPluyZUhgVmGqbdinIDMeGI/
r9N9R6V9ccFw1fTBjQcjKjEfdPV5ol92U231jAE30ERbnOjxlRrdpO0vj/ga71/SOM0YQC3avAC4
fSZzGSEQ3ZY4M0TgZHhFIE4tPg7QdXXmTCAHxkcou5avdHNRs/C/Ks3HIg6LP/M9K9AY0vxkNoj8
VRVKXFktkT32M4E+zCIC+VneW/1laOzNjvQcVqV/46pZWrT40b/G9tFpAZaYxwXwIAmtZOg+PFaX
2NbtHgKHWBGvK91txwJ0ng5n/7FjznBTF1akxGboQxDxAUgGa4HVKd5cSqI7UutP8yc2wruYhMOK
U6WMMyznZ00q+qCIFQD+PZDjsJi86OmfPeP9ZQhJyj9uhJJ47Sb519QX/uXPqIoMN58VFGwo14Q1
3CeMFJIFgNOaBFvNXF7hEIeUXi7DU3/7e4G3dMbEGoeGfpluszKJEaeMROnfkbjUevDaRcAbHPeV
Q1TcTsb7f5nhdeBGW1MesCnkTCEvQ82GeIYRE/bDlW/0HxTX+Egg+bFTOlw3PP7R4GXEnMIZeFyK
GjD9LyeiFUG8dddapBir1X75RvzzBAgRHpmYzi2dHzMLwyLh4Bzida/81ogl/8pAF6d1GK4mhny2
V+/zrldidQktbc8XzH7YzOvtHK7YQOZVIr/YlWsAVC7I7Mdcb55kr3rNeDQAredo1CjALYxCXGW1
17fZDmHUsDaNqeszSi/Xr0m3kzK+q4zsW79WJrzz5WlnAcholElvIKbBaqhXxZlHN5gXTueIBtKL
HMKr0yQkmmiB8iL/3LV5f93TvPQWaDa0s0W6wXKYWL7jC5WlHNCE/08fFdZXydAAtL+CYQ9BTN6q
n7BVCr+31ukSnn94DrCxTAzWJMCbbUZbI1o/XnaoMKQqvq/rDOq5VaEz+bq/Fi1byFsCPNg32Hx7
wPb3AGEDEMV9PSH9TSYuQ55+n6BlWGs7I9uNpv86mNGLAMQczr0K7fvoJvDWm5vbQL+G1bVtaOHo
HqXx5G6SRkyiPu0KTW+i15Psx1m7xQlZQT8eBGG5Hkby9urUfzVADRLgFR0KrMfmaceiDzPDvzHo
lP8WzBnDsSQWv03GmFPAtG42TnAfqzYVw/bLYybjX63meEjuNb7/KfYhmqyV7s7gP+4TAeB8zMOj
VbjvmHthM2wCvnMG7cKpuJ3M1dHwuf3p8zl4pOZ2s6RV+/4yWnKGOyaGbBPM4OClMhpMoZvv+9FZ
eeBcwnxnpMOTB123IvR3HBkVXIGqmbW5pf+Cd+j6i5CKIHctIXqF2QN3RmN/kTn++92pecXvml8w
BZ1PX2OFAELEylZZlf6MRhdmj/Gb+9o+8UU+ejGh11VCUyX9uJiAH9AZNVTE+QuWbLoQRBu+iJpe
m3XmIhDXLMKzmrYQeIQ973dsA8QVN0YjaOeLS9/54+pkDTnb7Hq4S0lfvrL6oEEYiYxKD+KLawYy
heabqaGOOrjIwe9zausw4zV8loIa8c2CnNWWATJgnVHuan+5Jyg60eV91P7NWzyBS7WhRLDJqa5h
gk6t4n5is8MM+SeO+cxzv5nn64ckI2jNRPBRxpfLPffGexG96TP/SyJjjxDF9HNFvPQ3IZvIbcfW
M1N8UXq+Y/FAGRo9MGzzi5YTTJshj8w6uz+f74xIe2kC0HwIM5l4cWEsQEdhvssbaK8V03IOCPnu
UDxX8WJa32SGfX5gvtW3js/YNGvOD4AxcEX+C09UB196le0UIUU28u8H9Sz91RuyE4T7PEnAImQ9
AtWpfkKzTWGldyxMA2lbYGpWc2DHDFMQ2BzV2cemYi0YZR49EsSpd7lg69J1PSPofS29HvleM9V6
dI4agY/2wgP1B7qiJNJxJW9YCmmBbpMhvEheAggKaiVjQnuw81pNxvtlpvx+KTK8gUC0si3wvj7A
dqASvDYte5V7eBrdXSHfBHGjroe1qd9q2+dVw8ZuTqw5cNF4cTo1cy8XbapPXD0GbHeaSCZNDxLV
olOAzkSbWPDQPqivORRLCDUa1120y5doziiS8A5/t2kxZ+/nX0jIhb/OYPQwo0RGFLhgHlyX6jNq
HSeBGrGsIxJTb+rIsFO1YTKQJML+9G7P0Ec+4XU1i6XQCDrxub256ppDSa/ZonaB5J2r65ti0LfC
A7qFQyUf5yyO1HPMH2WUSQA66NyU9FZ8KK9ZHHj3L4/Gj904qnw4Oq0qSXfIk53olncJyDagULvq
CUYIEVss7vcCTBul9DnY3Fz66ImzmWA8DMS3e1+hAVesv99UpzywOxO8ZjSTDTWjYl2ctc7ylx8f
q3Vrtp3JpCOCCqoWBK2ftvL4OCl/TRSKZwf01Q7zVkAIuqHK7ZilMq8vhVWMoT4/PkWNN1Gs3/Oc
21h31chKe3PTIIlSfsJGiqIhrDFS505lFiMGGMPKJEsr6GPtHiezzaMeypA1g8G648ILqDv6x7cc
CRpLPh4S67Xjhap+RmjSdaik7NehG2gKE7iJgdrr3kAvoZYwvUhB0RMxUSYYE+pC+MAIIJA39dKn
ClMvUdXT3eszczh8BDDdTpp9FDAoqki7ojYUoNhdlW70CXiCOeqrFgFO6WhqCHiNhDfY0kGhBdWF
+Ylydsh2rWllknQ5pSBQ+gdFeasM9cPR/iFeDnPEH1jh4ez7oG3+cHlrBxYgtONePWd7j2VT1K9g
bp3FRN6lMUBbz9U80jmVqCHSBBa1zlG4taEwvgZIB4mjrSS9hy/DRqwQZXgCT6H1TsHjIPptJ50/
m7iQ0mHB73TXaUUZNEkNTb/aDKmo67Bp8LPV3yJ7L6LeMOrp0CbH8CzS5+GTpguXGxERnf5JjZwZ
ztumpkqEuxXvD6aQb8/JPumptpWI5KdAs0zknQv2QYsWFQzsZLTL8dTIoDV3xlOVZxzzXRt0F5/H
uaBt27KE1bkFvgctW42Pm89oX6mDlwX6NVnIOOfAiEBoV+gNXUxtZxFv6wHnt0jMgz0SBv2oqXaC
PGK//yVkc3QgoT4mipqOieUhipJKtEd+iz5mIuK2ZUbow42hvu8EZ9mpA8BtZL8xASh84iQJZWpB
C+CIe2HOtLjn7duCeLydOjtSs9OvOc31kDOji2E4NYGS8a6ioFcr4uZhp3IB5zHLESdjC/sv/c5y
H4wT6T3/6lWOnS8ojoZr9TqJaXSH9GK63NugMze6i+wU78xOW54RxrS/a1axNcqXCtlzjs7ufl7p
rVMSTg3toFyMV7SmSQi0jnQjDHbGTu2C5n2uNy66AiPsrkpxLuLYn8d2ZwTSSMb1moRP0YHQPngh
WVvTJNoOrYI6Dkh9DdQEjWaRbHJk6hutZjT4J1sKqNBrmOLbMeo1dwGW69kfYdP8/04xma2pTNXL
VjMfPxDTkkd04V8fccXCF9AHUlv/MJqSXHR7LxFmlG3uXsqABlUSS6lmooW2vpfzalKz2k6hmU3o
N4bSFeApSN4beuMwfAbho9smaW1o8HlKRjOBmibOv6LHnqSIxN0TSHDgTtRgEMEe9COJPF9b5Whf
3sTz3PVqcARA5O2NQNZRrN3mvjVRrb+BW9kw7MLXK0hUzv3wOlBQqIuDHgLI8OaK55Bcn6Enk2pA
OMonggmNB+lrFH/u59B5Ens09DPN4u/FetxfCVX2RBoHUmC5DIAndfudPYJdkAN93raDjMqMNF8R
zyekdhiWprDYthuNEtwRTw/xUhUZ6h+fGHPoUnZ01U5xo4Ep+o3p9JluhUqAKIBxPPlVeP+pou4J
sNT4+GFFkk40u2+w/rtc+r4Jni8bNUAzcNWngPC+iGuZjTY4pMG+7bSSARfVLEvzSXuo9CE0sgg1
MBbwoesxzPPNd0X13c2ipejpCgJXWAPuSctqL85e1/CrWj40Nd863hpvTxEwH3OBmO7VFl0WspvB
sMjJkED5NmVYGtQkVv9mWydg++GViCMJyYds7670KvaJoeFir/wj2bfjk6VQdFjAQ9hzMzeVmlY9
LGMAs507i7otbw/IkwwySL+wIwXVPn4lZGSQRhANgaaRQvW8ITdp2lotAiMAlpu/7GIJfn4yYYWZ
IT3HRPClb1avKArCpt+JdrF0lS5gYHrmT5ODQXQw32W4E/u99ZkMrXnHweWzkuTWfpuTc2PCabpw
rpsLUfrKSOLLzVv3FAbyg3ta2vEymA5B2377PF32sZ6mTUoN1uwrUhlwF1u8DmN48B715oEp2upD
6ASufkwHfL97gSzRePgor8qxQqfc7sqyI/fqkF+K0JXczZ/QvZLm5sWx2JzyzbBBfgPX9igTb1lO
CzA3qvCejQQSOtmaomk7Md5ibuHHchasE7aKqCdHout5gN6K59CxAtDbaff6znIygO3HoftQeEpv
K9znTopMBATpVY1TESUOxlt83gNrPNvEkGMKgrXuqGdhHyaGtfFn4iq11r2wMqGs2bYhKD2Ei4i6
Fvzh1st++5+iCZJercSZ6066JuglSgjINEYW+RiUboRqedbF2uDUg9NIduo6MuUjQdw6L8WWX1kP
jgQ8Yaw8Ks4GISWDVge7sMT+kRndPNBpvqSx5w8n4hBg10FtKuPHdOfXWQJGUKoiRiL7AvjZywkk
SjMgIYbDIuruWnAeziTErJOJ0peC8+4P/SC/JoE96XW0cr+eUhIISexS4UtmTjfgJLFg3c+1DCWa
n4GdIpfQjSeucVkrr2qJv7+sFOA3wJtNbbzLfRalNvyG+hCOlUo9jJYjxGGuc0oq0WQWidSg37eL
tJQR+YNvYm10Np1FRYWaWI7XPmMcBsxJ6pSgSQjcad45/FTFobE0iulXPEyuGtEKPtHR8vejFJyA
84GRizK/E4k/A2FkJ02Y97OYVOgPIie8vkpqHgIXLX6K+zsVMV1m3XT0V3xXbhsuhtEAiUQfjLdU
N9+q5BTfcorjAqmn+udbuj83Vh+Xqs+VqeRCDigNrjIh9yk9OuVYZDtHKg6HKOyd3QB/NlyQYIxY
LfMogsWmMkjm74Y7nJNLQ7JJLQKjqV9PI2dwyjxgYmAmD4SsFYQY7sNNXB5IQjFxLvO/nW1Az06O
tYqcE+rjY3u1n6ODdqEX3usrxF0302UeVmz/rI+M9pBlD+5d6HHB+HJZ1tkAL6C4+80X8TdyydDg
bQsBeQGq9NUQj5AMiucvHVjSfofrbOidX1sTHHa5qdtM7weo5u6HvPEbIof+lWj5Mocs8e58OkwV
Q/5Vr+jYWIRhgKLgcaStkp0+oOOK/CT+uLuf5W77wQZukmMBKhVrr8xtKui16EmBI0gKzvs6CME6
MGrHr7BCSPjtqemSy6I/aEwcz1bg7WKhFWhUZKjzxLPBIay+07Y6wMf99TmTrHDjEe4q1Cl7B4we
R8sLFZuuNwJiOHK8xQe9cP0E+NVwsCU1YOP5uuqI8lcV2pGxoVrFIDEqLtK2Z2id3uIJvSnXjvlS
pTL2JgIKSCTEsYDlJRWJX4MqV8yiKzjYCTocaNSejMzb1JqE3xqf9L4MU2tLul02+228y/amwrTa
E2XngeWLTGpwHoTl1uz1fQ7zIElmCazfmJxELPrrzwCcUKmpKamHpPWkqsCyNAS5XOlNuV1uXylS
Eaamx54nyMU+blWQqDRrMNtqHah0XaQ1/50qBq/airf+c81hezKIEVEo0kXK6u2uDycbu2gtef/5
/cAj3hswqENI4QOWS2ILXVPb4Pmlhlmcnf9ZKcnEAYlPSLrBehcshPhmzC9Kv7kTeka1mSEQH0U0
fsmfaid7C2BsKbr/vwY5fIntPep/riDcy4T17SptP/a0fqrMK67RUpX3JO7URHM2ZaSpu9YN9aGt
uIl+HAYbVD1ed0KClVO8F2egZfkaBd2v4BeDq0/GqQsW+4zJz4uKn9Ly2lIUG1+FeXyO30k5oxTj
l31AAb7PnkSgolbvpEMj7I6WZUgUlKOGYbvsD8kVZKSXaa+UCO53WarOnRbS8N0KRj1+rzVt+GhY
T3/DSAJxaCeUEMC+3ObY+kqAK03XJ28CLHI/pvAX3izW8OEhhFSlh1NJbm95iknW9ljFEtZeutUd
gpplZP5Ivd1bG9MlnZgdmlt/aRqWkZmcyvg7R8PdQRrJPjPubhvVS+DYSzKgyv0XJ+No/hD8w8ry
xn4zUfS0MQFrsL9FUOUIFOp0RFkoHQYBLCp7A7Z5nMwBMrOmfuDLdh7CZUihFAafH3V1xgiakTTg
/RFrBM4OSiQew0nu6yEX6ki5ztanIw2wKOXiqI8fERF7B96k3RNeIPzk4fteWcWYiolhj2Xg6V6e
rv3EyfWE33H9dLxREh+x8xCEinZolMhXRh9JJJ9Jdl6nnfQYOSw+h72Lk/YxTp95TERKOMa4Xulj
QmNPE0DF3bgCcPFgh8m4MbW+W70ivwEMZgbFnXAjRYAEznP1GYoAiW6NP355T19ZXR6dHa+PSu2X
RbnIbMa5BahCMbIzO+qy/A4UClL4Y07wyN0nEvu5+f4HrVoNUqKIE0Si5MMkSEqfXj7U/1AFm+FG
qrLbm2kHdYIt9pZjq772yF/Mlgx7Oe4IEL2pq06hViXXOhewwwwkKAaMueplTZyc7matf3YmGsbY
8pfV3ys9aP0TssJ9SACxLrTZJAlhMg3EX/1J+uuLPTH6y0Tls9E07zV3LfUvCG9mFWeuqYyKwWxF
QrOZpBMc+FiplRrPyG6Y6Mfv8M07QptrHnovb8Kq/GgLpM2mxlxr1Wd4lrBTB3GxSnijTdr9srOJ
A4tevHddTxorEsd2ia5w6SxziL9s6SM5Wb5GI8aWPpv/rSZqSsYXO9kpgzj042vL1HEuf7BDKHtD
WVj5NNIIF0vqisgiHEWcb2Uw0ONRQTQWOyHNWn0hOxOBt2XSLFMVp76B/CgbPBdVtJG4rpyLRrYS
Ni1YAh2Y0+0SwR9modcm6hZ/kT9G7pAJuj45iHiAySDZ2pFA/jw0owhMaWiiBiBlC75CIHUBbl5M
VLTWVp/UNbiGItFBeEzi4jaa7OnReMSW8hia0bHu+DA8DAfuL9N/+iCbDRFI2L8V9+2KE4CQPgtT
EAih7VpGXe6fdDkIFSOK9pZh64QkDd0HeQJK4rFs8Wp/ZfQ/v1f/+TlCHDxae3LLFSh9twcGeF4T
rlrMHJEM3rpV9koGB2AAd0AdcXNFheTN6ddYGPW35kFFclrD4i3oV4DO2XlL5nMNpQsnDkV3XfDf
//+9xw4mctbIxhguGc4a5jNkELjb/lhbAGPZWRbEoh0sxPSBlqh5i25+K7DuNLtwLdRa/kxYAkTI
l/ntacoOCQ3J+neuyoVrtgURxY2SvscbXKMPNrFQE6f9UMgr3QTbzz0UIXut6B1dfOcYOEt2G3Ur
ez7tOxtqce29NM9qJARQp50dhAB5909FOrh2qUaT/xMqWixKdAnOB012Uzlp+qRQ1rVgrNtuGQVN
h+bHfx7jeoG9RGhloH0sBW7K6oz2JB8a8oCurg7TL/aG4kBDKWTarAq2qtky2wNJ7EP6RczRjc9a
3CfhTIbd+zHfVuL+Qbt2s+/UYGM1a7obdKvG9nwF3EZMvOY/xbrGH69KwGZBhxgiHsmAb51VgjeG
PqKQmgABdvlUbtEnFLNcfPBI28oXKC8pFBXAflHoauG3SBOJ/3KXi1tj0PXvnMoKQbbddWfq0Iuk
kiVegCFsOHY1H6HzKNMuzA8lbTtn2/DM/UqKYVCaOyNq9iO+l5Oo2dd8Q2cAYIKbH1NBysb/F1nK
jFHWO9o3TettrG/72yaNMv7+LGmqq1J5rB1imUDl093QAW5Vncmesd3fkPGhgGQcgorR47E9Xkbw
KYuGHxyIGA5S5lL9bVTDlGiZ2L1GEvn77Sq30n4e/uxGuLb1lfbbLxpnYf5ktXzq2rBtIJ3bbvG0
02LwwYYt2Ww2uK5IeAYfBRPZyJgXqGR3WuJIvoRcp1oqC6IpeDUW9b1SqmCJ+zcSoNFw36mne/Nj
TlOo9pWPJ2px3t4hm8G6uZhibjwz0JfRUZ4EgmngpILujpcEPA5Z7Mw+vt4ZE5/eyS4RcAAI01MN
un2FS/WQLD37jjj59DglXICCH14GsfKzYsQjNamfPWywLDbkKsXS3/ePn/XEuBoH3U/CC4TP2M1U
rvUoF+czFzrbXIkkLjAMcYKeLT8h6zsA/ydDstlxJpt9Ho8vDXfY4Zwvd73aeMA5BZ7dFbWk9NSB
GDf31GTaSi/pDeq53+XLr5sNRuYAmZSpPGnHvHvsTZ/2feyYHt/uK61r2lErOM6kVo0bfxzxFTWE
x0t9KBK42xxt0GA2BnU+TZGrjOuVWJNHG79v3pjAaULddxACQ4KBKoRQVxkfROEUzigM0CDlG0yS
x4xIBXVbhsV+rUHyMjtPhxBo9E1bmHRJl+4xk9fNMtfMZGqBkBtQPHdg5r79CCyUZBjJyV/NBe7t
6GRNa1ZPC8ZdSZaXK50CROFSSgZF51fnsmnWKNrwFc7ddETEgiU8Twr1guB7nTsandi1H3owEPqD
F++edLmZb3GB4QNDBmbeLhI8MevxgLUXEt0/UoTSk6kpQ9JEreokt8eBoGDAhP8Q8wjpogT3Sek4
+XU7xXVJT4bj9ABZWLl5hElZW6ShK3jqrnZcrSDeGUhfFFiz1iEwgufr+/MOxqlZOhBqCGnKtkUG
9CyM0T2zqOeDw0RRMudX55zLCpiphBfPUais0OaMQsDrcOUb3YdF1+1qNml3pBmUNg2If+4vb+kK
jUToJCRcqVmYIV2Dn5bsfAmv9WWRa6SpBhla/4svnkAf75rAhy5JwGswEh2TKvCcDDcUYhfReNPy
6ComwHnod1Yoobl+0DYLjUUaKScy5vIXX4dYKCbcSvk9DuW4/zUNmCzdOjT8OqsCM04tzeiZWEFG
Gea0pU2Ok/31iQdhOu5Kn6rpitwCrBTR19U0A7Jej3fffDVfphR199TTNeX8io6Gq0gguUEMNpIz
ikK7xcxhmnYj6+GrDzuyMkKxoPvzU9z1ghiuKSIduqyyVFOxmcHxrctT7RddWfnqT/WlVUGJk9i9
gihvuG+63fcFaqfdz1yEiwTvUxWbOTqmr9ghRUtjLIoj9Y4yOI6EH1CwjGh7BeHlbjos96PvKkUH
JXUFilN26yZkXGl4/4/3DgdPmZvLJm+wfE1dN/KrRUJRxKN/EJ6WUF8dbvaP5avPHooaQheG3S3Z
zZC6Psw0nEYv2U+EbI7mnBnxTZ/sFw8AiTMy9B6cLZ+gZAqMt8BpdtyvupBv/NOLK36/Cr/Mj6i9
5p7f9+OC8rQLxVgaQWOPgoFStBFMN4BboBdIX0zvHMrI+MaPygKSggHB/JWk46mjRZ7fU/wQxn9a
cS9ENSmj3EDplbR5QaOtYspFlKVC7VaCuam7/PBS7xPQ9i+Ym8iXiGQeChqioJPATF7ECLdEBeQD
wVmo5wMA6vx6sz1iSkCp1y9bfOrWHHIwbddzxUclL7RpBiiw2Z6w3kFCQWEP/iDYx8oTD674pFx9
pLC+KwTErpUVm/vQfeIOes7m2uIoyzk9v4o+exPaKaVzPQ/YdWNKiu20jGf08mcpTO4yy/LytP9S
tp5pAiuJO8Fms8rPYX4wrdFDKwFzvM7HFEUGvi12ahJhTpfepxZ/hQz7pdjL4mz4bNmJTTpUICzV
S0gnQ5JOXMJFBzrlBfy6TeBjvZCCYA3nLVo+f9GVuuww4IvFXl1EmojdAeclthBpQL/vuHXI3DGG
o6f54rVcAjr1myTLTJIj/JmQSLYvr/KDqMJwLBlJ30Oa8U6r7Qn2UageCwiAHHjkT3jHq8szAF2c
QkacjKx9l4y1Rbt6+y5FUsY1SiWI2pwlSejPLky09pWWRS2mOqej5pQVR3TPTrLn2sopsyOnAHt3
HOwVNORHYch4zXD8Ya5uiZUSIzdV9Nej9pDS4GB+D+hqa1StH0KZdGteNCZeuarYsP6Ay02rIl6E
+pBr4yLnMpkbbWaw6OQKuiuylkPUrX2fhZpvqSl6Tk5p2efnv+KLE3trQlWabDeL9sZauKPBHG/h
rOrMqIAsGBaCR02sFyUGPsR4NoM4bBLlQxJbg7zDTi7bux5EywAYSNvRxbUcOpmDlbQnjl2ETZgo
XqZuUk46DQLbBZbkxeBicJzxm/SlB9dnIP7NY4H+zAEYGaZuBKGQRuJlfzqizv95VV280kI62sOl
odptlnJwLKd1fcTEj+uNLOU65GP0Z/7dGLD1EAWy6GODlMEWfHCd80fIIHZG2AJ+zzKdVNtviWbi
dDYSJKcMnvicUBE04uyao36y+Sie0EVQLHn1DPHE2cwnowM5gYXbMVBD8x6S92KAP3gD0uCAmPVJ
Kya0W3Wh3gTaMCK3qWLXOFO2br+TGrGiDESecNKP/LxwWa1rcUTl7zVoOsnBG2EgIoZ/qUObGdd0
cayjFx5zxB3MZtvq8nyMjpSvis7hoctOfgcYc0YIMpT8IlJD5OlEJirT6eWKpeKC3aT8BW8ZQiM5
fYDwriN8bhspDxZ2n7A1SLpSCgN+z5Ep41MDhyhAjIZT8RsgSGwRQr40KBsyg6DCiwsHfyZUPvq/
gZIZYJyrWE6iqJZ5EQaRkT4cOi/fXtJR513li7gAao0QutTAHCF7glmMOJ63rNkTxPOyOB7z69Jb
7DuY36AFiScCG+FshLE0nUtyx73aCdAW45Z0EgYnjaOy/dOFsJL/GOQXojMuSY3kVbte477A9NEY
BJeD8+HuLpWq6yfSDXOrMxS8o3UWcPWX1fQzsrJUSxZ/konJb8ZOAz8SRIpOz6jH237tnh5s6cMK
FTTsIIGM5mIibavMgodyP9/vcG5Lne++UNIuE4k6HZuhDJOHD+/usHr731dMtC/YEI4d8p+euCcw
NWFCdFLchEVoTwto6BEwTl1UB0onbahfGdlNk0KmqnJRO4TO25NGFWv2Zx4NCjyRHc7Omydq8O14
iMTWkXtDPU9ctDaCPNBSTq1Oa7dnnsD5PQ3OxJrRFQmjBoE/BH19/Zgc89QO4kDRfUT6o0GEeyAp
Vrb9NvmP2J8ONch1Xpebm8uBXJuH7w2z5tkFzCmNBkPzpCG8IK1L2tOtlE2ifqv6pZ2Nhi7XcwNU
90JrTYggFZBZqFkz2TPOGv8NC9x6gDEqH+lJat+cM5Ts2yvpScCg+ltHvrNoToYREcyROABYCIbu
msMd2NNbRXWXbRg0GDgEzNJwbf63Ypj7DAxXHnhcGhEZeGK06jbamNFiCQrS5qh3gUuK0uIYwZ/M
ZpIPdkXTTAlLgZIUAjrJ+X+pqfHYlK74TfNtB+1KkSzqd55okVoFoj3L5shdX7JGlxUl+MQXSR1M
2l6ntHvODDOscPnQ8BG9HRoBVz6FZZEaWfsHzXku1Zk4mjw3h9KqN6t6RUQLA2lMQm/7q5gRvjyS
1Lk2HofBXoeI4K8v0W8S8EiVcTUCA21WT3NCou3lIDSvL2S4DBi9QJWCgcnUc9X2pkh+aYvRpr10
9N54v2C8twxgSNLIr8cBi2NO2szN8S9kU6Q56Cg643KSHb7+D321aSph5WrxHRgudMS2iQAML+os
zEBvAzU7fEshYnuaBJMDs/G8Y17HA9TnhXd4yBF66KyA5Zl4L5ML/Tvn1nC8ddXcvDJRf4GgfRXg
M7j+Isz/373zbcp0nlbW7WHzo3xR0nOCMXDonb5Jq6qPgE/wjc/cuPTOUEdVGDxbghjbaBNtAuWB
ZjBnqGMMhDs0LR/FVOPFaxTK5yORMlb14xfT1L9xspgVV3mrfua8MoeEkKdYq1qqgOh9kPYGea6o
7YBe0qpgGbXa2hy5JvEHg4qn176C+7p5jYKsMfZsEybLnm5iLjABVJ3HPjyWqwjbWxmAZS2sy45s
P14Y477IHU5+8dOmzz9gaz6WYcQAzuHyusXdNcWe+rhVmli6F2wU8zOEWfIxUBZ5r1lRf4ubh2/F
Ml0jNNuH+sebrVhzuecBWXR0iPYlXBck8oTAM93D4nffc4ldgRfy5lAtMCNvc5wdLqXDpeOQ9HwC
4eSCEDF+kURR0L7qNfDAZbypcUUwAuE/rHSMOz9RJsUJK8L3k6ieDRZnNvIEvv7AQ+K3zCMLI59U
6ecmVBC6sZFdIz19piIDp/6a7by0DtIQ5lRX4MofeHQv5JOY2Fp8D7zu6ZMS/5s2alYg5nfq/97W
OAukSncQ6VeU0lFuhH1oOceG5ORVVA1EHYXmbvBWyD2HV3dJhKk7XG0rRduMZpVi7HHks4Mq13p3
tTnnyYO/k6cuoWWuGELd+/KtiSQR0s70bWRcYyfYIfhH3YUUcURcmfn6PERbcsjKkt2xqzEpT45x
AI8EjjYg8/pM3SRKCRulCfAfPsVONU2UFiykX8L/ltuCYLpzoG5kDS2fo10OdoL80DIAJYtgS8By
0CYrMmJNPNQOehY=
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
