/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : P-2019.03
// Date      : Mon Jul 13 15:29:14 2020
/////////////////////////////////////////////////////////////

`timescale 1ns/10ps
module Multipiler_0 ( A, Product );
  input [3:0] A;
  output [7:0] Product;
  wire   N6, N7, N8, N9, N10, N11, N14, N15, N16, N17, N18, N19, N20, N22, N23,
         N24, N25, N26, N27, N28, \add_15/carry[7] , \add_15/carry[6] ,
         \add_15/carry[5] , \add_14/carry[7] , \add_14/carry[6] ,
         \add_14/carry[5] , \add_13/carry[7] , \add_13/carry[6] ,
         \add_13/carry[5] , n3, n4, n5, n6, n7, n8;
  wire   [6:3] temp0;
  wire   [6:0] temp1;
  wire   [6:0] temp2;
  assign N6 = A[2];
  assign N7 = A[3];
  assign N8 = A[0];

  CLKINVX1 U2 ( .A(1'b1), .Y(Product[7]) );
  CLKINVX1 U4 ( .A(temp2[0]), .Y(n5) );
  CLKINVX1 U5 ( .A(temp1[0]), .Y(n6) );
  AO22X1 U6 ( .A0(N19), .A1(temp1[0]), .B0(temp1[6]), .B1(n6), .Y(temp2[5]) );
  AO22X1 U7 ( .A0(N17), .A1(temp1[0]), .B0(temp1[4]), .B1(n6), .Y(N24) );
  AO22X1 U8 ( .A0(N18), .A1(temp1[0]), .B0(temp1[5]), .B1(n6), .Y(temp2[4]) );
  NOR2X1 U9 ( .A(n7), .B(n8), .Y(temp0[4]) );
  AO22X1 U10 ( .A0(n5), .A1(temp2[4]), .B0(N25), .B1(temp2[0]), .Y(Product[3])
         );
  AO22X1 U11 ( .A0(n5), .A1(temp2[6]), .B0(N27), .B1(temp2[0]), .Y(Product[5])
         );
  AO22X1 U12 ( .A0(n5), .A1(N23), .B0(N23), .B1(temp2[0]), .Y(Product[1]) );
  AO22X1 U13 ( .A0(N16), .A1(temp1[0]), .B0(N16), .B1(n6), .Y(N23) );
  NOR2BX1 U14 ( .AN(N9), .B(n7), .Y(N16) );
  CLKINVX1 U15 ( .A(N8), .Y(n8) );
  AO22X1 U16 ( .A0(N6), .A1(n4), .B0(N6), .B1(n7), .Y(temp1[0]) );
  AO22X1 U17 ( .A0(N14), .A1(temp1[0]), .B0(N14), .B1(n6), .Y(temp2[0]) );
  AO22X1 U18 ( .A0(n7), .A1(N7), .B0(N7), .B1(n4), .Y(N14) );
  AO22X1 U19 ( .A0(n5), .A1(N24), .B0(N24), .B1(temp2[0]), .Y(Product[2]) );
  AO22X1 U20 ( .A0(n5), .A1(temp2[5]), .B0(N26), .B1(temp2[0]), .Y(Product[4])
         );
  CLKINVX1 U21 ( .A(n4), .Y(n7) );
  NOR2X1 U22 ( .A(n3), .B(n7), .Y(temp1[6]) );
  XNOR2X1 U23 ( .A(N7), .B(\add_13/carry[7] ), .Y(n3) );
  OAI2BB2XL U24 ( .B0(n4), .B1(n8), .A0N(N8), .A1N(n4), .Y(N15) );
  AO22X1 U25 ( .A0(n7), .A1(temp0[6]), .B0(N11), .B1(n4), .Y(temp1[5]) );
  AO22X1 U26 ( .A0(n7), .A1(temp0[5]), .B0(N10), .B1(n4), .Y(temp1[4]) );
  AND2X2 U27 ( .A(N6), .B(N8), .Y(temp0[5]) );
  ADDFXL U28 ( .A(temp0[5]), .B(n4), .CI(\add_13/carry[5] ), .CO(
        \add_13/carry[6] ), .S(N10) );
  AND2X2 U29 ( .A(N20), .B(temp1[0]), .Y(temp2[6]) );
  AND2X2 U30 ( .A(N7), .B(N8), .Y(temp0[6]) );
  ADDFXL U31 ( .A(temp1[5]), .B(n4), .CI(\add_14/carry[5] ), .CO(
        \add_14/carry[6] ), .S(N18) );
  ADDFXL U32 ( .A(temp2[5]), .B(n4), .CI(\add_15/carry[5] ), .CO(
        \add_15/carry[6] ), .S(N26) );
  ADDFXL U33 ( .A(temp1[6]), .B(N6), .CI(\add_14/carry[6] ), .CO(
        \add_14/carry[7] ), .S(N19) );
  ADDFXL U34 ( .A(temp0[6]), .B(N6), .CI(\add_13/carry[6] ), .CO(
        \add_13/carry[7] ), .S(N11) );
  ADDFXL U35 ( .A(temp2[6]), .B(N6), .CI(\add_15/carry[6] ), .CO(
        \add_15/carry[7] ), .S(N27) );
  NOR2BX1 U36 ( .AN(N28), .B(n5), .Y(Product[6]) );
  AO22X1 U37 ( .A0(n5), .A1(N22), .B0(N22), .B1(temp2[0]), .Y(Product[0]) );
  AO22X1 U38 ( .A0(N15), .A1(temp1[0]), .B0(N15), .B1(n6), .Y(N22) );
  CLKBUFX3 U39 ( .A(A[1]), .Y(n4) );
  XOR2X1 U40 ( .A(N7), .B(\add_15/carry[7] ), .Y(N28) );
  AND2X1 U41 ( .A(temp2[4]), .B(N8), .Y(\add_15/carry[5] ) );
  XOR2X1 U42 ( .A(N8), .B(temp2[4]), .Y(N25) );
  XOR2X1 U43 ( .A(N7), .B(\add_14/carry[7] ), .Y(N20) );
  AND2X1 U44 ( .A(temp1[4]), .B(N8), .Y(\add_14/carry[5] ) );
  XOR2X1 U45 ( .A(N8), .B(temp1[4]), .Y(N17) );
  AND2X1 U46 ( .A(temp0[4]), .B(N8), .Y(\add_13/carry[5] ) );
  XOR2X1 U47 ( .A(N8), .B(temp0[4]), .Y(N9) );
endmodule


module Multipiler_8 ( A, Product );
  input [3:0] A;
  output [7:0] Product;
  wire   N6, N7, N8, N9, N10, N11, N14, N15, N16, N17, N18, N19, N20, N22, N23,
         N24, N25, N26, N27, \add_15/carry[7] , \add_15/carry[6] ,
         \add_15/carry[5] , \add_14/carry[7] , \add_14/carry[6] ,
         \add_14/carry[5] , \add_13/carry[7] , \add_13/carry[6] ,
         \add_13/carry[5] , n3, n4, n5, n6, n7, n8, n9;
  wire   [6:3] temp0;
  wire   [6:0] temp1;
  wire   [6:0] temp2;
  assign N6 = A[2];
  assign N7 = A[3];
  assign N8 = A[0];

  CLKINVX1 U2 ( .A(1'b1), .Y(Product[7]) );
  AO22X1 U4 ( .A0(n6), .A1(temp2[4]), .B0(N25), .B1(temp2[0]), .Y(Product[3])
         );
  AO22X1 U5 ( .A0(n6), .A1(N23), .B0(N23), .B1(temp2[0]), .Y(Product[1]) );
  AO22X1 U6 ( .A0(N16), .A1(temp1[0]), .B0(N16), .B1(n7), .Y(N23) );
  NOR2BX1 U7 ( .AN(N9), .B(n8), .Y(N16) );
  AO22X1 U8 ( .A0(n6), .A1(N24), .B0(N24), .B1(temp2[0]), .Y(Product[2]) );
  AO22X1 U9 ( .A0(N17), .A1(temp1[0]), .B0(temp1[4]), .B1(n7), .Y(N24) );
  AO22X1 U10 ( .A0(N19), .A1(temp1[0]), .B0(temp1[6]), .B1(n7), .Y(temp2[5])
         );
  AO22X1 U11 ( .A0(N18), .A1(temp1[0]), .B0(temp1[5]), .B1(n7), .Y(temp2[4])
         );
  CLKINVX1 U12 ( .A(temp2[0]), .Y(n6) );
  CLKINVX1 U13 ( .A(temp1[0]), .Y(n7) );
  NOR2X1 U14 ( .A(n8), .B(n9), .Y(temp0[4]) );
  CLKINVX1 U15 ( .A(N8), .Y(n9) );
  AO22X1 U16 ( .A0(N6), .A1(n5), .B0(N6), .B1(n8), .Y(temp1[0]) );
  AO22X1 U17 ( .A0(N14), .A1(temp1[0]), .B0(N14), .B1(n7), .Y(temp2[0]) );
  AO22X1 U18 ( .A0(n8), .A1(N7), .B0(N7), .B1(n5), .Y(N14) );
  AO22X1 U19 ( .A0(n8), .A1(temp0[6]), .B0(N11), .B1(n5), .Y(temp1[5]) );
  CLKINVX1 U20 ( .A(n5), .Y(n8) );
  AO22X1 U21 ( .A0(n8), .A1(temp0[5]), .B0(N10), .B1(n5), .Y(temp1[4]) );
  AND2X2 U22 ( .A(N6), .B(N8), .Y(temp0[5]) );
  ADDFXL U23 ( .A(temp0[5]), .B(n5), .CI(\add_13/carry[5] ), .CO(
        \add_13/carry[6] ), .S(N10) );
  ADDFXL U24 ( .A(temp2[5]), .B(n5), .CI(\add_15/carry[5] ), .CO(
        \add_15/carry[6] ), .S(N26) );
  AND2X2 U25 ( .A(N20), .B(temp1[0]), .Y(temp2[6]) );
  AND2X2 U26 ( .A(N7), .B(N8), .Y(temp0[6]) );
  AO22X1 U27 ( .A0(n6), .A1(N22), .B0(N22), .B1(temp2[0]), .Y(Product[0]) );
  AO22X1 U28 ( .A0(N15), .A1(temp1[0]), .B0(N15), .B1(n7), .Y(N22) );
  OAI2BB2XL U29 ( .B0(n5), .B1(n9), .A0N(N8), .A1N(n5), .Y(N15) );
  ADDFXL U30 ( .A(temp1[5]), .B(n5), .CI(\add_14/carry[5] ), .CO(
        \add_14/carry[6] ), .S(N18) );
  ADDFXL U31 ( .A(temp1[6]), .B(N6), .CI(\add_14/carry[6] ), .CO(
        \add_14/carry[7] ), .S(N19) );
  ADDFXL U32 ( .A(temp0[6]), .B(N6), .CI(\add_13/carry[6] ), .CO(
        \add_13/carry[7] ), .S(N11) );
  ADDFXL U33 ( .A(temp2[6]), .B(N6), .CI(\add_15/carry[6] ), .CO(
        \add_15/carry[7] ), .S(N27) );
  NOR2X1 U34 ( .A(n3), .B(n6), .Y(Product[6]) );
  XNOR2X1 U35 ( .A(N7), .B(\add_15/carry[7] ), .Y(n3) );
  NOR2X1 U36 ( .A(n4), .B(n8), .Y(temp1[6]) );
  XNOR2X1 U37 ( .A(N7), .B(\add_13/carry[7] ), .Y(n4) );
  AO22X1 U38 ( .A0(n6), .A1(temp2[6]), .B0(N27), .B1(temp2[0]), .Y(Product[5])
         );
  CLKBUFX3 U39 ( .A(A[1]), .Y(n5) );
  AO22X1 U40 ( .A0(n6), .A1(temp2[5]), .B0(N26), .B1(temp2[0]), .Y(Product[4])
         );
  AND2X1 U41 ( .A(temp2[4]), .B(N8), .Y(\add_15/carry[5] ) );
  XOR2X1 U42 ( .A(N8), .B(temp2[4]), .Y(N25) );
  XOR2X1 U43 ( .A(N7), .B(\add_14/carry[7] ), .Y(N20) );
  AND2X1 U44 ( .A(temp1[4]), .B(N8), .Y(\add_14/carry[5] ) );
  XOR2X1 U45 ( .A(N8), .B(temp1[4]), .Y(N17) );
  AND2X1 U46 ( .A(temp0[4]), .B(N8), .Y(\add_13/carry[5] ) );
  XOR2X1 U47 ( .A(N8), .B(temp0[4]), .Y(N9) );
endmodule


module Multipiler_7 ( A, Product );
  input [3:0] A;
  output [7:0] Product;
  wire   N6, N7, N8, N9, N10, N11, N14, N15, N16, N17, N18, N19, N20, N22, N23,
         N24, N25, N26, N27, N28, \add_15/carry[7] , \add_15/carry[6] ,
         \add_15/carry[5] , \add_14/carry[7] , \add_14/carry[6] ,
         \add_14/carry[5] , \add_13/carry[7] , \add_13/carry[6] ,
         \add_13/carry[5] , n3, n4, n5, n6, n7, n8;
  wire   [6:3] temp0;
  wire   [6:0] temp1;
  wire   [6:0] temp2;
  assign N6 = A[2];
  assign N7 = A[3];
  assign N8 = A[0];

  CLKINVX1 U2 ( .A(1'b1), .Y(Product[7]) );
  CLKINVX1 U4 ( .A(temp2[0]), .Y(n5) );
  CLKINVX1 U5 ( .A(temp1[0]), .Y(n6) );
  AO22X1 U6 ( .A0(N19), .A1(temp1[0]), .B0(temp1[6]), .B1(n6), .Y(temp2[5]) );
  AO22X1 U7 ( .A0(N17), .A1(temp1[0]), .B0(temp1[4]), .B1(n6), .Y(N24) );
  AO22X1 U8 ( .A0(N18), .A1(temp1[0]), .B0(temp1[5]), .B1(n6), .Y(temp2[4]) );
  NOR2X1 U9 ( .A(n7), .B(n8), .Y(temp0[4]) );
  AO22X1 U10 ( .A0(n5), .A1(temp2[4]), .B0(N25), .B1(temp2[0]), .Y(Product[3])
         );
  AO22X1 U11 ( .A0(n5), .A1(temp2[6]), .B0(N27), .B1(temp2[0]), .Y(Product[5])
         );
  AO22X1 U12 ( .A0(n5), .A1(N23), .B0(N23), .B1(temp2[0]), .Y(Product[1]) );
  AO22X1 U13 ( .A0(N16), .A1(temp1[0]), .B0(N16), .B1(n6), .Y(N23) );
  NOR2BX1 U14 ( .AN(N9), .B(n7), .Y(N16) );
  CLKINVX1 U15 ( .A(N8), .Y(n8) );
  AO22X1 U16 ( .A0(N6), .A1(n4), .B0(N6), .B1(n7), .Y(temp1[0]) );
  AO22X1 U17 ( .A0(N14), .A1(temp1[0]), .B0(N14), .B1(n6), .Y(temp2[0]) );
  AO22X1 U18 ( .A0(n7), .A1(N7), .B0(N7), .B1(n4), .Y(N14) );
  AO22X1 U19 ( .A0(n5), .A1(N24), .B0(N24), .B1(temp2[0]), .Y(Product[2]) );
  AO22X1 U20 ( .A0(n5), .A1(temp2[5]), .B0(N26), .B1(temp2[0]), .Y(Product[4])
         );
  CLKINVX1 U21 ( .A(n4), .Y(n7) );
  NOR2X1 U22 ( .A(n3), .B(n7), .Y(temp1[6]) );
  XNOR2X1 U23 ( .A(N7), .B(\add_13/carry[7] ), .Y(n3) );
  OAI2BB2XL U24 ( .B0(n4), .B1(n8), .A0N(N8), .A1N(n4), .Y(N15) );
  AO22X1 U25 ( .A0(n7), .A1(temp0[6]), .B0(N11), .B1(n4), .Y(temp1[5]) );
  AO22X1 U26 ( .A0(n7), .A1(temp0[5]), .B0(N10), .B1(n4), .Y(temp1[4]) );
  AND2X2 U27 ( .A(N6), .B(N8), .Y(temp0[5]) );
  ADDFXL U28 ( .A(temp0[5]), .B(n4), .CI(\add_13/carry[5] ), .CO(
        \add_13/carry[6] ), .S(N10) );
  AND2X2 U29 ( .A(N20), .B(temp1[0]), .Y(temp2[6]) );
  AND2X2 U30 ( .A(N7), .B(N8), .Y(temp0[6]) );
  ADDFXL U31 ( .A(temp1[5]), .B(n4), .CI(\add_14/carry[5] ), .CO(
        \add_14/carry[6] ), .S(N18) );
  ADDFXL U32 ( .A(temp2[5]), .B(n4), .CI(\add_15/carry[5] ), .CO(
        \add_15/carry[6] ), .S(N26) );
  ADDFXL U33 ( .A(temp1[6]), .B(N6), .CI(\add_14/carry[6] ), .CO(
        \add_14/carry[7] ), .S(N19) );
  ADDFXL U34 ( .A(temp0[6]), .B(N6), .CI(\add_13/carry[6] ), .CO(
        \add_13/carry[7] ), .S(N11) );
  ADDFXL U35 ( .A(temp2[6]), .B(N6), .CI(\add_15/carry[6] ), .CO(
        \add_15/carry[7] ), .S(N27) );
  NOR2BX1 U36 ( .AN(N28), .B(n5), .Y(Product[6]) );
  AO22X1 U37 ( .A0(n5), .A1(N22), .B0(N22), .B1(temp2[0]), .Y(Product[0]) );
  AO22X1 U38 ( .A0(N15), .A1(temp1[0]), .B0(N15), .B1(n6), .Y(N22) );
  CLKBUFX3 U39 ( .A(A[1]), .Y(n4) );
  XOR2X1 U40 ( .A(N7), .B(\add_15/carry[7] ), .Y(N28) );
  AND2X1 U41 ( .A(temp2[4]), .B(N8), .Y(\add_15/carry[5] ) );
  XOR2X1 U42 ( .A(N8), .B(temp2[4]), .Y(N25) );
  XOR2X1 U43 ( .A(N7), .B(\add_14/carry[7] ), .Y(N20) );
  AND2X1 U44 ( .A(temp1[4]), .B(N8), .Y(\add_14/carry[5] ) );
  XOR2X1 U45 ( .A(N8), .B(temp1[4]), .Y(N17) );
  AND2X1 U46 ( .A(temp0[4]), .B(N8), .Y(\add_13/carry[5] ) );
  XOR2X1 U47 ( .A(N8), .B(temp0[4]), .Y(N9) );
endmodule


module Multipiler_6 ( A, Product );
  input [3:0] A;
  output [7:0] Product;
  wire   N6, N7, N8, N9, N10, N11, N14, N15, N16, N17, N18, N19, N20, N22, N23,
         N24, N25, N26, N27, \add_15/carry[7] , \add_15/carry[6] ,
         \add_15/carry[5] , \add_14/carry[7] , \add_14/carry[6] ,
         \add_14/carry[5] , \add_13/carry[7] , \add_13/carry[6] ,
         \add_13/carry[5] , n3, n4, n5, n6, n7, n8, n9;
  wire   [6:3] temp0;
  wire   [6:0] temp1;
  wire   [6:0] temp2;
  assign N6 = A[2];
  assign N7 = A[3];
  assign N8 = A[0];

  CLKINVX1 U2 ( .A(1'b1), .Y(Product[7]) );
  AO22X1 U4 ( .A0(n6), .A1(temp2[4]), .B0(N25), .B1(temp2[0]), .Y(Product[3])
         );
  AO22X1 U5 ( .A0(n6), .A1(N23), .B0(N23), .B1(temp2[0]), .Y(Product[1]) );
  AO22X1 U6 ( .A0(N16), .A1(temp1[0]), .B0(N16), .B1(n7), .Y(N23) );
  NOR2BX1 U7 ( .AN(N9), .B(n8), .Y(N16) );
  AO22X1 U8 ( .A0(n6), .A1(N24), .B0(N24), .B1(temp2[0]), .Y(Product[2]) );
  AO22X1 U9 ( .A0(N17), .A1(temp1[0]), .B0(temp1[4]), .B1(n7), .Y(N24) );
  AO22X1 U10 ( .A0(N19), .A1(temp1[0]), .B0(temp1[6]), .B1(n7), .Y(temp2[5])
         );
  AO22X1 U11 ( .A0(N18), .A1(temp1[0]), .B0(temp1[5]), .B1(n7), .Y(temp2[4])
         );
  CLKINVX1 U12 ( .A(temp2[0]), .Y(n6) );
  CLKINVX1 U13 ( .A(temp1[0]), .Y(n7) );
  NOR2X1 U14 ( .A(n8), .B(n9), .Y(temp0[4]) );
  CLKINVX1 U15 ( .A(N8), .Y(n9) );
  AO22X1 U16 ( .A0(N6), .A1(n5), .B0(N6), .B1(n8), .Y(temp1[0]) );
  AO22X1 U17 ( .A0(N14), .A1(temp1[0]), .B0(N14), .B1(n7), .Y(temp2[0]) );
  AO22X1 U18 ( .A0(n8), .A1(N7), .B0(N7), .B1(n5), .Y(N14) );
  AO22X1 U19 ( .A0(n8), .A1(temp0[6]), .B0(N11), .B1(n5), .Y(temp1[5]) );
  CLKINVX1 U20 ( .A(n5), .Y(n8) );
  AO22X1 U21 ( .A0(n8), .A1(temp0[5]), .B0(N10), .B1(n5), .Y(temp1[4]) );
  AND2X2 U22 ( .A(N6), .B(N8), .Y(temp0[5]) );
  ADDFXL U23 ( .A(temp0[5]), .B(n5), .CI(\add_13/carry[5] ), .CO(
        \add_13/carry[6] ), .S(N10) );
  ADDFXL U24 ( .A(temp2[5]), .B(n5), .CI(\add_15/carry[5] ), .CO(
        \add_15/carry[6] ), .S(N26) );
  AND2X2 U25 ( .A(N20), .B(temp1[0]), .Y(temp2[6]) );
  AND2X2 U26 ( .A(N7), .B(N8), .Y(temp0[6]) );
  AO22X1 U27 ( .A0(n6), .A1(N22), .B0(N22), .B1(temp2[0]), .Y(Product[0]) );
  AO22X1 U28 ( .A0(N15), .A1(temp1[0]), .B0(N15), .B1(n7), .Y(N22) );
  OAI2BB2XL U29 ( .B0(n5), .B1(n9), .A0N(N8), .A1N(n5), .Y(N15) );
  ADDFXL U30 ( .A(temp1[5]), .B(n5), .CI(\add_14/carry[5] ), .CO(
        \add_14/carry[6] ), .S(N18) );
  ADDFXL U31 ( .A(temp1[6]), .B(N6), .CI(\add_14/carry[6] ), .CO(
        \add_14/carry[7] ), .S(N19) );
  ADDFXL U32 ( .A(temp0[6]), .B(N6), .CI(\add_13/carry[6] ), .CO(
        \add_13/carry[7] ), .S(N11) );
  ADDFXL U33 ( .A(temp2[6]), .B(N6), .CI(\add_15/carry[6] ), .CO(
        \add_15/carry[7] ), .S(N27) );
  NOR2X1 U34 ( .A(n3), .B(n6), .Y(Product[6]) );
  XNOR2X1 U35 ( .A(N7), .B(\add_15/carry[7] ), .Y(n3) );
  NOR2X1 U36 ( .A(n4), .B(n8), .Y(temp1[6]) );
  XNOR2X1 U37 ( .A(N7), .B(\add_13/carry[7] ), .Y(n4) );
  AO22X1 U38 ( .A0(n6), .A1(temp2[6]), .B0(N27), .B1(temp2[0]), .Y(Product[5])
         );
  CLKBUFX3 U39 ( .A(A[1]), .Y(n5) );
  AO22X1 U40 ( .A0(n6), .A1(temp2[5]), .B0(N26), .B1(temp2[0]), .Y(Product[4])
         );
  AND2X1 U41 ( .A(temp2[4]), .B(N8), .Y(\add_15/carry[5] ) );
  XOR2X1 U42 ( .A(N8), .B(temp2[4]), .Y(N25) );
  XOR2X1 U43 ( .A(N7), .B(\add_14/carry[7] ), .Y(N20) );
  AND2X1 U44 ( .A(temp1[4]), .B(N8), .Y(\add_14/carry[5] ) );
  XOR2X1 U45 ( .A(N8), .B(temp1[4]), .Y(N17) );
  AND2X1 U46 ( .A(temp0[4]), .B(N8), .Y(\add_13/carry[5] ) );
  XOR2X1 U47 ( .A(N8), .B(temp0[4]), .Y(N9) );
endmodule


module Multipiler_5 ( A, Product );
  input [3:0] A;
  output [7:0] Product;
  wire   N6, N7, N8, N9, N10, N11, N14, N15, N16, N17, N18, N19, N20, N22, N23,
         N24, N25, N26, N27, N28, \add_15/carry[7] , \add_15/carry[6] ,
         \add_15/carry[5] , \add_14/carry[7] , \add_14/carry[6] ,
         \add_14/carry[5] , \add_13/carry[7] , \add_13/carry[6] ,
         \add_13/carry[5] , n3, n4, n5, n6, n7, n8;
  wire   [6:3] temp0;
  wire   [6:0] temp1;
  wire   [6:0] temp2;
  assign N6 = A[2];
  assign N7 = A[3];
  assign N8 = A[0];

  CLKINVX1 U2 ( .A(1'b1), .Y(Product[7]) );
  CLKINVX1 U4 ( .A(temp1[0]), .Y(n6) );
  AO22X1 U5 ( .A0(N19), .A1(temp1[0]), .B0(temp1[6]), .B1(n6), .Y(temp2[5]) );
  AO22X1 U6 ( .A0(N17), .A1(temp1[0]), .B0(temp1[4]), .B1(n6), .Y(N24) );
  AO22X1 U7 ( .A0(N18), .A1(temp1[0]), .B0(temp1[5]), .B1(n6), .Y(temp2[4]) );
  CLKINVX1 U8 ( .A(temp2[0]), .Y(n5) );
  NOR2X1 U9 ( .A(n7), .B(n8), .Y(temp0[4]) );
  AO22X1 U10 ( .A0(n5), .A1(temp2[4]), .B0(N25), .B1(temp2[0]), .Y(Product[3])
         );
  AO22X1 U11 ( .A0(n5), .A1(temp2[6]), .B0(N27), .B1(temp2[0]), .Y(Product[5])
         );
  AO22X1 U12 ( .A0(n5), .A1(N23), .B0(N23), .B1(temp2[0]), .Y(Product[1]) );
  AO22X1 U13 ( .A0(N16), .A1(temp1[0]), .B0(N16), .B1(n6), .Y(N23) );
  NOR2BX1 U14 ( .AN(N9), .B(n7), .Y(N16) );
  CLKINVX1 U15 ( .A(N8), .Y(n8) );
  AO22X1 U16 ( .A0(N6), .A1(n4), .B0(N6), .B1(n7), .Y(temp1[0]) );
  AO22X1 U17 ( .A0(N14), .A1(temp1[0]), .B0(N14), .B1(n6), .Y(temp2[0]) );
  AO22X1 U18 ( .A0(n7), .A1(N7), .B0(N7), .B1(n4), .Y(N14) );
  AO22X1 U19 ( .A0(n5), .A1(N24), .B0(N24), .B1(temp2[0]), .Y(Product[2]) );
  AO22X1 U20 ( .A0(n5), .A1(temp2[5]), .B0(N26), .B1(temp2[0]), .Y(Product[4])
         );
  NOR2X1 U21 ( .A(n3), .B(n7), .Y(temp1[6]) );
  XNOR2X1 U22 ( .A(N7), .B(\add_13/carry[7] ), .Y(n3) );
  OAI2BB2XL U23 ( .B0(n4), .B1(n8), .A0N(N8), .A1N(n4), .Y(N15) );
  AO22X1 U24 ( .A0(n7), .A1(temp0[6]), .B0(N11), .B1(n4), .Y(temp1[5]) );
  CLKINVX1 U25 ( .A(n4), .Y(n7) );
  AO22X1 U26 ( .A0(n7), .A1(temp0[5]), .B0(N10), .B1(n4), .Y(temp1[4]) );
  AND2X2 U27 ( .A(N6), .B(N8), .Y(temp0[5]) );
  ADDFXL U28 ( .A(temp0[5]), .B(n4), .CI(\add_13/carry[5] ), .CO(
        \add_13/carry[6] ), .S(N10) );
  AND2X2 U29 ( .A(N20), .B(temp1[0]), .Y(temp2[6]) );
  AND2X2 U30 ( .A(N7), .B(N8), .Y(temp0[6]) );
  ADDFXL U31 ( .A(temp1[5]), .B(n4), .CI(\add_14/carry[5] ), .CO(
        \add_14/carry[6] ), .S(N18) );
  ADDFXL U32 ( .A(temp2[5]), .B(n4), .CI(\add_15/carry[5] ), .CO(
        \add_15/carry[6] ), .S(N26) );
  ADDFXL U33 ( .A(temp1[6]), .B(N6), .CI(\add_14/carry[6] ), .CO(
        \add_14/carry[7] ), .S(N19) );
  ADDFXL U34 ( .A(temp0[6]), .B(N6), .CI(\add_13/carry[6] ), .CO(
        \add_13/carry[7] ), .S(N11) );
  ADDFXL U35 ( .A(temp2[6]), .B(N6), .CI(\add_15/carry[6] ), .CO(
        \add_15/carry[7] ), .S(N27) );
  NOR2BX1 U36 ( .AN(N28), .B(n5), .Y(Product[6]) );
  AO22X1 U37 ( .A0(n5), .A1(N22), .B0(N22), .B1(temp2[0]), .Y(Product[0]) );
  AO22X1 U38 ( .A0(N15), .A1(temp1[0]), .B0(N15), .B1(n6), .Y(N22) );
  CLKBUFX3 U39 ( .A(A[1]), .Y(n4) );
  XOR2X1 U40 ( .A(N7), .B(\add_15/carry[7] ), .Y(N28) );
  AND2X1 U41 ( .A(temp2[4]), .B(N8), .Y(\add_15/carry[5] ) );
  XOR2X1 U42 ( .A(N8), .B(temp2[4]), .Y(N25) );
  XOR2X1 U43 ( .A(N7), .B(\add_14/carry[7] ), .Y(N20) );
  AND2X1 U44 ( .A(temp1[4]), .B(N8), .Y(\add_14/carry[5] ) );
  XOR2X1 U45 ( .A(N8), .B(temp1[4]), .Y(N17) );
  AND2X1 U46 ( .A(temp0[4]), .B(N8), .Y(\add_13/carry[5] ) );
  XOR2X1 U47 ( .A(N8), .B(temp0[4]), .Y(N9) );
endmodule


module Multipiler_4 ( A, Product );
  input [3:0] A;
  output [7:0] Product;
  wire   N6, N7, N8, N9, N10, N11, N14, N15, N16, N17, N18, N19, N20, N22, N23,
         N24, N25, N26, N27, \add_15/carry[7] , \add_15/carry[6] ,
         \add_15/carry[5] , \add_14/carry[7] , \add_14/carry[6] ,
         \add_14/carry[5] , \add_13/carry[7] , \add_13/carry[6] ,
         \add_13/carry[5] , n3, n4, n5, n6, n7, n8, n9;
  wire   [6:3] temp0;
  wire   [6:0] temp1;
  wire   [6:0] temp2;
  assign N6 = A[2];
  assign N7 = A[3];
  assign N8 = A[0];

  CLKINVX1 U2 ( .A(1'b1), .Y(Product[7]) );
  AO22X1 U4 ( .A0(n6), .A1(temp2[4]), .B0(N25), .B1(temp2[0]), .Y(Product[3])
         );
  AO22X1 U5 ( .A0(n6), .A1(N23), .B0(N23), .B1(temp2[0]), .Y(Product[1]) );
  AO22X1 U6 ( .A0(N16), .A1(temp1[0]), .B0(N16), .B1(n7), .Y(N23) );
  NOR2BX1 U7 ( .AN(N9), .B(n8), .Y(N16) );
  AO22X1 U8 ( .A0(N18), .A1(temp1[0]), .B0(temp1[5]), .B1(n7), .Y(temp2[4]) );
  CLKINVX1 U9 ( .A(temp2[0]), .Y(n6) );
  CLKINVX1 U10 ( .A(temp1[0]), .Y(n7) );
  NOR2X1 U11 ( .A(n8), .B(n9), .Y(temp0[4]) );
  AO22X1 U12 ( .A0(N19), .A1(temp1[0]), .B0(temp1[6]), .B1(n7), .Y(temp2[5])
         );
  CLKINVX1 U13 ( .A(N8), .Y(n9) );
  AO22X1 U14 ( .A0(n6), .A1(N24), .B0(N24), .B1(temp2[0]), .Y(Product[2]) );
  AO22X1 U15 ( .A0(N17), .A1(temp1[0]), .B0(temp1[4]), .B1(n7), .Y(N24) );
  AO22X1 U16 ( .A0(N6), .A1(n5), .B0(N6), .B1(n8), .Y(temp1[0]) );
  AO22X1 U17 ( .A0(N14), .A1(temp1[0]), .B0(N14), .B1(n7), .Y(temp2[0]) );
  AO22X1 U18 ( .A0(n8), .A1(N7), .B0(N7), .B1(n5), .Y(N14) );
  AO22X1 U19 ( .A0(n8), .A1(temp0[6]), .B0(N11), .B1(n5), .Y(temp1[5]) );
  CLKINVX1 U20 ( .A(n5), .Y(n8) );
  AO22X1 U21 ( .A0(n8), .A1(temp0[5]), .B0(N10), .B1(n5), .Y(temp1[4]) );
  AND2X2 U22 ( .A(N6), .B(N8), .Y(temp0[5]) );
  ADDFXL U23 ( .A(temp0[5]), .B(n5), .CI(\add_13/carry[5] ), .CO(
        \add_13/carry[6] ), .S(N10) );
  AND2X2 U24 ( .A(N7), .B(N8), .Y(temp0[6]) );
  AO22X1 U25 ( .A0(n6), .A1(N22), .B0(N22), .B1(temp2[0]), .Y(Product[0]) );
  AO22X1 U26 ( .A0(N15), .A1(temp1[0]), .B0(N15), .B1(n7), .Y(N22) );
  OAI2BB2XL U27 ( .B0(n5), .B1(n9), .A0N(N8), .A1N(n5), .Y(N15) );
  ADDFXL U28 ( .A(temp1[5]), .B(n5), .CI(\add_14/carry[5] ), .CO(
        \add_14/carry[6] ), .S(N18) );
  ADDFXL U29 ( .A(temp0[6]), .B(N6), .CI(\add_13/carry[6] ), .CO(
        \add_13/carry[7] ), .S(N11) );
  NOR2X1 U30 ( .A(n3), .B(n6), .Y(Product[6]) );
  XNOR2X1 U31 ( .A(N7), .B(\add_15/carry[7] ), .Y(n3) );
  NOR2X1 U32 ( .A(n4), .B(n8), .Y(temp1[6]) );
  XNOR2X1 U33 ( .A(N7), .B(\add_13/carry[7] ), .Y(n4) );
  ADDFXL U34 ( .A(temp2[5]), .B(n5), .CI(\add_15/carry[5] ), .CO(
        \add_15/carry[6] ), .S(N26) );
  AND2X2 U35 ( .A(N20), .B(temp1[0]), .Y(temp2[6]) );
  ADDFXL U36 ( .A(temp1[6]), .B(N6), .CI(\add_14/carry[6] ), .CO(
        \add_14/carry[7] ), .S(N19) );
  ADDFXL U37 ( .A(temp2[6]), .B(N6), .CI(\add_15/carry[6] ), .CO(
        \add_15/carry[7] ), .S(N27) );
  CLKBUFX3 U38 ( .A(A[1]), .Y(n5) );
  AO22X1 U39 ( .A0(n6), .A1(temp2[6]), .B0(N27), .B1(temp2[0]), .Y(Product[5])
         );
  AO22X1 U40 ( .A0(n6), .A1(temp2[5]), .B0(N26), .B1(temp2[0]), .Y(Product[4])
         );
  AND2X1 U41 ( .A(temp2[4]), .B(N8), .Y(\add_15/carry[5] ) );
  XOR2X1 U42 ( .A(N8), .B(temp2[4]), .Y(N25) );
  XOR2X1 U43 ( .A(N7), .B(\add_14/carry[7] ), .Y(N20) );
  AND2X1 U44 ( .A(temp1[4]), .B(N8), .Y(\add_14/carry[5] ) );
  XOR2X1 U45 ( .A(N8), .B(temp1[4]), .Y(N17) );
  AND2X1 U46 ( .A(temp0[4]), .B(N8), .Y(\add_13/carry[5] ) );
  XOR2X1 U47 ( .A(N8), .B(temp0[4]), .Y(N9) );
endmodule


module Multipiler_3 ( A, Product );
  input [3:0] A;
  output [7:0] Product;
  wire   N6, N7, N8, N9, N10, N11, N14, N15, N16, N17, N18, N19, N20, N22, N23,
         N24, N25, N26, N27, N28, \add_15/carry[7] , \add_15/carry[6] ,
         \add_15/carry[5] , \add_14/carry[7] , \add_14/carry[6] ,
         \add_14/carry[5] , \add_13/carry[7] , \add_13/carry[6] ,
         \add_13/carry[5] , n3, n4, n5, n6, n7;
  wire   [6:3] temp0;
  wire   [6:0] temp1;
  wire   [6:0] temp2;
  assign N6 = A[2];
  assign N7 = A[3];
  assign N8 = A[0];

  CLKINVX1 U2 ( .A(1'b1), .Y(Product[7]) );
  AO22X1 U4 ( .A0(n4), .A1(N23), .B0(N23), .B1(temp2[0]), .Y(Product[1]) );
  AO22X1 U5 ( .A0(n4), .A1(temp2[6]), .B0(N27), .B1(temp2[0]), .Y(Product[5])
         );
  AO22X1 U6 ( .A0(n4), .A1(N24), .B0(N24), .B1(temp2[0]), .Y(Product[2]) );
  AO22X1 U7 ( .A0(N17), .A1(temp1[0]), .B0(temp1[4]), .B1(n5), .Y(N24) );
  AO22X1 U8 ( .A0(n4), .A1(temp2[5]), .B0(N26), .B1(temp2[0]), .Y(Product[4])
         );
  AO22X1 U9 ( .A0(N19), .A1(temp1[0]), .B0(temp1[6]), .B1(n5), .Y(temp2[5]) );
  AO22X1 U10 ( .A0(N18), .A1(temp1[0]), .B0(temp1[5]), .B1(n5), .Y(temp2[4])
         );
  CLKINVX1 U11 ( .A(temp2[0]), .Y(n4) );
  CLKINVX1 U12 ( .A(temp1[0]), .Y(n5) );
  NOR2X1 U13 ( .A(n6), .B(n7), .Y(temp0[4]) );
  AO22X1 U14 ( .A0(n4), .A1(temp2[4]), .B0(N25), .B1(temp2[0]), .Y(Product[3])
         );
  NOR2BX1 U15 ( .AN(N28), .B(n4), .Y(Product[6]) );
  AO22X1 U16 ( .A0(N6), .A1(A[1]), .B0(N6), .B1(n6), .Y(temp1[0]) );
  AO22X1 U17 ( .A0(N14), .A1(temp1[0]), .B0(N14), .B1(n5), .Y(temp2[0]) );
  AO22X1 U18 ( .A0(n6), .A1(N7), .B0(N7), .B1(A[1]), .Y(N14) );
  AO22X1 U19 ( .A0(n4), .A1(N22), .B0(N22), .B1(temp2[0]), .Y(Product[0]) );
  AO22X1 U20 ( .A0(N15), .A1(temp1[0]), .B0(N15), .B1(n5), .Y(N22) );
  OAI2BB2XL U21 ( .B0(A[1]), .B1(n7), .A0N(N8), .A1N(A[1]), .Y(N15) );
  NOR2X1 U22 ( .A(n3), .B(n6), .Y(temp1[6]) );
  XNOR2X1 U23 ( .A(N7), .B(\add_13/carry[7] ), .Y(n3) );
  AO22X1 U24 ( .A0(n6), .A1(temp0[6]), .B0(N11), .B1(A[1]), .Y(temp1[5]) );
  CLKINVX1 U25 ( .A(A[1]), .Y(n6) );
  AO22X1 U26 ( .A0(N16), .A1(temp1[0]), .B0(N16), .B1(n5), .Y(N23) );
  NOR2BX1 U27 ( .AN(N9), .B(n6), .Y(N16) );
  AO22X1 U28 ( .A0(n6), .A1(temp0[5]), .B0(N10), .B1(A[1]), .Y(temp1[4]) );
  ADDFXL U29 ( .A(temp0[5]), .B(A[1]), .CI(\add_13/carry[5] ), .CO(
        \add_13/carry[6] ), .S(N10) );
  ADDFXL U30 ( .A(temp1[5]), .B(A[1]), .CI(\add_14/carry[5] ), .CO(
        \add_14/carry[6] ), .S(N18) );
  ADDFXL U31 ( .A(temp2[5]), .B(A[1]), .CI(\add_15/carry[5] ), .CO(
        \add_15/carry[6] ), .S(N26) );
  AND2X2 U32 ( .A(N20), .B(temp1[0]), .Y(temp2[6]) );
  AND2X2 U33 ( .A(N6), .B(N8), .Y(temp0[5]) );
  AND2X2 U34 ( .A(N7), .B(N8), .Y(temp0[6]) );
  ADDFXL U35 ( .A(temp0[6]), .B(N6), .CI(\add_13/carry[6] ), .CO(
        \add_13/carry[7] ), .S(N11) );
  ADDFXL U36 ( .A(temp1[6]), .B(N6), .CI(\add_14/carry[6] ), .CO(
        \add_14/carry[7] ), .S(N19) );
  ADDFXL U37 ( .A(temp2[6]), .B(N6), .CI(\add_15/carry[6] ), .CO(
        \add_15/carry[7] ), .S(N27) );
  CLKINVX1 U38 ( .A(N8), .Y(n7) );
  XOR2X1 U39 ( .A(N7), .B(\add_15/carry[7] ), .Y(N28) );
  AND2X1 U40 ( .A(temp2[4]), .B(N8), .Y(\add_15/carry[5] ) );
  XOR2X1 U41 ( .A(N8), .B(temp2[4]), .Y(N25) );
  XOR2X1 U42 ( .A(N7), .B(\add_14/carry[7] ), .Y(N20) );
  AND2X1 U43 ( .A(temp1[4]), .B(N8), .Y(\add_14/carry[5] ) );
  XOR2X1 U44 ( .A(N8), .B(temp1[4]), .Y(N17) );
  AND2X1 U45 ( .A(temp0[4]), .B(N8), .Y(\add_13/carry[5] ) );
  XOR2X1 U46 ( .A(N8), .B(temp0[4]), .Y(N9) );
endmodule


module Multipiler_2 ( A, Product );
  input [3:0] A;
  output [7:0] Product;
  wire   N6, N7, N8, N9, N10, N11, N14, N15, N16, N17, N18, N19, N20, N22, N23,
         N24, N25, N26, N27, N28, \add_15/carry[7] , \add_15/carry[6] ,
         \add_15/carry[5] , \add_14/carry[7] , \add_14/carry[6] ,
         \add_14/carry[5] , \add_13/carry[7] , \add_13/carry[6] ,
         \add_13/carry[5] , n3, n4, n5, n6, n7;
  wire   [6:3] temp0;
  wire   [6:0] temp1;
  wire   [6:0] temp2;
  assign N6 = A[2];
  assign N7 = A[3];
  assign N8 = A[0];

  CLKINVX1 U2 ( .A(1'b1), .Y(Product[7]) );
  AO22X1 U4 ( .A0(n4), .A1(N23), .B0(N23), .B1(temp2[0]), .Y(Product[1]) );
  AO22X1 U5 ( .A0(n4), .A1(temp2[6]), .B0(N27), .B1(temp2[0]), .Y(Product[5])
         );
  AO22X1 U6 ( .A0(n4), .A1(N24), .B0(N24), .B1(temp2[0]), .Y(Product[2]) );
  AO22X1 U7 ( .A0(N17), .A1(temp1[0]), .B0(temp1[4]), .B1(n5), .Y(N24) );
  AO22X1 U8 ( .A0(n4), .A1(temp2[5]), .B0(N26), .B1(temp2[0]), .Y(Product[4])
         );
  AO22X1 U9 ( .A0(N19), .A1(temp1[0]), .B0(temp1[6]), .B1(n5), .Y(temp2[5]) );
  AO22X1 U10 ( .A0(N18), .A1(temp1[0]), .B0(temp1[5]), .B1(n5), .Y(temp2[4])
         );
  CLKINVX1 U11 ( .A(temp2[0]), .Y(n4) );
  CLKINVX1 U12 ( .A(temp1[0]), .Y(n5) );
  NOR2X1 U13 ( .A(n6), .B(n7), .Y(temp0[4]) );
  AO22X1 U14 ( .A0(n4), .A1(temp2[4]), .B0(N25), .B1(temp2[0]), .Y(Product[3])
         );
  NOR2BX1 U15 ( .AN(N28), .B(n4), .Y(Product[6]) );
  AO22X1 U16 ( .A0(N6), .A1(A[1]), .B0(N6), .B1(n6), .Y(temp1[0]) );
  AO22X1 U17 ( .A0(N14), .A1(temp1[0]), .B0(N14), .B1(n5), .Y(temp2[0]) );
  AO22X1 U18 ( .A0(n6), .A1(N7), .B0(N7), .B1(A[1]), .Y(N14) );
  AO22X1 U19 ( .A0(n4), .A1(N22), .B0(N22), .B1(temp2[0]), .Y(Product[0]) );
  AO22X1 U20 ( .A0(N15), .A1(temp1[0]), .B0(N15), .B1(n5), .Y(N22) );
  OAI2BB2XL U21 ( .B0(A[1]), .B1(n7), .A0N(N8), .A1N(A[1]), .Y(N15) );
  NOR2X1 U22 ( .A(n3), .B(n6), .Y(temp1[6]) );
  XNOR2X1 U23 ( .A(N7), .B(\add_13/carry[7] ), .Y(n3) );
  AO22X1 U24 ( .A0(n6), .A1(temp0[6]), .B0(N11), .B1(A[1]), .Y(temp1[5]) );
  CLKINVX1 U25 ( .A(A[1]), .Y(n6) );
  AO22X1 U26 ( .A0(N16), .A1(temp1[0]), .B0(N16), .B1(n5), .Y(N23) );
  NOR2BX1 U27 ( .AN(N9), .B(n6), .Y(N16) );
  AO22X1 U28 ( .A0(n6), .A1(temp0[5]), .B0(N10), .B1(A[1]), .Y(temp1[4]) );
  ADDFXL U29 ( .A(temp0[5]), .B(A[1]), .CI(\add_13/carry[5] ), .CO(
        \add_13/carry[6] ), .S(N10) );
  ADDFXL U30 ( .A(temp1[5]), .B(A[1]), .CI(\add_14/carry[5] ), .CO(
        \add_14/carry[6] ), .S(N18) );
  ADDFXL U31 ( .A(temp2[5]), .B(A[1]), .CI(\add_15/carry[5] ), .CO(
        \add_15/carry[6] ), .S(N26) );
  AND2X2 U32 ( .A(N20), .B(temp1[0]), .Y(temp2[6]) );
  AND2X2 U33 ( .A(N6), .B(N8), .Y(temp0[5]) );
  AND2X2 U34 ( .A(N7), .B(N8), .Y(temp0[6]) );
  ADDFXL U35 ( .A(temp0[6]), .B(N6), .CI(\add_13/carry[6] ), .CO(
        \add_13/carry[7] ), .S(N11) );
  ADDFXL U36 ( .A(temp1[6]), .B(N6), .CI(\add_14/carry[6] ), .CO(
        \add_14/carry[7] ), .S(N19) );
  ADDFXL U37 ( .A(temp2[6]), .B(N6), .CI(\add_15/carry[6] ), .CO(
        \add_15/carry[7] ), .S(N27) );
  CLKINVX1 U38 ( .A(N8), .Y(n7) );
  XOR2X1 U39 ( .A(N7), .B(\add_15/carry[7] ), .Y(N28) );
  AND2X1 U40 ( .A(temp2[4]), .B(N8), .Y(\add_15/carry[5] ) );
  XOR2X1 U41 ( .A(N8), .B(temp2[4]), .Y(N25) );
  XOR2X1 U42 ( .A(N7), .B(\add_14/carry[7] ), .Y(N20) );
  AND2X1 U43 ( .A(temp1[4]), .B(N8), .Y(\add_14/carry[5] ) );
  XOR2X1 U44 ( .A(N8), .B(temp1[4]), .Y(N17) );
  AND2X1 U45 ( .A(temp0[4]), .B(N8), .Y(\add_13/carry[5] ) );
  XOR2X1 U46 ( .A(N8), .B(temp0[4]), .Y(N9) );
endmodule


module Multipiler_1 ( A, Product );
  input [3:0] A;
  output [7:0] Product;
  wire   N6, N7, N8, N9, N10, N11, N14, N15, N16, N17, N18, N19, N20, N22, N23,
         N24, N25, N26, N27, N28, \add_15/carry[7] , \add_15/carry[6] ,
         \add_15/carry[5] , \add_14/carry[7] , \add_14/carry[6] ,
         \add_14/carry[5] , \add_13/carry[7] , \add_13/carry[6] ,
         \add_13/carry[5] , n3, n4, n5, n6, n7;
  wire   [6:3] temp0;
  wire   [6:0] temp1;
  wire   [6:0] temp2;
  assign N6 = A[2];
  assign N7 = A[3];
  assign N8 = A[0];

  CLKINVX1 U2 ( .A(1'b1), .Y(Product[7]) );
  AO22X1 U4 ( .A0(n4), .A1(N23), .B0(N23), .B1(temp2[0]), .Y(Product[1]) );
  AO22X1 U5 ( .A0(n4), .A1(temp2[6]), .B0(N27), .B1(temp2[0]), .Y(Product[5])
         );
  AO22X1 U6 ( .A0(n4), .A1(N24), .B0(N24), .B1(temp2[0]), .Y(Product[2]) );
  AO22X1 U7 ( .A0(N17), .A1(temp1[0]), .B0(temp1[4]), .B1(n5), .Y(N24) );
  AO22X1 U8 ( .A0(n4), .A1(temp2[5]), .B0(N26), .B1(temp2[0]), .Y(Product[4])
         );
  AO22X1 U9 ( .A0(N19), .A1(temp1[0]), .B0(temp1[6]), .B1(n5), .Y(temp2[5]) );
  AO22X1 U10 ( .A0(N18), .A1(temp1[0]), .B0(temp1[5]), .B1(n5), .Y(temp2[4])
         );
  CLKINVX1 U11 ( .A(temp2[0]), .Y(n4) );
  CLKINVX1 U12 ( .A(temp1[0]), .Y(n5) );
  NOR2X1 U13 ( .A(n6), .B(n7), .Y(temp0[4]) );
  AO22X1 U14 ( .A0(n4), .A1(temp2[4]), .B0(N25), .B1(temp2[0]), .Y(Product[3])
         );
  NOR2BX1 U15 ( .AN(N28), .B(n4), .Y(Product[6]) );
  AO22X1 U16 ( .A0(N6), .A1(A[1]), .B0(N6), .B1(n6), .Y(temp1[0]) );
  AO22X1 U17 ( .A0(N14), .A1(temp1[0]), .B0(N14), .B1(n5), .Y(temp2[0]) );
  AO22X1 U18 ( .A0(n6), .A1(N7), .B0(N7), .B1(A[1]), .Y(N14) );
  AO22X1 U19 ( .A0(n4), .A1(N22), .B0(N22), .B1(temp2[0]), .Y(Product[0]) );
  AO22X1 U20 ( .A0(N15), .A1(temp1[0]), .B0(N15), .B1(n5), .Y(N22) );
  OAI2BB2XL U21 ( .B0(A[1]), .B1(n7), .A0N(N8), .A1N(A[1]), .Y(N15) );
  NOR2X1 U22 ( .A(n3), .B(n6), .Y(temp1[6]) );
  XNOR2X1 U23 ( .A(N7), .B(\add_13/carry[7] ), .Y(n3) );
  AO22X1 U24 ( .A0(n6), .A1(temp0[6]), .B0(N11), .B1(A[1]), .Y(temp1[5]) );
  CLKINVX1 U25 ( .A(A[1]), .Y(n6) );
  AO22X1 U26 ( .A0(N16), .A1(temp1[0]), .B0(N16), .B1(n5), .Y(N23) );
  NOR2BX1 U27 ( .AN(N9), .B(n6), .Y(N16) );
  AO22X1 U28 ( .A0(n6), .A1(temp0[5]), .B0(N10), .B1(A[1]), .Y(temp1[4]) );
  ADDFXL U29 ( .A(temp0[5]), .B(A[1]), .CI(\add_13/carry[5] ), .CO(
        \add_13/carry[6] ), .S(N10) );
  ADDFXL U30 ( .A(temp1[5]), .B(A[1]), .CI(\add_14/carry[5] ), .CO(
        \add_14/carry[6] ), .S(N18) );
  ADDFXL U31 ( .A(temp2[5]), .B(A[1]), .CI(\add_15/carry[5] ), .CO(
        \add_15/carry[6] ), .S(N26) );
  AND2X2 U32 ( .A(N20), .B(temp1[0]), .Y(temp2[6]) );
  AND2X2 U33 ( .A(N6), .B(N8), .Y(temp0[5]) );
  AND2X2 U34 ( .A(N7), .B(N8), .Y(temp0[6]) );
  ADDFXL U35 ( .A(temp0[6]), .B(N6), .CI(\add_13/carry[6] ), .CO(
        \add_13/carry[7] ), .S(N11) );
  ADDFXL U36 ( .A(temp1[6]), .B(N6), .CI(\add_14/carry[6] ), .CO(
        \add_14/carry[7] ), .S(N19) );
  ADDFXL U37 ( .A(temp2[6]), .B(N6), .CI(\add_15/carry[6] ), .CO(
        \add_15/carry[7] ), .S(N27) );
  CLKINVX1 U38 ( .A(N8), .Y(n7) );
  XOR2X1 U39 ( .A(N7), .B(\add_15/carry[7] ), .Y(N28) );
  AND2X1 U40 ( .A(temp2[4]), .B(N8), .Y(\add_15/carry[5] ) );
  XOR2X1 U41 ( .A(N8), .B(temp2[4]), .Y(N25) );
  XOR2X1 U42 ( .A(N7), .B(\add_14/carry[7] ), .Y(N20) );
  AND2X1 U43 ( .A(temp1[4]), .B(N8), .Y(\add_14/carry[5] ) );
  XOR2X1 U44 ( .A(N8), .B(temp1[4]), .Y(N17) );
  AND2X1 U45 ( .A(temp0[4]), .B(N8), .Y(\add_13/carry[5] ) );
  XOR2X1 U46 ( .A(N8), .B(temp0[4]), .Y(N9) );
endmodule


module JUDGE_0_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [8:0] carry;

  ADDFXL U2_6 ( .A(A[6]), .B(n2), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  XOR3X1 U2_7 ( .A(A[7]), .B(n9), .C(carry[7]), .Y(DIFF[7]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n4), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n7), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n3), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n8), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  CLKINVX1 U1 ( .A(B[0]), .Y(n5) );
  XNOR2X1 U2 ( .A(n5), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U3 ( .A(B[1]), .Y(n8) );
  NAND2X1 U4 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U5 ( .A(B[5]), .Y(n3) );
  CLKINVX1 U6 ( .A(B[2]), .Y(n7) );
  CLKINVX1 U7 ( .A(B[4]), .Y(n4) );
  CLKINVX1 U8 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U9 ( .A(B[3]), .Y(n6) );
  CLKINVX1 U10 ( .A(B[6]), .Y(n2) );
  CLKINVX1 U11 ( .A(B[7]), .Y(n9) );
endmodule


module JUDGE_0_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   \carry[7] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16;

  XOR3X1 U2_7 ( .A(A[7]), .B(n4), .C(\carry[7] ), .Y(DIFF[7]) );
  CLKINVX1 U1 ( .A(A[1]), .Y(n3) );
  CLKINVX1 U2 ( .A(A[5]), .Y(n1) );
  CLKINVX1 U3 ( .A(A[3]), .Y(n2) );
  CLKINVX1 U4 ( .A(B[7]), .Y(n4) );
  OAI2BB2XL U5 ( .B0(B[6]), .B1(n5), .A0N(n6), .A1N(A[6]), .Y(\carry[7] ) );
  NOR2X1 U6 ( .A(A[6]), .B(n6), .Y(n5) );
  OAI22XL U7 ( .A0(n7), .A1(n1), .B0(B[5]), .B1(n8), .Y(n6) );
  AND2X1 U8 ( .A(n7), .B(n1), .Y(n8) );
  AOI2BB2X1 U9 ( .B0(n9), .B1(A[4]), .A0N(B[4]), .A1N(n10), .Y(n7) );
  NOR2X1 U10 ( .A(A[4]), .B(n9), .Y(n10) );
  OAI22XL U11 ( .A0(n11), .A1(n2), .B0(B[3]), .B1(n12), .Y(n9) );
  AND2X1 U12 ( .A(n11), .B(n2), .Y(n12) );
  AOI2BB2X1 U13 ( .B0(n13), .B1(A[2]), .A0N(B[2]), .A1N(n14), .Y(n11) );
  NOR2X1 U14 ( .A(A[2]), .B(n13), .Y(n14) );
  OAI22XL U15 ( .A0(n15), .A1(n3), .B0(B[1]), .B1(n16), .Y(n13) );
  AND2X1 U16 ( .A(n15), .B(n3), .Y(n16) );
  NOR2BX1 U17 ( .AN(B[0]), .B(A[0]), .Y(n15) );
endmodule


module JUDGE_0 ( square_x, square_y, square_r, ans );
  input [7:0] square_x;
  input [7:0] square_y;
  input [7:0] square_r;
  output ans;
  wire   \diff_square[7] , N7, N6, N5, N4, N3, N2, N1, N0;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6;

  JUDGE_0_DW01_sub_1 sub_1_root_sub_0_root_sub_10_2 ( .A(square_r), .B(
        square_y), .CI(1'b0), .DIFF({N7, N6, N5, N4, N3, N2, N1, N0}) );
  JUDGE_0_DW01_sub_0 sub_0_root_sub_0_root_sub_10_2 ( .A({N7, N6, N5, N4, N3, 
        N2, N1, N0}), .B(square_x), .CI(1'b0), .DIFF({\diff_square[7] , 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6}) );
  CLKINVX1 U1 ( .A(\diff_square[7] ), .Y(ans) );
endmodule


module JUDGE_2_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [8:0] carry;

  ADDFXL U2_6 ( .A(A[6]), .B(n2), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  XOR3X1 U2_7 ( .A(A[7]), .B(n9), .C(carry[7]), .Y(DIFF[7]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n4), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n7), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n3), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n8), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  CLKINVX1 U1 ( .A(B[0]), .Y(n5) );
  XNOR2X1 U2 ( .A(n5), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U3 ( .A(B[1]), .Y(n8) );
  NAND2X1 U4 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U5 ( .A(B[5]), .Y(n3) );
  CLKINVX1 U6 ( .A(B[2]), .Y(n7) );
  CLKINVX1 U7 ( .A(B[4]), .Y(n4) );
  CLKINVX1 U8 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U9 ( .A(B[3]), .Y(n6) );
  CLKINVX1 U10 ( .A(B[6]), .Y(n2) );
  CLKINVX1 U11 ( .A(B[7]), .Y(n9) );
endmodule


module JUDGE_2_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   \carry[7] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16;

  XOR3X1 U2_7 ( .A(A[7]), .B(n4), .C(\carry[7] ), .Y(DIFF[7]) );
  CLKINVX1 U1 ( .A(A[1]), .Y(n3) );
  CLKINVX1 U2 ( .A(A[5]), .Y(n1) );
  CLKINVX1 U3 ( .A(A[3]), .Y(n2) );
  CLKINVX1 U4 ( .A(B[7]), .Y(n4) );
  OAI2BB2XL U5 ( .B0(B[6]), .B1(n5), .A0N(n6), .A1N(A[6]), .Y(\carry[7] ) );
  NOR2X1 U6 ( .A(A[6]), .B(n6), .Y(n5) );
  OAI22XL U7 ( .A0(n7), .A1(n1), .B0(B[5]), .B1(n8), .Y(n6) );
  AND2X1 U8 ( .A(n7), .B(n1), .Y(n8) );
  AOI2BB2X1 U9 ( .B0(n9), .B1(A[4]), .A0N(B[4]), .A1N(n10), .Y(n7) );
  NOR2X1 U10 ( .A(A[4]), .B(n9), .Y(n10) );
  OAI22XL U11 ( .A0(n11), .A1(n2), .B0(B[3]), .B1(n12), .Y(n9) );
  AND2X1 U12 ( .A(n11), .B(n2), .Y(n12) );
  AOI2BB2X1 U13 ( .B0(n13), .B1(A[2]), .A0N(B[2]), .A1N(n14), .Y(n11) );
  NOR2X1 U14 ( .A(A[2]), .B(n13), .Y(n14) );
  OAI22XL U15 ( .A0(n15), .A1(n3), .B0(B[1]), .B1(n16), .Y(n13) );
  AND2X1 U16 ( .A(n15), .B(n3), .Y(n16) );
  NOR2BX1 U17 ( .AN(B[0]), .B(A[0]), .Y(n15) );
endmodule


module JUDGE_2 ( square_x, square_y, square_r, ans );
  input [7:0] square_x;
  input [7:0] square_y;
  input [7:0] square_r;
  output ans;
  wire   \diff_square[7] , N7, N6, N5, N4, N3, N2, N1, N0;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6;

  JUDGE_2_DW01_sub_1 sub_1_root_sub_0_root_sub_10_2 ( .A(square_r), .B(
        square_y), .CI(1'b0), .DIFF({N7, N6, N5, N4, N3, N2, N1, N0}) );
  JUDGE_2_DW01_sub_0 sub_0_root_sub_0_root_sub_10_2 ( .A({N7, N6, N5, N4, N3, 
        N2, N1, N0}), .B(square_x), .CI(1'b0), .DIFF({\diff_square[7] , 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6}) );
  CLKINVX1 U1 ( .A(\diff_square[7] ), .Y(ans) );
endmodule


module JUDGE_1_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [8:0] carry;

  ADDFXL U2_6 ( .A(A[6]), .B(n2), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  XOR3X1 U2_7 ( .A(A[7]), .B(n9), .C(carry[7]), .Y(DIFF[7]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n4), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n7), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n3), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n8), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  CLKINVX1 U1 ( .A(B[0]), .Y(n5) );
  XNOR2X1 U2 ( .A(n5), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U3 ( .A(B[1]), .Y(n8) );
  NAND2X1 U4 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U5 ( .A(B[5]), .Y(n3) );
  CLKINVX1 U6 ( .A(B[2]), .Y(n7) );
  CLKINVX1 U7 ( .A(B[4]), .Y(n4) );
  CLKINVX1 U8 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U9 ( .A(B[3]), .Y(n6) );
  CLKINVX1 U10 ( .A(B[6]), .Y(n2) );
  CLKINVX1 U11 ( .A(B[7]), .Y(n9) );
endmodule


module JUDGE_1_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   \carry[7] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16;

  XOR3X1 U2_7 ( .A(A[7]), .B(n4), .C(\carry[7] ), .Y(DIFF[7]) );
  CLKINVX1 U1 ( .A(A[1]), .Y(n3) );
  CLKINVX1 U2 ( .A(A[5]), .Y(n1) );
  CLKINVX1 U3 ( .A(A[3]), .Y(n2) );
  CLKINVX1 U4 ( .A(B[7]), .Y(n4) );
  OAI2BB2XL U5 ( .B0(B[6]), .B1(n5), .A0N(n6), .A1N(A[6]), .Y(\carry[7] ) );
  NOR2X1 U6 ( .A(A[6]), .B(n6), .Y(n5) );
  OAI22XL U7 ( .A0(n7), .A1(n1), .B0(B[5]), .B1(n8), .Y(n6) );
  AND2X1 U8 ( .A(n7), .B(n1), .Y(n8) );
  AOI2BB2X1 U9 ( .B0(n9), .B1(A[4]), .A0N(B[4]), .A1N(n10), .Y(n7) );
  NOR2X1 U10 ( .A(A[4]), .B(n9), .Y(n10) );
  OAI22XL U11 ( .A0(n11), .A1(n2), .B0(B[3]), .B1(n12), .Y(n9) );
  AND2X1 U12 ( .A(n11), .B(n2), .Y(n12) );
  AOI2BB2X1 U13 ( .B0(n13), .B1(A[2]), .A0N(B[2]), .A1N(n14), .Y(n11) );
  NOR2X1 U14 ( .A(A[2]), .B(n13), .Y(n14) );
  OAI22XL U15 ( .A0(n15), .A1(n3), .B0(B[1]), .B1(n16), .Y(n13) );
  AND2X1 U16 ( .A(n15), .B(n3), .Y(n16) );
  NOR2BX1 U17 ( .AN(B[0]), .B(A[0]), .Y(n15) );
endmodule


module JUDGE_1 ( square_x, square_y, square_r, ans );
  input [7:0] square_x;
  input [7:0] square_y;
  input [7:0] square_r;
  output ans;
  wire   \diff_square[7] , N7, N6, N5, N4, N3, N2, N1, N0;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6;

  JUDGE_1_DW01_sub_1 sub_1_root_sub_0_root_sub_10_2 ( .A(square_r), .B(
        square_y), .CI(1'b0), .DIFF({N7, N6, N5, N4, N3, N2, N1, N0}) );
  JUDGE_1_DW01_sub_0 sub_0_root_sub_0_root_sub_10_2 ( .A({N7, N6, N5, N4, N3, 
        N2, N1, N0}), .B(square_x), .CI(1'b0), .DIFF({\diff_square[7] , 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6}) );
  CLKINVX1 U1 ( .A(\diff_square[7] ), .Y(ans) );
endmodule


module COUNT_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  XOR2X1 U1 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module COUNT ( A, B, C, mode, state, CountIn, CountOut );
  input [1:0] mode;
  input [1:0] state;
  input [7:0] CountIn;
  output [7:0] CountOut;
  input A, B, C;
  wire   N5, N6, N7, N8, N9, N10, N11, N12, n5, n6, n7, n8, n9, n10, n11, n12,
         n1, n2, n3, n4;

  COUNT_DW01_inc_0 add_29 ( .A(CountIn), .SUM({N12, N11, N10, N9, N8, N7, N6, 
        N5}) );
  CLKINVX1 U2 ( .A(n5), .Y(n1) );
  CLKINVX1 U3 ( .A(A), .Y(n2) );
  NAND2X1 U4 ( .A(n6), .B(n7), .Y(n5) );
  XOR2X1 U5 ( .A(state[1]), .B(state[0]), .Y(n6) );
  OAI22XL U6 ( .A0(n8), .A1(n3), .B0(n2), .B1(n9), .Y(n7) );
  OAI21XL U7 ( .A0(B), .A1(n4), .B0(n3), .Y(n9) );
  AO22X1 U8 ( .A0(N12), .A1(n1), .B0(CountIn[7]), .B1(n5), .Y(CountOut[7]) );
  AO22X1 U9 ( .A0(N5), .A1(n1), .B0(CountIn[0]), .B1(n5), .Y(CountOut[0]) );
  AO22X1 U10 ( .A0(N6), .A1(n1), .B0(CountIn[1]), .B1(n5), .Y(CountOut[1]) );
  AO22X1 U11 ( .A0(N7), .A1(n1), .B0(CountIn[2]), .B1(n5), .Y(CountOut[2]) );
  AO22X1 U12 ( .A0(N8), .A1(n1), .B0(CountIn[3]), .B1(n5), .Y(CountOut[3]) );
  AO22X1 U13 ( .A0(N9), .A1(n1), .B0(CountIn[4]), .B1(n5), .Y(CountOut[4]) );
  AO22X1 U14 ( .A0(N10), .A1(n1), .B0(CountIn[5]), .B1(n5), .Y(CountOut[5]) );
  AO22X1 U15 ( .A0(N11), .A1(n1), .B0(CountIn[6]), .B1(n5), .Y(CountOut[6]) );
  AOI2BB2X1 U16 ( .B0(n10), .B1(n4), .A0N(n11), .A1N(n12), .Y(n8) );
  OAI21XL U17 ( .A0(B), .A1(A), .B0(mode[0]), .Y(n12) );
  XOR2X1 U18 ( .A(C), .B(n10), .Y(n11) );
  XNOR2X1 U19 ( .A(n2), .B(B), .Y(n10) );
  CLKINVX1 U20 ( .A(mode[0]), .Y(n4) );
  CLKINVX1 U21 ( .A(mode[1]), .Y(n3) );
endmodule


module SET_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  XOR2X1 U1 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module SET ( clk, rst, en, central, radius, mode, busy, valid, candidate );
  input [23:0] central;
  input [11:0] radius;
  input [1:0] mode;
  output [7:0] candidate;
  input clk, rst, en;
  output busy, valid;
  wire   N15, N16, N17, N18, N19, N20, N21, N22, N38, N39, N40, N41, N42, N43,
         N44, N45, N46, N47, N48, N49, N50, N51, N52, ans_A, ans_B, ans_C, n52,
         n53, n54, n56, n57, n58, n59, n60, n61, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n74, n78, n79, n80, n82, n83, n84, n85, n86, n87,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n102, n103,
         n104, n106, n107, n108, n109, n110, n111, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n126, n127, n128, n130,
         n131, n132, n133, n134, n135, n137, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n148, n152, n153, n154, n156, n157, n158,
         n159, n160, n161, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n176, n177, n178, n180, n181, n182, n183, n184,
         n185, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n201, n205, n206, n207, n209, n211, n212, n213, n214, n215,
         n216, n218, n219, n220, n221, n222, n223, n225, n226, n227, n228,
         n229, n230, n232, n233, n234, n235, n236, n237, n238, n239, n240,
         n241, n242, \r412/carry[2] , \r412/carry[3] , \r412/carry[4] ,
         \r412/carry[5] , \r412/carry[6] , \r412/carry[7] , n244, n245, n246,
         n247, n248, n249, n250, n251, n252, n253, n254, n255, n256, n257,
         n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, n268,
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279,
         n280, n281, n282, n283, n284;
  wire   [1:0] ns;
  wire   [7:0] target_cs;
  wire   [7:0] CountIn;
  wire   [1:0] cs;
  wire   [3:0] xdiff_A;
  wire   [3:0] ydiff_A;
  wire   [3:0] xdiff_B;
  wire   [3:0] ydiff_B;
  wire   [3:0] xdiff_C;
  wire   [3:0] ydiff_C;
  wire   [7:0] Prod_xdA;
  wire   [7:0] Prod_ydA;
  wire   [7:0] Prod_xdB;
  wire   [7:0] Prod_ydB;
  wire   [7:0] Prod_xdC;
  wire   [7:0] Prod_ydC;
  wire   [7:0] Prod_rA;
  wire   [7:0] Prod_rB;
  wire   [7:0] Prod_rC;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8;

  Multipiler_0 M0 ( .A(xdiff_A), .Product({SYNOPSYS_UNCONNECTED__0, 
        Prod_xdA[6:0]}) );
  Multipiler_8 M1 ( .A(ydiff_A), .Product({SYNOPSYS_UNCONNECTED__1, 
        Prod_ydA[6:0]}) );
  Multipiler_7 M2 ( .A(xdiff_B), .Product({SYNOPSYS_UNCONNECTED__2, 
        Prod_xdB[6:0]}) );
  Multipiler_6 M3 ( .A(ydiff_B), .Product({SYNOPSYS_UNCONNECTED__3, 
        Prod_ydB[6:0]}) );
  Multipiler_5 M4 ( .A(xdiff_C), .Product({SYNOPSYS_UNCONNECTED__4, 
        Prod_xdC[6:0]}) );
  Multipiler_4 M5 ( .A(ydiff_C), .Product({SYNOPSYS_UNCONNECTED__5, 
        Prod_ydC[6:0]}) );
  Multipiler_3 M6 ( .A(radius[11:8]), .Product({SYNOPSYS_UNCONNECTED__6, 
        Prod_rA[6:0]}) );
  Multipiler_2 M7 ( .A(radius[7:4]), .Product({SYNOPSYS_UNCONNECTED__7, 
        Prod_rB[6:0]}) );
  Multipiler_1 M8 ( .A(radius[3:0]), .Product({SYNOPSYS_UNCONNECTED__8, 
        Prod_rC[6:0]}) );
  JUDGE_0 JA ( .square_x({1'b0, Prod_xdA[6:0]}), .square_y({1'b0, 
        Prod_ydA[6:0]}), .square_r({1'b0, Prod_rA[6:0]}), .ans(ans_A) );
  JUDGE_2 JB ( .square_x({1'b0, Prod_xdB[6:0]}), .square_y({1'b0, 
        Prod_ydB[6:0]}), .square_r({1'b0, Prod_rB[6:0]}), .ans(ans_B) );
  JUDGE_1 JC ( .square_x({1'b0, Prod_xdC[6:0]}), .square_y({1'b0, 
        Prod_ydC[6:0]}), .square_r({1'b0, Prod_rC[6:0]}), .ans(ans_C) );
  COUNT C0 ( .A(ans_A), .B(ans_B), .C(ans_C), .mode(mode), .state(cs), 
        .CountIn(CountIn), .CountOut(candidate) );
  SET_DW01_inc_0 r413 ( .A({target_cs[7:6], n252, n251, n255, target_cs[2], 
        n254, n253}), .SUM({N52, N51, N50, N49, N48, N47, N46, N45}) );
  DFFRX1 \CountIn_reg[7]  ( .D(N22), .CK(clk), .RN(n256), .Q(CountIn[7]) );
  DFFRX1 \CountIn_reg[0]  ( .D(N15), .CK(clk), .RN(n256), .Q(CountIn[0]) );
  DFFRX1 \CountIn_reg[1]  ( .D(N16), .CK(clk), .RN(n256), .Q(CountIn[1]) );
  DFFRX1 \CountIn_reg[2]  ( .D(N17), .CK(clk), .RN(n256), .Q(CountIn[2]) );
  DFFRX1 \CountIn_reg[3]  ( .D(N18), .CK(clk), .RN(n256), .Q(CountIn[3]) );
  DFFRX1 \CountIn_reg[4]  ( .D(N19), .CK(clk), .RN(n256), .Q(CountIn[4]) );
  DFFRX1 \CountIn_reg[5]  ( .D(N20), .CK(clk), .RN(n256), .Q(CountIn[5]) );
  DFFRX1 \CountIn_reg[6]  ( .D(N21), .CK(clk), .RN(n256), .Q(CountIn[6]) );
  DFFRX1 \cs_reg[0]  ( .D(ns[0]), .CK(clk), .RN(n256), .Q(cs[0]), .QN(n234) );
  DFFRX1 \target_cs_reg[3]  ( .D(n239), .CK(clk), .RN(n256), .Q(target_cs[3]), 
        .QN(n245) );
  DFFRX1 \target_cs_reg[1]  ( .D(n237), .CK(clk), .RN(n256), .Q(target_cs[1]), 
        .QN(n248) );
  DFFRX1 \target_cs_reg[0]  ( .D(n236), .CK(clk), .RN(n256), .Q(target_cs[0]), 
        .QN(n250) );
  DFFRX1 \target_cs_reg[5]  ( .D(n235), .CK(clk), .RN(n256), .Q(target_cs[5]), 
        .QN(n249) );
  DFFSX1 \target_cs_reg[4]  ( .D(n242), .CK(clk), .SN(n256), .Q(target_cs[4])
         );
  DFFRX1 \target_cs_reg[2]  ( .D(n238), .CK(clk), .RN(n256), .Q(target_cs[2]), 
        .QN(n244) );
  DFFRX1 \cs_reg[1]  ( .D(ns[1]), .CK(clk), .RN(n256), .Q(cs[1]), .QN(n233) );
  DFFRX1 \target_cs_reg[7]  ( .D(n240), .CK(clk), .RN(n256), .Q(target_cs[7]), 
        .QN(n247) );
  DFFRX1 \target_cs_reg[6]  ( .D(n241), .CK(clk), .RN(n256), .Q(target_cs[6]), 
        .QN(n246) );
  OAI22XL U230 ( .A0(n106), .A1(n113), .B0(n263), .B1(n114), .Y(ydiff_A[2]) );
  OAI22XL U231 ( .A0(n82), .A1(n89), .B0(n271), .B1(n90), .Y(ydiff_B[2]) );
  OAI22XL U232 ( .A0(n56), .A1(n63), .B0(n279), .B1(n64), .Y(ydiff_C[2]) );
  OAI22XL U233 ( .A0(n180), .A1(n187), .B0(n259), .B1(n188), .Y(xdiff_A[2]) );
  OAI22XL U234 ( .A0(n156), .A1(n163), .B0(n267), .B1(n164), .Y(xdiff_B[2]) );
  OAI22XL U235 ( .A0(n130), .A1(n137), .B0(n275), .B1(n138), .Y(xdiff_C[2]) );
  AOI22X1 U236 ( .A0(central[3]), .A1(n245), .B0(n53), .B1(n74), .Y(n56) );
  AOI22X1 U237 ( .A0(central[19]), .A1(n245), .B0(n103), .B1(n123), .Y(n106)
         );
  AOI22X1 U238 ( .A0(central[11]), .A1(n245), .B0(n79), .B1(n99), .Y(n82) );
  AOI22X1 U239 ( .A0(central[7]), .A1(n247), .B0(n127), .B1(n148), .Y(n130) );
  AOI22X1 U240 ( .A0(central[23]), .A1(n247), .B0(n177), .B1(n197), .Y(n180)
         );
  AOI22X1 U241 ( .A0(central[15]), .A1(n247), .B0(n153), .B1(n173), .Y(n156)
         );
  OAI21XL U242 ( .A0(n116), .A1(n117), .B0(n118), .Y(n109) );
  OAI21XL U243 ( .A0(n92), .A1(n93), .B0(n94), .Y(n85) );
  NAND2BX1 U244 ( .AN(n116), .B(n118), .Y(n122) );
  NAND2BX1 U245 ( .AN(n92), .B(n94), .Y(n98) );
  OA21XL U246 ( .A0(n71), .A1(n66), .B0(n68), .Y(n61) );
  OA21XL U247 ( .A0(n121), .A1(n116), .B0(n118), .Y(n111) );
  OA21XL U248 ( .A0(n97), .A1(n92), .B0(n94), .Y(n87) );
  OA21XL U249 ( .A0(n195), .A1(n190), .B0(n192), .Y(n185) );
  OA21XL U250 ( .A0(n171), .A1(n166), .B0(n168), .Y(n161) );
  OAI21XL U251 ( .A0(n66), .A1(n67), .B0(n68), .Y(n59) );
  OAI21XL U252 ( .A0(n140), .A1(n141), .B0(n142), .Y(n133) );
  OAI21XL U253 ( .A0(n190), .A1(n191), .B0(n192), .Y(n183) );
  OAI21XL U254 ( .A0(n166), .A1(n167), .B0(n168), .Y(n159) );
  NAND2BX1 U255 ( .AN(n71), .B(n67), .Y(ydiff_C[0]) );
  NAND2BX1 U256 ( .AN(n121), .B(n117), .Y(ydiff_A[0]) );
  NAND2BX1 U257 ( .AN(n97), .B(n93), .Y(ydiff_B[0]) );
  NAND2BX1 U258 ( .AN(n66), .B(n68), .Y(n72) );
  NAND2BX1 U259 ( .AN(n140), .B(n142), .Y(n146) );
  NAND2BX1 U260 ( .AN(n190), .B(n192), .Y(n196) );
  NAND2BX1 U261 ( .AN(n166), .B(n168), .Y(n172) );
  OA21XL U262 ( .A0(n145), .A1(n140), .B0(n142), .Y(n135) );
  NAND2BX1 U263 ( .AN(n145), .B(n141), .Y(xdiff_C[0]) );
  NAND2BX1 U264 ( .AN(n195), .B(n191), .Y(xdiff_A[0]) );
  NAND2BX1 U265 ( .AN(n171), .B(n167), .Y(xdiff_B[0]) );
  NAND2X1 U266 ( .A(n283), .B(n245), .Y(n214) );
  XOR2X1 U267 ( .A(n65), .B(n59), .Y(n63) );
  XOR2X1 U268 ( .A(n65), .B(n61), .Y(n64) );
  XOR2X1 U269 ( .A(n115), .B(n109), .Y(n113) );
  XOR2X1 U270 ( .A(n115), .B(n111), .Y(n114) );
  XOR2X1 U271 ( .A(n91), .B(n85), .Y(n89) );
  XOR2X1 U272 ( .A(n91), .B(n87), .Y(n90) );
  XOR2X1 U273 ( .A(n139), .B(n133), .Y(n137) );
  XOR2X1 U274 ( .A(n139), .B(n135), .Y(n138) );
  XOR2X1 U275 ( .A(n189), .B(n183), .Y(n187) );
  XOR2X1 U276 ( .A(n189), .B(n185), .Y(n188) );
  XOR2X1 U277 ( .A(n165), .B(n159), .Y(n163) );
  XOR2X1 U278 ( .A(n165), .B(n161), .Y(n164) );
  NOR2X1 U279 ( .A(n134), .B(n128), .Y(n139) );
  NOR2X1 U280 ( .A(n184), .B(n178), .Y(n189) );
  NOR2X1 U281 ( .A(n160), .B(n154), .Y(n165) );
  NOR2X1 U282 ( .A(n176), .B(n177), .Y(xdiff_A[3]) );
  AOI221XL U283 ( .A0(n178), .A1(n259), .B0(n180), .B1(n181), .C0(n182), .Y(
        n176) );
  OAI21XL U284 ( .A0(n178), .A1(n185), .B0(n260), .Y(n181) );
  NOR3X1 U285 ( .A(n183), .B(n184), .C(n180), .Y(n182) );
  NOR2X1 U286 ( .A(n152), .B(n153), .Y(xdiff_B[3]) );
  AOI221XL U287 ( .A0(n154), .A1(n267), .B0(n156), .B1(n157), .C0(n158), .Y(
        n152) );
  OAI21XL U288 ( .A0(n154), .A1(n161), .B0(n268), .Y(n157) );
  NOR3X1 U289 ( .A(n159), .B(n160), .C(n156), .Y(n158) );
  NOR2X1 U290 ( .A(n60), .B(n54), .Y(n65) );
  NOR2X1 U291 ( .A(n110), .B(n104), .Y(n115) );
  NOR2X1 U292 ( .A(n86), .B(n80), .Y(n91) );
  NOR2X1 U293 ( .A(n52), .B(n53), .Y(ydiff_C[3]) );
  AOI221XL U294 ( .A0(n54), .A1(n279), .B0(n56), .B1(n57), .C0(n58), .Y(n52)
         );
  OAI21XL U295 ( .A0(n54), .A1(n61), .B0(n280), .Y(n57) );
  NOR3X1 U296 ( .A(n59), .B(n60), .C(n56), .Y(n58) );
  NOR2X1 U297 ( .A(n102), .B(n103), .Y(ydiff_A[3]) );
  AOI221XL U298 ( .A0(n104), .A1(n263), .B0(n106), .B1(n107), .C0(n108), .Y(
        n102) );
  OAI21XL U299 ( .A0(n104), .A1(n111), .B0(n264), .Y(n107) );
  NOR3X1 U300 ( .A(n109), .B(n110), .C(n106), .Y(n108) );
  NOR2X1 U301 ( .A(n78), .B(n79), .Y(ydiff_B[3]) );
  AOI221XL U302 ( .A0(n80), .A1(n271), .B0(n82), .B1(n83), .C0(n84), .Y(n78)
         );
  OAI21XL U303 ( .A0(n80), .A1(n87), .B0(n272), .Y(n83) );
  NOR3X1 U304 ( .A(n85), .B(n86), .C(n82), .Y(n84) );
  CLKINVX1 U305 ( .A(n56), .Y(n279) );
  CLKINVX1 U306 ( .A(n106), .Y(n263) );
  CLKINVX1 U307 ( .A(n82), .Y(n271) );
  CLKINVX1 U308 ( .A(n130), .Y(n275) );
  CLKINVX1 U309 ( .A(n180), .Y(n259) );
  CLKINVX1 U310 ( .A(n156), .Y(n267) );
  NOR2X1 U311 ( .A(n261), .B(n252), .Y(n190) );
  NOR2X1 U312 ( .A(n269), .B(n252), .Y(n166) );
  NOR2X1 U313 ( .A(n281), .B(n254), .Y(n66) );
  NOR2X1 U314 ( .A(n265), .B(n254), .Y(n116) );
  NOR2X1 U315 ( .A(n273), .B(n254), .Y(n92) );
  NAND2X1 U316 ( .A(n253), .B(n266), .Y(n117) );
  NAND2X1 U317 ( .A(n253), .B(n274), .Y(n93) );
  NOR2X1 U318 ( .A(n282), .B(n253), .Y(n71) );
  NOR2X1 U319 ( .A(n266), .B(n253), .Y(n121) );
  NOR2X1 U320 ( .A(n274), .B(n253), .Y(n97) );
  NOR2X1 U321 ( .A(n262), .B(n251), .Y(n195) );
  NOR2X1 U322 ( .A(n270), .B(n251), .Y(n171) );
  OAI22XL U323 ( .A0(n56), .A1(n69), .B0(n279), .B1(n70), .Y(ydiff_C[1]) );
  XNOR2X1 U324 ( .A(n71), .B(n72), .Y(n70) );
  XOR2X1 U325 ( .A(n67), .B(n72), .Y(n69) );
  OAI22XL U326 ( .A0(n106), .A1(n119), .B0(n263), .B1(n120), .Y(ydiff_A[1]) );
  XNOR2X1 U327 ( .A(n121), .B(n122), .Y(n120) );
  XOR2X1 U328 ( .A(n117), .B(n122), .Y(n119) );
  OAI22XL U329 ( .A0(n82), .A1(n95), .B0(n271), .B1(n96), .Y(ydiff_B[1]) );
  XNOR2X1 U330 ( .A(n97), .B(n98), .Y(n96) );
  XOR2X1 U331 ( .A(n93), .B(n98), .Y(n95) );
  OAI22XL U332 ( .A0(n180), .A1(n193), .B0(n259), .B1(n194), .Y(xdiff_A[1]) );
  XNOR2X1 U333 ( .A(n195), .B(n196), .Y(n194) );
  XOR2X1 U334 ( .A(n191), .B(n196), .Y(n193) );
  OAI22XL U335 ( .A0(n156), .A1(n169), .B0(n267), .B1(n170), .Y(xdiff_B[1]) );
  XNOR2X1 U336 ( .A(n171), .B(n172), .Y(n170) );
  XOR2X1 U337 ( .A(n167), .B(n172), .Y(n169) );
  NAND2X1 U338 ( .A(n254), .B(n281), .Y(n68) );
  NAND2X1 U339 ( .A(n254), .B(n265), .Y(n118) );
  NAND2X1 U340 ( .A(n254), .B(n273), .Y(n94) );
  NAND2X1 U341 ( .A(n252), .B(n261), .Y(n192) );
  NAND2X1 U342 ( .A(n252), .B(n269), .Y(n168) );
  AND2X2 U343 ( .A(candidate[7]), .B(n284), .Y(N22) );
  AND2X2 U344 ( .A(candidate[6]), .B(n284), .Y(N21) );
  AND2X2 U345 ( .A(candidate[5]), .B(n284), .Y(N20) );
  AND2X2 U346 ( .A(candidate[4]), .B(n284), .Y(N19) );
  AND2X2 U347 ( .A(candidate[3]), .B(n284), .Y(N18) );
  AND2X2 U348 ( .A(candidate[2]), .B(n284), .Y(N17) );
  AND2X2 U349 ( .A(candidate[1]), .B(n284), .Y(N16) );
  AND2X2 U350 ( .A(candidate[0]), .B(n284), .Y(N15) );
  NOR2X1 U351 ( .A(n126), .B(n127), .Y(xdiff_C[3]) );
  AOI221XL U352 ( .A0(n128), .A1(n275), .B0(n130), .B1(n131), .C0(n132), .Y(
        n126) );
  OAI21XL U353 ( .A0(n128), .A1(n135), .B0(n276), .Y(n131) );
  NOR3X1 U354 ( .A(n133), .B(n134), .C(n130), .Y(n132) );
  NOR2X1 U355 ( .A(n277), .B(n252), .Y(n140) );
  NAND2X1 U356 ( .A(n253), .B(n282), .Y(n67) );
  NAND2X1 U357 ( .A(n251), .B(n278), .Y(n141) );
  NAND2X1 U358 ( .A(n251), .B(n262), .Y(n191) );
  NAND2X1 U359 ( .A(n251), .B(n270), .Y(n167) );
  NOR2X1 U360 ( .A(n278), .B(n251), .Y(n145) );
  OAI22XL U361 ( .A0(n130), .A1(n143), .B0(n275), .B1(n144), .Y(xdiff_C[1]) );
  XNOR2X1 U362 ( .A(n145), .B(n146), .Y(n144) );
  XOR2X1 U363 ( .A(n141), .B(n146), .Y(n143) );
  NAND2X1 U364 ( .A(n252), .B(n277), .Y(n142) );
  CLKINVX1 U365 ( .A(n60), .Y(n280) );
  CLKINVX1 U366 ( .A(n110), .Y(n264) );
  CLKINVX1 U367 ( .A(n86), .Y(n272) );
  CLKINVX1 U368 ( .A(n134), .Y(n276) );
  CLKINVX1 U369 ( .A(n184), .Y(n260) );
  CLKINVX1 U370 ( .A(n160), .Y(n268) );
  AOI211X1 U371 ( .A0(n209), .A1(n249), .B0(n211), .C0(n212), .Y(n235) );
  OAI21XL U372 ( .A0(N50), .A1(n214), .B0(n215), .Y(n211) );
  NOR2X1 U373 ( .A(N42), .B(n213), .Y(n212) );
  NAND2X1 U374 ( .A(n255), .B(n283), .Y(n213) );
  CLKINVX1 U375 ( .A(n209), .Y(n283) );
  AOI211X1 U376 ( .A0(n209), .A1(n248), .B0(n218), .C0(n219), .Y(n237) );
  OAI21XL U377 ( .A0(N46), .A1(n214), .B0(n215), .Y(n218) );
  NOR2X1 U378 ( .A(N38), .B(n213), .Y(n219) );
  AOI211X1 U379 ( .A0(n222), .A1(n245), .B0(n223), .C0(n258), .Y(n239) );
  CLKINVX1 U380 ( .A(n215), .Y(n258) );
  NAND2X1 U381 ( .A(N48), .B(n283), .Y(n222) );
  NOR2X1 U382 ( .A(N40), .B(n213), .Y(n223) );
  CLKINVX1 U383 ( .A(valid), .Y(n284) );
  AO21X1 U384 ( .A0(n61), .A1(n65), .B0(n54), .Y(n74) );
  AO21X1 U385 ( .A0(n111), .A1(n115), .B0(n104), .Y(n123) );
  AO21X1 U386 ( .A0(n87), .A1(n91), .B0(n80), .Y(n99) );
  AO21X1 U387 ( .A0(n135), .A1(n139), .B0(n128), .Y(n148) );
  AO21X1 U388 ( .A0(n185), .A1(n189), .B0(n178), .Y(n197) );
  AO21X1 U389 ( .A0(n161), .A1(n165), .B0(n154), .Y(n173) );
  XNOR2X1 U390 ( .A(central[15]), .B(target_cs[7]), .Y(n153) );
  XNOR2X1 U391 ( .A(central[3]), .B(n255), .Y(n53) );
  XNOR2X1 U392 ( .A(central[19]), .B(n255), .Y(n103) );
  XNOR2X1 U393 ( .A(central[11]), .B(n255), .Y(n79) );
  NOR2BX1 U394 ( .AN(central[6]), .B(target_cs[6]), .Y(n128) );
  NOR2BX1 U395 ( .AN(central[22]), .B(target_cs[6]), .Y(n178) );
  NOR2BX1 U396 ( .AN(central[14]), .B(target_cs[6]), .Y(n154) );
  NOR2BX1 U397 ( .AN(central[2]), .B(target_cs[2]), .Y(n54) );
  NOR2BX1 U398 ( .AN(central[18]), .B(target_cs[2]), .Y(n104) );
  NOR2BX1 U399 ( .AN(central[10]), .B(target_cs[2]), .Y(n80) );
  NOR2X1 U400 ( .A(n244), .B(central[2]), .Y(n60) );
  NOR2X1 U401 ( .A(n244), .B(central[18]), .Y(n110) );
  NOR2X1 U402 ( .A(n244), .B(central[10]), .Y(n86) );
  NOR2X1 U403 ( .A(n246), .B(central[6]), .Y(n134) );
  NOR2X1 U404 ( .A(n246), .B(central[22]), .Y(n184) );
  NOR2X1 U405 ( .A(n246), .B(central[14]), .Y(n160) );
  CLKBUFX3 U406 ( .A(target_cs[5]), .Y(n252) );
  CLKBUFX3 U407 ( .A(target_cs[0]), .Y(n253) );
  CLKBUFX3 U408 ( .A(target_cs[4]), .Y(n251) );
  CLKBUFX3 U409 ( .A(target_cs[1]), .Y(n254) );
  CLKBUFX3 U410 ( .A(target_cs[3]), .Y(n255) );
  XNOR2X1 U411 ( .A(central[7]), .B(target_cs[7]), .Y(n127) );
  XNOR2X1 U412 ( .A(central[23]), .B(target_cs[7]), .Y(n177) );
  AOI211X1 U413 ( .A0(n209), .A1(n246), .B0(n227), .C0(n228), .Y(n241) );
  OAI21XL U414 ( .A0(N51), .A1(n214), .B0(n215), .Y(n227) );
  NOR2X1 U415 ( .A(N43), .B(n213), .Y(n228) );
  OAI211X1 U416 ( .A0(n230), .A1(cs[1]), .B0(n284), .C0(n232), .Y(n242) );
  AOI2BB2X1 U417 ( .B0(n251), .B1(n209), .A0N(busy), .A1N(en), .Y(n232) );
  AOI22X1 U418 ( .A0(N41), .A1(n255), .B0(N49), .B1(n245), .Y(n230) );
  AOI211X1 U419 ( .A0(n209), .A1(n247), .B0(n225), .C0(n226), .Y(n240) );
  OAI21XL U420 ( .A0(N52), .A1(n214), .B0(n215), .Y(n225) );
  NOR2X1 U421 ( .A(N44), .B(n213), .Y(n226) );
  AOI211X1 U422 ( .A0(n209), .A1(n244), .B0(n220), .C0(n221), .Y(n238) );
  OAI21XL U423 ( .A0(N47), .A1(n214), .B0(n215), .Y(n220) );
  NOR2X1 U424 ( .A(N39), .B(n213), .Y(n221) );
  NOR2X1 U425 ( .A(cs[0]), .B(n233), .Y(n209) );
  NAND2X1 U426 ( .A(n229), .B(n283), .Y(n215) );
  OAI21XL U427 ( .A0(en), .A1(cs[0]), .B0(n233), .Y(n229) );
  NAND4X1 U428 ( .A(target_cs[7]), .B(n253), .C(n206), .D(n207), .Y(n201) );
  NOR2X1 U429 ( .A(n244), .B(n248), .Y(n206) );
  NOR4X1 U430 ( .A(target_cs[6]), .B(n252), .C(n251), .D(n255), .Y(n207) );
  NAND2X1 U431 ( .A(n234), .B(n233), .Y(busy) );
  OAI222XL U432 ( .A0(en), .A1(busy), .B0(n216), .B1(cs[1]), .C0(n250), .C1(
        n283), .Y(n236) );
  AOI22X1 U433 ( .A0(n250), .A1(n255), .B0(N45), .B1(n245), .Y(n216) );
  OAI31XL U434 ( .A0(cs[1]), .A1(n234), .A2(n201), .B0(n283), .Y(ns[1]) );
  OAI211X1 U435 ( .A0(cs[0]), .A1(n257), .B0(n205), .C0(n283), .Y(ns[0]) );
  CLKINVX1 U436 ( .A(en), .Y(n257) );
  NAND3X1 U437 ( .A(n201), .B(cs[0]), .C(n233), .Y(n205) );
  NOR2X1 U438 ( .A(n234), .B(n233), .Y(valid) );
  CLKINVX1 U439 ( .A(rst), .Y(n256) );
  CLKINVX1 U440 ( .A(central[0]), .Y(n282) );
  CLKINVX1 U441 ( .A(central[16]), .Y(n266) );
  CLKINVX1 U442 ( .A(central[8]), .Y(n274) );
  CLKINVX1 U443 ( .A(central[4]), .Y(n278) );
  CLKINVX1 U444 ( .A(central[20]), .Y(n262) );
  CLKINVX1 U445 ( .A(central[1]), .Y(n281) );
  CLKINVX1 U446 ( .A(central[17]), .Y(n265) );
  CLKINVX1 U447 ( .A(central[12]), .Y(n270) );
  CLKINVX1 U448 ( .A(central[9]), .Y(n273) );
  CLKINVX1 U449 ( .A(central[5]), .Y(n277) );
  CLKINVX1 U450 ( .A(central[21]), .Y(n261) );
  CLKINVX1 U451 ( .A(central[13]), .Y(n269) );
  XOR2X1 U452 ( .A(target_cs[7]), .B(\r412/carry[7] ), .Y(N44) );
  AND2X1 U453 ( .A(\r412/carry[6] ), .B(target_cs[6]), .Y(\r412/carry[7] ) );
  XOR2X1 U454 ( .A(target_cs[6]), .B(\r412/carry[6] ), .Y(N43) );
  AND2X1 U455 ( .A(\r412/carry[5] ), .B(n252), .Y(\r412/carry[6] ) );
  XOR2X1 U456 ( .A(n252), .B(\r412/carry[5] ), .Y(N42) );
  AND2X1 U457 ( .A(\r412/carry[4] ), .B(n251), .Y(\r412/carry[5] ) );
  XOR2X1 U458 ( .A(n251), .B(\r412/carry[4] ), .Y(N41) );
  OR2X1 U459 ( .A(n255), .B(\r412/carry[3] ), .Y(\r412/carry[4] ) );
  XNOR2X1 U460 ( .A(\r412/carry[3] ), .B(n255), .Y(N40) );
  AND2X1 U461 ( .A(\r412/carry[2] ), .B(target_cs[2]), .Y(\r412/carry[3] ) );
  XOR2X1 U462 ( .A(target_cs[2]), .B(\r412/carry[2] ), .Y(N39) );
  AND2X1 U463 ( .A(n253), .B(n254), .Y(\r412/carry[2] ) );
  XOR2X1 U464 ( .A(n254), .B(n253), .Y(N38) );
endmodule

