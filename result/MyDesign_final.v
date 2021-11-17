/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : P-2019.03-SP1
// Date      : Tue Nov 16 20:47:30 2021
/////////////////////////////////////////////////////////////


module MyDesign ( dut_run, dut_busy, reset_b, clk, dut_sram_write_address, 
        dut_sram_write_data, dut_sram_write_enable, dut_sram_read_address, 
        sram_dut_read_data, dut_wmem_read_address, wmem_dut_read_data );
  output [11:0] dut_sram_write_address;
  output [15:0] dut_sram_write_data;
  output [11:0] dut_sram_read_address;
  input [15:0] sram_dut_read_data;
  output [11:0] dut_wmem_read_address;
  input [15:0] wmem_dut_read_data;
  input dut_run, reset_b, clk;
  output dut_busy, dut_sram_write_enable;
  wire   N79, N80, N81, N117, N118, N119, N120, N155, N156, N157, N193, N194,
         N195, N196, gte_x_3_n24, gte_x_2_n24, gte_x_1_n24, n85, n86, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218,
         n219, n220, n221, n222, n223, n224, n225, n226, n227, n228, n229,
         n230, n231, n232, n233, n234, n235, n236, n237, n238, n239, n240,
         n241, n242, n243, n244, n245, n246, n247, n248, n249, n250, n251,
         n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262,
         n263, n264, n265, n266, n267, n268, n269, n270, n271, n272, n273,
         n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, n284,
         n285, n286, n287, n288, n289, n290, n291, n292, n293, n294, n295,
         n296, n297, n298, n299, n300, n301, n302, n303, n304, n305, n306,
         n307, n308, n309, n310, n311, n312, n313, n314, n315, n316, n317,
         n318, n319, n320, n321, n322, n323, n324, n325, n326, n327, n328,
         n329, n330, n331, n332, n333, n334, n335, n336, n337, n338, n339,
         n340, n341, n342, n343, n344, n345, n346, n347, n348, n349, n350,
         n351, n352, n353, n354, n355, n356, n357, n358, n359, n360, n361,
         n362, n365, n366, n367, n368, n369, n370;
  wire   [2:0] result1;
  wire   [2:0] result2;
  wire   [2:0] result3;
  wire   [2:0] result4;

  DFF_X1 result4_reg_3_ ( .D(N196), .CK(clk), .QN(n368) );
  DFF_X1 result4_reg_2_ ( .D(N195), .CK(clk), .Q(result4[2]) );
  DFF_X1 result4_reg_1_ ( .D(N194), .CK(clk), .Q(result4[1]) );
  DFF_X1 result4_reg_0_ ( .D(N193), .CK(clk), .Q(result4[0]) );
  DFF_X1 result3_reg_3_ ( .D(n369), .CK(clk), .QN(n367) );
  DFF_X1 result3_reg_2_ ( .D(N157), .CK(clk), .Q(result3[2]) );
  DFF_X1 result3_reg_1_ ( .D(N156), .CK(clk), .Q(result3[1]) );
  DFF_X1 result3_reg_0_ ( .D(N155), .CK(clk), .Q(result3[0]) );
  DFF_X1 result2_reg_3_ ( .D(N120), .CK(clk), .QN(n366) );
  DFF_X1 result2_reg_2_ ( .D(N119), .CK(clk), .Q(result2[2]) );
  DFF_X1 result2_reg_1_ ( .D(N118), .CK(clk), .Q(result2[1]) );
  DFF_X1 result2_reg_0_ ( .D(N117), .CK(clk), .Q(result2[0]) );
  DFF_X1 result1_reg_3_ ( .D(n348), .CK(clk), .QN(n365) );
  DFF_X1 result1_reg_2_ ( .D(N81), .CK(clk), .Q(result1[2]) );
  DFF_X1 result1_reg_0_ ( .D(N79), .CK(clk), .Q(result1[0]) );
  SDFF_X2 dut_sram_write_data_reg_3_ ( .D(1'b0), .SI(n368), .SE(n370), .CK(clk), .QN(dut_sram_write_data[3]) );
  DFF_X2 dut_sram_write_data_reg_0_ ( .D(gte_x_1_n24), .CK(clk), .Q(
        dut_sram_write_data[0]) );
  DFF_X2 dut_sram_write_data_reg_1_ ( .D(gte_x_2_n24), .CK(clk), .Q(
        dut_sram_write_data[1]) );
  DFF_X2 dut_sram_write_data_reg_2_ ( .D(gte_x_3_n24), .CK(clk), .Q(
        dut_sram_write_data[2]) );
  DFF_X2 result1_reg_1_ ( .D(N80), .CK(clk), .Q(result1[1]) );
  NOR2_X2 U88 ( .A1(n277), .A2(n276), .ZN(N196) );
  NAND2_X2 U89 ( .A1(n185), .A2(n188), .ZN(n345) );
  BUF_X4 U90 ( .A(n341), .Z(n85) );
  NOR2_X2 U91 ( .A1(n278), .A2(N196), .ZN(N195) );
  BUF_X4 U92 ( .A(wmem_dut_read_data[3]), .Z(n184) );
  XNOR2_X2 U93 ( .A(n304), .B(n303), .ZN(N193) );
  XNOR2_X2 U94 ( .A(n270), .B(n200), .ZN(n252) );
  XNOR2_X2 U95 ( .A(n261), .B(n271), .ZN(N194) );
  INV_X1 U96 ( .A(wmem_dut_read_data[4]), .ZN(n205) );
  INV_X1 U97 ( .A(n341), .ZN(n186) );
  INV_X1 U98 ( .A(n332), .ZN(n190) );
  NAND2_X1 U99 ( .A1(n269), .A2(n268), .ZN(n282) );
  NAND2_X1 U100 ( .A1(n187), .A2(n186), .ZN(n185) );
  OAI21_X1 U101 ( .B1(n190), .B2(n189), .A(n341), .ZN(n188) );
  NAND2_X1 U102 ( .A1(n197), .A2(n198), .ZN(n220) );
  INV_X1 U103 ( .A(n300), .ZN(n298) );
  INV_X1 U104 ( .A(n351), .ZN(n218) );
  INV_X1 U105 ( .A(wmem_dut_read_data[5]), .ZN(n264) );
  NAND2_X1 U106 ( .A1(n163), .A2(n356), .ZN(n179) );
  OAI21_X1 U107 ( .B1(n163), .B2(n356), .A(n357), .ZN(n180) );
  NOR2_X4 U108 ( .A1(n213), .A2(n347), .ZN(n348) );
  AND2_X2 U109 ( .A1(n277), .A2(n171), .ZN(n278) );
  NAND2_X1 U110 ( .A1(n219), .A2(n217), .ZN(n216) );
  INV_X1 U111 ( .A(n275), .ZN(n174) );
  NAND3_X1 U112 ( .A1(n213), .A2(n347), .A3(n346), .ZN(n212) );
  NAND2_X1 U113 ( .A1(n361), .A2(n295), .ZN(n234) );
  AOI21_X1 U114 ( .B1(n174), .B2(n173), .A(n172), .ZN(n171) );
  INV_X1 U115 ( .A(n276), .ZN(n172) );
  INV_X1 U116 ( .A(n223), .ZN(n169) );
  OAI21_X2 U117 ( .B1(n208), .B2(n86), .A(n207), .ZN(n273) );
  INV_X1 U118 ( .A(n331), .ZN(n189) );
  INV_X2 U119 ( .A(n250), .ZN(n228) );
  INV_X2 U120 ( .A(n212), .ZN(n211) );
  INV_X2 U121 ( .A(n216), .ZN(n215) );
  INV_X2 U122 ( .A(n301), .ZN(N157) );
  NOR2_X2 U123 ( .A1(n219), .A2(n218), .ZN(N120) );
  INV_X2 U124 ( .A(n343), .ZN(n369) );
  NAND3_X1 U125 ( .A1(n234), .A2(n299), .A3(n300), .ZN(n233) );
  NAND2_X1 U126 ( .A1(n354), .A2(n353), .ZN(n178) );
  NAND2_X2 U127 ( .A1(n180), .A2(n179), .ZN(n352) );
  NAND2_X1 U128 ( .A1(n275), .A2(n274), .ZN(n175) );
  AND2_X2 U129 ( .A1(n316), .A2(n315), .ZN(n351) );
  NAND2_X1 U130 ( .A1(n169), .A2(n260), .ZN(n224) );
  AOI21_X2 U131 ( .B1(n294), .B2(n293), .A(n166), .ZN(n359) );
  NAND2_X2 U132 ( .A1(n85), .A2(n340), .ZN(n347) );
  INV_X2 U133 ( .A(n321), .ZN(n194) );
  NAND2_X1 U134 ( .A1(n223), .A2(n259), .ZN(n222) );
  NAND2_X2 U135 ( .A1(n273), .A2(n272), .ZN(n276) );
  INV_X2 U136 ( .A(n340), .ZN(n187) );
  AND2_X2 U137 ( .A1(n167), .A2(n292), .ZN(n166) );
  INV_X2 U138 ( .A(n258), .ZN(n86) );
  INV_X1 U139 ( .A(n167), .ZN(n291) );
  CLKBUF_X3 U140 ( .A(sram_dut_read_data[10]), .Z(n199) );
  INV_X2 U141 ( .A(sram_dut_read_data[6]), .ZN(n202) );
  CLKBUF_X3 U142 ( .A(wmem_dut_read_data[1]), .Z(n201) );
  CLKBUF_X3 U143 ( .A(sram_dut_read_data[5]), .Z(n200) );
  CLKBUF_X3 U144 ( .A(wmem_dut_read_data[0]), .Z(n270) );
  INV_X2 U145 ( .A(sram_dut_read_data[9]), .ZN(n262) );
  CLKBUF_X3 U146 ( .A(wmem_dut_read_data[6]), .Z(n214) );
  CLKBUF_X3 U147 ( .A(wmem_dut_read_data[2]), .Z(n165) );
  INV_X2 U148 ( .A(1'b1), .ZN(dut_busy) );
  INV_X2 U149 ( .A(1'b1), .ZN(dut_sram_write_address[11]) );
  INV_X2 U150 ( .A(1'b1), .ZN(dut_sram_write_address[10]) );
  INV_X2 U151 ( .A(1'b1), .ZN(dut_sram_write_address[9]) );
  INV_X2 U152 ( .A(1'b1), .ZN(dut_sram_write_address[8]) );
  INV_X2 U153 ( .A(1'b1), .ZN(dut_sram_write_address[7]) );
  INV_X2 U154 ( .A(1'b1), .ZN(dut_sram_write_address[6]) );
  INV_X2 U155 ( .A(1'b1), .ZN(dut_sram_write_address[5]) );
  INV_X2 U156 ( .A(1'b1), .ZN(dut_sram_write_address[4]) );
  INV_X2 U157 ( .A(1'b1), .ZN(dut_sram_write_address[3]) );
  INV_X2 U158 ( .A(1'b1), .ZN(dut_sram_write_address[2]) );
  INV_X2 U159 ( .A(1'b1), .ZN(dut_sram_write_address[1]) );
  INV_X2 U160 ( .A(1'b1), .ZN(dut_sram_write_address[0]) );
  INV_X2 U161 ( .A(1'b1), .ZN(dut_sram_write_enable) );
  INV_X2 U162 ( .A(1'b1), .ZN(dut_sram_read_address[11]) );
  INV_X2 U163 ( .A(1'b1), .ZN(dut_sram_read_address[10]) );
  INV_X2 U164 ( .A(1'b1), .ZN(dut_sram_read_address[9]) );
  INV_X2 U165 ( .A(1'b1), .ZN(dut_sram_read_address[8]) );
  INV_X2 U166 ( .A(1'b1), .ZN(dut_sram_read_address[7]) );
  INV_X2 U167 ( .A(1'b1), .ZN(dut_sram_read_address[6]) );
  INV_X2 U168 ( .A(1'b1), .ZN(dut_sram_read_address[5]) );
  INV_X2 U169 ( .A(1'b1), .ZN(dut_sram_read_address[4]) );
  INV_X2 U170 ( .A(1'b1), .ZN(dut_sram_read_address[3]) );
  INV_X2 U171 ( .A(1'b1), .ZN(dut_sram_read_address[2]) );
  INV_X2 U172 ( .A(1'b1), .ZN(dut_sram_read_address[1]) );
  INV_X2 U173 ( .A(1'b1), .ZN(dut_sram_read_address[0]) );
  INV_X2 U174 ( .A(1'b1), .ZN(dut_wmem_read_address[11]) );
  INV_X2 U175 ( .A(1'b1), .ZN(dut_wmem_read_address[10]) );
  INV_X2 U176 ( .A(1'b1), .ZN(dut_wmem_read_address[9]) );
  INV_X2 U177 ( .A(1'b1), .ZN(dut_wmem_read_address[8]) );
  INV_X2 U178 ( .A(1'b1), .ZN(dut_wmem_read_address[7]) );
  INV_X2 U179 ( .A(1'b1), .ZN(dut_wmem_read_address[6]) );
  INV_X2 U180 ( .A(1'b1), .ZN(dut_wmem_read_address[5]) );
  INV_X2 U181 ( .A(1'b1), .ZN(dut_wmem_read_address[4]) );
  INV_X2 U182 ( .A(1'b1), .ZN(dut_wmem_read_address[3]) );
  INV_X2 U183 ( .A(1'b1), .ZN(dut_wmem_read_address[2]) );
  INV_X2 U184 ( .A(1'b1), .ZN(dut_wmem_read_address[1]) );
  INV_X2 U185 ( .A(1'b1), .ZN(dut_wmem_read_address[0]) );
  XNOR2_X2 U224 ( .A(n357), .B(n163), .ZN(n243) );
  XNOR2_X2 U225 ( .A(n244), .B(n308), .ZN(n163) );
  XNOR2_X2 U226 ( .A(n184), .B(sram_dut_read_data[9]), .ZN(n255) );
  NAND2_X2 U227 ( .A1(n194), .A2(n164), .ZN(n193) );
  XNOR2_X2 U228 ( .A(n164), .B(n322), .ZN(n319) );
  XNOR2_X2 U229 ( .A(n221), .B(n325), .ZN(n164) );
  XNOR2_X2 U230 ( .A(n165), .B(sram_dut_read_data[2]), .ZN(n324) );
  XNOR2_X2 U231 ( .A(n184), .B(sram_dut_read_data[8]), .ZN(n167) );
  XNOR2_X2 U232 ( .A(n292), .B(n167), .ZN(n232) );
  NAND2_X1 U233 ( .A1(n280), .A2(n168), .ZN(n182) );
  OAI21_X2 U234 ( .B1(n280), .B2(n168), .A(n279), .ZN(n183) );
  XNOR2_X2 U235 ( .A(n230), .B(n168), .ZN(N155) );
  XNOR2_X2 U236 ( .A(n263), .B(n287), .ZN(n168) );
  XNOR2_X2 U237 ( .A(sram_dut_read_data[11]), .B(wmem_dut_read_data[5]), .ZN(
        n254) );
  XNOR2_X2 U238 ( .A(n225), .B(n86), .ZN(n223) );
  OAI21_X2 U239 ( .B1(n303), .B2(n170), .A(n302), .ZN(n177) );
  XNOR2_X2 U240 ( .A(n226), .B(n256), .ZN(n170) );
  NAND2_X1 U241 ( .A1(n303), .A2(n170), .ZN(n176) );
  XNOR2_X2 U242 ( .A(n302), .B(n170), .ZN(n304) );
  INV_X1 U243 ( .A(n274), .ZN(n173) );
  NAND2_X2 U244 ( .A1(n271), .A2(n175), .ZN(n277) );
  XNOR2_X2 U245 ( .A(n272), .B(n273), .ZN(n275) );
  NAND2_X2 U246 ( .A1(n177), .A2(n176), .ZN(n271) );
  NAND2_X2 U247 ( .A1(n352), .A2(n178), .ZN(n219) );
  XNOR2_X2 U248 ( .A(n316), .B(n315), .ZN(n354) );
  XNOR2_X2 U249 ( .A(n204), .B(n314), .ZN(n237) );
  XNOR2_X2 U250 ( .A(sram_dut_read_data[1]), .B(wmem_dut_read_data[0]), .ZN(
        n314) );
  XNOR2_X2 U251 ( .A(n201), .B(sram_dut_read_data[2]), .ZN(n204) );
  XNOR2_X2 U252 ( .A(n361), .B(n181), .ZN(N156) );
  XNOR2_X2 U253 ( .A(n360), .B(n359), .ZN(n181) );
  XNOR2_X2 U254 ( .A(n296), .B(n297), .ZN(n360) );
  NAND2_X2 U255 ( .A1(n285), .A2(n284), .ZN(n297) );
  NAND2_X2 U256 ( .A1(n289), .A2(n288), .ZN(n296) );
  NAND2_X2 U257 ( .A1(n183), .A2(n182), .ZN(n361) );
  XNOR2_X2 U258 ( .A(n231), .B(n283), .ZN(n279) );
  XNOR2_X2 U259 ( .A(n232), .B(n293), .ZN(n280) );
  XNOR2_X2 U260 ( .A(sram_dut_read_data[14]), .B(wmem_dut_read_data[8]), .ZN(
        n281) );
  XNOR2_X2 U261 ( .A(n184), .B(sram_dut_read_data[4]), .ZN(n336) );
  NOR2_X2 U262 ( .A1(n211), .A2(n348), .ZN(N81) );
  NAND2_X2 U263 ( .A1(n332), .A2(n331), .ZN(n340) );
  NAND2_X2 U264 ( .A1(n327), .A2(n326), .ZN(n341) );
  XNOR2_X1 U265 ( .A(n342), .B(n191), .ZN(N80) );
  XNOR2_X2 U266 ( .A(n345), .B(n344), .ZN(n191) );
  NAND2_X2 U267 ( .A1(n193), .A2(n192), .ZN(n342) );
  NAND2_X1 U268 ( .A1(n320), .A2(n322), .ZN(n192) );
  XNOR2_X2 U269 ( .A(n236), .B(n337), .ZN(n320) );
  NAND2_X1 U270 ( .A1(n206), .A2(n203), .ZN(n197) );
  NAND2_X2 U271 ( .A1(n195), .A2(n196), .ZN(n198) );
  INV_X1 U272 ( .A(n206), .ZN(n195) );
  INV_X1 U273 ( .A(n203), .ZN(n196) );
  XNOR2_X2 U274 ( .A(n354), .B(n353), .ZN(n355) );
  XNOR2_X2 U275 ( .A(n275), .B(n274), .ZN(n261) );
  INV_X4 U276 ( .A(n202), .ZN(n203) );
  INV_X4 U277 ( .A(n205), .ZN(n206) );
  NAND2_X1 U278 ( .A1(n204), .A2(n314), .ZN(n239) );
  NAND2_X1 U279 ( .A1(n312), .A2(n311), .ZN(n241) );
  XNOR2_X1 U280 ( .A(n199), .B(n206), .ZN(n258) );
  XNOR2_X1 U281 ( .A(wmem_dut_read_data[2]), .B(sram_dut_read_data[7]), .ZN(
        n257) );
  INV_X1 U282 ( .A(n200), .ZN(n267) );
  XNOR2_X1 U283 ( .A(n214), .B(sram_dut_read_data[12]), .ZN(n287) );
  XNOR2_X1 U284 ( .A(wmem_dut_read_data[8]), .B(sram_dut_read_data[15]), .ZN(
        n250) );
  AOI22_X1 U285 ( .A1(n338), .A2(n337), .B1(n336), .B2(n333), .ZN(n344) );
  NOR2_X1 U286 ( .A1(n350), .A2(n351), .ZN(n217) );
  XNOR2_X1 U287 ( .A(n200), .B(n206), .ZN(n323) );
  XNOR2_X1 U288 ( .A(n214), .B(sram_dut_read_data[8]), .ZN(n325) );
  XNOR2_X1 U289 ( .A(n199), .B(wmem_dut_read_data[8]), .ZN(n328) );
  XNOR2_X1 U290 ( .A(wmem_dut_read_data[8]), .B(sram_dut_read_data[11]), .ZN(
        n313) );
  XNOR2_X1 U291 ( .A(wmem_dut_read_data[5]), .B(sram_dut_read_data[7]), .ZN(
        n308) );
  NAND2_X1 U292 ( .A1(n245), .A2(n266), .ZN(n292) );
  NAND2_X1 U293 ( .A1(wmem_dut_read_data[5]), .A2(n199), .ZN(n266) );
  INV_X1 U294 ( .A(n199), .ZN(n265) );
  INV_X1 U295 ( .A(n257), .ZN(n225) );
  NOR2_X1 U296 ( .A1(n259), .A2(n257), .ZN(n208) );
  NAND2_X1 U297 ( .A1(n259), .A2(n257), .ZN(n207) );
  NAND2_X1 U298 ( .A1(n252), .A2(n251), .ZN(n209) );
  INV_X1 U299 ( .A(n252), .ZN(n253) );
  OR2_X1 U300 ( .A1(n345), .A2(n344), .ZN(n346) );
  INV_X1 U301 ( .A(n201), .ZN(n246) );
  NAND2_X2 U302 ( .A1(n210), .A2(n209), .ZN(n272) );
  OAI21_X1 U303 ( .B1(n252), .B2(n251), .A(n250), .ZN(n210) );
  NAND2_X2 U304 ( .A1(n342), .A2(n339), .ZN(n213) );
  NOR2_X2 U305 ( .A1(N120), .A2(n215), .ZN(N119) );
  OAI21_X1 U306 ( .B1(n312), .B2(n311), .A(n220), .ZN(n242) );
  XNOR2_X2 U307 ( .A(n311), .B(n220), .ZN(n238) );
  XNOR2_X2 U308 ( .A(n323), .B(n324), .ZN(n221) );
  XNOR2_X2 U309 ( .A(n235), .B(n328), .ZN(n322) );
  NAND2_X2 U310 ( .A1(n224), .A2(n222), .ZN(n302) );
  XNOR2_X2 U311 ( .A(n255), .B(n254), .ZN(n226) );
  XNOR2_X2 U312 ( .A(n227), .B(n253), .ZN(n303) );
  XNOR2_X2 U313 ( .A(n228), .B(n251), .ZN(n227) );
  OAI21_X1 U314 ( .B1(n286), .B2(n287), .A(n229), .ZN(n289) );
  XNOR2_X2 U315 ( .A(n286), .B(n229), .ZN(n263) );
  XNOR2_X2 U316 ( .A(n318), .B(n206), .ZN(n229) );
  NAND3_X2 U317 ( .A1(n361), .A2(n295), .A3(n298), .ZN(n343) );
  XNOR2_X2 U318 ( .A(n280), .B(n279), .ZN(n230) );
  XNOR2_X2 U319 ( .A(n281), .B(n282), .ZN(n231) );
  NAND2_X2 U320 ( .A1(n343), .A2(n233), .ZN(n301) );
  XNOR2_X2 U321 ( .A(n264), .B(n202), .ZN(n333) );
  NOR2_X2 U322 ( .A1(n320), .A2(n322), .ZN(n321) );
  XNOR2_X2 U323 ( .A(n330), .B(n329), .ZN(n235) );
  XNOR2_X2 U324 ( .A(sram_dut_read_data[0]), .B(wmem_dut_read_data[0]), .ZN(
        n329) );
  XNOR2_X2 U325 ( .A(n333), .B(n336), .ZN(n236) );
  XNOR2_X2 U326 ( .A(n237), .B(n313), .ZN(n357) );
  XNOR2_X2 U327 ( .A(n238), .B(n312), .ZN(n356) );
  NAND2_X2 U328 ( .A1(n240), .A2(n239), .ZN(n316) );
  OAI21_X1 U329 ( .B1(n204), .B2(n314), .A(n313), .ZN(n240) );
  NAND2_X2 U330 ( .A1(n242), .A2(n241), .ZN(n315) );
  XNOR2_X2 U331 ( .A(n318), .B(n214), .ZN(n312) );
  XNOR2_X2 U332 ( .A(n243), .B(n356), .ZN(N117) );
  XNOR2_X2 U333 ( .A(n309), .B(n307), .ZN(n244) );
  XNOR2_X2 U334 ( .A(n201), .B(sram_dut_read_data[1]), .ZN(n330) );
  XNOR2_X2 U335 ( .A(n200), .B(wmem_dut_read_data[3]), .ZN(n307) );
  XNOR2_X2 U336 ( .A(n203), .B(n201), .ZN(n251) );
  XNOR2_X2 U337 ( .A(n352), .B(n355), .ZN(N118) );
  XNOR2_X2 U338 ( .A(n270), .B(sram_dut_read_data[4]), .ZN(n283) );
  XNOR2_X2 U339 ( .A(n165), .B(n203), .ZN(n286) );
  XNOR2_X2 U340 ( .A(n165), .B(sram_dut_read_data[3]), .ZN(n311) );
  NAND2_X1 U341 ( .A1(n265), .A2(n264), .ZN(n245) );
  XNOR2_X1 U342 ( .A(n199), .B(wmem_dut_read_data[7]), .ZN(n309) );
  XNOR2_X1 U344 ( .A(sram_dut_read_data[13]), .B(wmem_dut_read_data[6]), .ZN(
        n259) );
  INV_X1 U345 ( .A(n255), .ZN(n248) );
  INV_X1 U346 ( .A(n254), .ZN(n247) );
  NAND2_X1 U347 ( .A1(n248), .A2(n247), .ZN(n249) );
  CLKBUF_X3 U348 ( .A(wmem_dut_read_data[7]), .Z(n317) );
  XNOR2_X1 U349 ( .A(sram_dut_read_data[14]), .B(n317), .ZN(n256) );
  AOI22_X1 U350 ( .A1(n249), .A2(n256), .B1(n255), .B2(n254), .ZN(n274) );
  INV_X1 U351 ( .A(n259), .ZN(n260) );
  INV_X4 U352 ( .A(n262), .ZN(n318) );
  XNOR2_X1 U353 ( .A(sram_dut_read_data[13]), .B(n317), .ZN(n293) );
  NAND2_X1 U354 ( .A1(n200), .A2(n201), .ZN(n269) );
  NAND2_X1 U355 ( .A1(n267), .A2(n246), .ZN(n268) );
  OAI21_X1 U356 ( .B1(n283), .B2(n282), .A(n281), .ZN(n285) );
  NAND2_X1 U357 ( .A1(n283), .A2(n282), .ZN(n284) );
  NAND2_X1 U358 ( .A1(n287), .A2(n286), .ZN(n288) );
  INV_X1 U359 ( .A(n292), .ZN(n290) );
  NAND2_X1 U360 ( .A1(n291), .A2(n290), .ZN(n294) );
  NAND2_X1 U361 ( .A1(n360), .A2(n359), .ZN(n295) );
  NAND2_X1 U362 ( .A1(n297), .A2(n296), .ZN(n300) );
  OR2_X1 U363 ( .A1(n360), .A2(n359), .ZN(n299) );
  INV_X1 U364 ( .A(n308), .ZN(n306) );
  INV_X1 U365 ( .A(n307), .ZN(n305) );
  NAND2_X1 U366 ( .A1(n306), .A2(n305), .ZN(n310) );
  AOI22_X1 U367 ( .A1(n310), .A2(n309), .B1(n308), .B2(n307), .ZN(n353) );
  XNOR2_X1 U368 ( .A(n318), .B(n317), .ZN(n337) );
  XNOR2_X1 U369 ( .A(n319), .B(n320), .ZN(N79) );
  OAI21_X1 U370 ( .B1(n325), .B2(n324), .A(n323), .ZN(n327) );
  NAND2_X1 U371 ( .A1(n325), .A2(n324), .ZN(n326) );
  OAI21_X1 U372 ( .B1(n330), .B2(n329), .A(n328), .ZN(n332) );
  NAND2_X1 U373 ( .A1(n330), .A2(n329), .ZN(n331) );
  INV_X1 U374 ( .A(n336), .ZN(n335) );
  INV_X1 U375 ( .A(n333), .ZN(n334) );
  NAND2_X1 U376 ( .A1(n335), .A2(n334), .ZN(n338) );
  NAND2_X1 U377 ( .A1(n345), .A2(n344), .ZN(n339) );
  OAI21_X1 U378 ( .B1(result1[0]), .B2(result1[1]), .A(result1[2]), .ZN(n349)
         );
  NAND2_X1 U379 ( .A1(n349), .A2(n365), .ZN(gte_x_1_n24) );
  NOR2_X1 U380 ( .A1(n354), .A2(n353), .ZN(n350) );
  OAI21_X1 U381 ( .B1(result2[0]), .B2(result2[1]), .A(result2[2]), .ZN(n358)
         );
  NAND2_X1 U382 ( .A1(n358), .A2(n366), .ZN(gte_x_2_n24) );
  OAI21_X1 U383 ( .B1(result3[0]), .B2(result3[1]), .A(result3[2]), .ZN(n362)
         );
  NAND2_X1 U384 ( .A1(n362), .A2(n367), .ZN(gte_x_3_n24) );
  OAI21_X1 U385 ( .B1(result4[0]), .B2(result4[1]), .A(result4[2]), .ZN(n370)
         );
endmodule

