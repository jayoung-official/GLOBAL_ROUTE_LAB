/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : P-2019.03-SP5-6
// Date      : Fri Oct  4 06:22:25 2024
/////////////////////////////////////////////////////////////


module gcd ( clk, req_msg_31_, req_msg_30_, req_msg_29_, req_msg_28_, 
        req_msg_27_, req_msg_26_, req_msg_25_, req_msg_24_, req_msg_23_, 
        req_msg_22_, req_msg_21_, req_msg_20_, req_msg_19_, req_msg_18_, 
        req_msg_17_, req_msg_16_, req_msg_15_, req_msg_14_, req_msg_13_, 
        req_msg_12_, req_msg_11_, req_msg_10_, req_msg_9_, req_msg_8_, 
        req_msg_7_, req_msg_6_, req_msg_5_, req_msg_4_, req_msg_3_, req_msg_2_, 
        req_msg_1_, req_msg_0_, req_rdy, req_val, reset, resp_msg_15_, 
        resp_msg_14_, resp_msg_13_, resp_msg_12_, resp_msg_11_, resp_msg_10_, 
        resp_msg_9_, resp_msg_8_, resp_msg_7_, resp_msg_6_, resp_msg_5_, 
        resp_msg_4_, resp_msg_3_, resp_msg_2_, resp_msg_1_, resp_msg_0_, 
        resp_rdy, resp_val );
  input clk, req_msg_31_, req_msg_30_, req_msg_29_, req_msg_28_, req_msg_27_,
         req_msg_26_, req_msg_25_, req_msg_24_, req_msg_23_, req_msg_22_,
         req_msg_21_, req_msg_20_, req_msg_19_, req_msg_18_, req_msg_17_,
         req_msg_16_, req_msg_15_, req_msg_14_, req_msg_13_, req_msg_12_,
         req_msg_11_, req_msg_10_, req_msg_9_, req_msg_8_, req_msg_7_,
         req_msg_6_, req_msg_5_, req_msg_4_, req_msg_3_, req_msg_2_,
         req_msg_1_, req_msg_0_, req_val, reset, resp_rdy;
  output req_rdy, resp_msg_15_, resp_msg_14_, resp_msg_13_, resp_msg_12_,
         resp_msg_11_, resp_msg_10_, resp_msg_9_, resp_msg_8_, resp_msg_7_,
         resp_msg_6_, resp_msg_5_, resp_msg_4_, resp_msg_3_, resp_msg_2_,
         resp_msg_1_, resp_msg_0_, resp_val;
  wire   ctrl_a_mux_sel_1_, ctrl_a_mux_sel_0_, ctrl_b_reg_en_0_,
         ctrl_a_reg_en_0_, dpath_is_b_zero_0_, dpath_is_a_lt_b_0_, ctrl_n6,
         ctrl_n5, ctrl_n4, ctrl_n3, ctrl_n2, ctrl_n1, ctrl_state_out_0_,
         ctrl_state_out_1_, ctrl_state_in__0_, ctrl_state_in__1_,
         ctrl_state_n3, ctrl_state_n2, ctrl_state_n1, dpath_b_reg_out_0_,
         dpath_b_reg_out_1_, dpath_b_reg_out_2_, dpath_b_reg_out_3_,
         dpath_b_reg_out_4_, dpath_b_reg_out_5_, dpath_b_reg_out_6_,
         dpath_b_reg_out_7_, dpath_b_reg_out_8_, dpath_b_reg_out_9_,
         dpath_b_reg_out_10_, dpath_b_reg_out_11_, dpath_b_reg_out_12_,
         dpath_b_reg_out_13_, dpath_b_reg_out_14_, dpath_b_reg_out_15_,
         dpath_b_mux_out_0_, dpath_b_mux_out_1_, dpath_b_mux_out_2_,
         dpath_b_mux_out_3_, dpath_b_mux_out_4_, dpath_b_mux_out_5_,
         dpath_b_mux_out_6_, dpath_b_mux_out_7_, dpath_b_mux_out_8_,
         dpath_b_mux_out_9_, dpath_b_mux_out_10_, dpath_b_mux_out_11_,
         dpath_b_mux_out_12_, dpath_b_mux_out_13_, dpath_b_mux_out_14_,
         dpath_b_mux_out_15_, dpath_a_mux_out_0_, dpath_a_mux_out_1_,
         dpath_a_mux_out_2_, dpath_a_mux_out_3_, dpath_a_mux_out_4_,
         dpath_a_mux_out_5_, dpath_a_mux_out_6_, dpath_a_mux_out_7_,
         dpath_a_mux_out_8_, dpath_a_mux_out_9_, dpath_a_mux_out_10_,
         dpath_a_mux_out_11_, dpath_a_mux_out_12_, dpath_a_mux_out_13_,
         dpath_a_mux_out_14_, dpath_a_mux_out_15_, dpath_a_reg_out_0_,
         dpath_a_reg_out_1_, dpath_a_reg_out_2_, dpath_a_reg_out_3_,
         dpath_a_reg_out_4_, dpath_a_reg_out_5_, dpath_a_reg_out_6_,
         dpath_a_reg_out_7_, dpath_a_reg_out_8_, dpath_a_reg_out_9_,
         dpath_a_reg_out_10_, dpath_a_reg_out_11_, dpath_a_reg_out_12_,
         dpath_a_reg_out_13_, dpath_a_reg_out_14_, dpath_a_reg_out_15_,
         dpath_a_reg_n1, dpath_a_reg_n17, dpath_a_reg_n16, dpath_a_reg_n15,
         dpath_a_reg_n14, dpath_a_reg_n13, dpath_a_reg_n12, dpath_a_reg_n11,
         dpath_a_reg_n10, dpath_a_reg_n9, dpath_a_reg_n8, dpath_a_reg_n7,
         dpath_a_reg_n6, dpath_a_reg_n5, dpath_a_reg_n4, dpath_a_reg_n3,
         dpath_a_reg_n2, dpath_a_lt_b_n43, dpath_a_lt_b_n42, dpath_a_lt_b_n41,
         dpath_a_lt_b_n40, dpath_a_lt_b_n39, dpath_a_lt_b_n38,
         dpath_a_lt_b_n37, dpath_a_lt_b_n36, dpath_a_lt_b_n35,
         dpath_a_lt_b_n34, dpath_a_lt_b_n33, dpath_a_lt_b_n32,
         dpath_a_lt_b_n31, dpath_a_lt_b_n30, dpath_a_lt_b_n29,
         dpath_a_lt_b_n28, dpath_a_lt_b_n27, dpath_a_lt_b_n26,
         dpath_a_lt_b_n25, dpath_a_lt_b_n24, dpath_a_lt_b_n23,
         dpath_a_lt_b_n22, dpath_a_lt_b_n21, dpath_a_lt_b_n20,
         dpath_a_lt_b_n19, dpath_a_lt_b_n18, dpath_a_lt_b_n17,
         dpath_a_lt_b_n16, dpath_a_lt_b_n15, dpath_a_lt_b_n14,
         dpath_a_lt_b_n13, dpath_a_lt_b_n12, dpath_a_lt_b_n11,
         dpath_a_lt_b_n10, dpath_a_lt_b_n9, dpath_a_lt_b_n8, dpath_a_lt_b_n7,
         dpath_a_lt_b_n6, dpath_a_lt_b_n5, dpath_a_lt_b_n4, dpath_a_lt_b_n3,
         dpath_a_lt_b_n2, dpath_a_lt_b_n1, dpath_b_zero_n4, dpath_b_zero_n3,
         dpath_b_zero_n2, dpath_b_zero_n1, dpath_a_mux_n4, dpath_a_mux_n3,
         dpath_a_mux_n2, dpath_a_mux_n1, dpath_b_mux_n1, dpath_sub_n88,
         dpath_sub_n87, dpath_sub_n86, dpath_sub_n85, dpath_sub_n84,
         dpath_sub_n83, dpath_sub_n82, dpath_sub_n81, dpath_sub_n80,
         dpath_sub_n79, dpath_sub_n78, dpath_sub_n77, dpath_sub_n76,
         dpath_sub_n75, dpath_sub_n74, dpath_sub_n73, dpath_sub_n72,
         dpath_sub_n71, dpath_sub_n70, dpath_sub_n69, dpath_sub_n68,
         dpath_sub_n67, dpath_sub_n66, dpath_sub_n65, dpath_sub_n64,
         dpath_sub_n63, dpath_sub_n62, dpath_sub_n61, dpath_sub_n60,
         dpath_sub_n59, dpath_sub_n58, dpath_sub_n57, dpath_sub_n56,
         dpath_sub_n55, dpath_sub_n54, dpath_sub_n53, dpath_sub_n52,
         dpath_sub_n51, dpath_sub_n50, dpath_sub_n49, dpath_sub_n48,
         dpath_sub_n47, dpath_sub_n46, dpath_sub_n45, dpath_sub_n44,
         dpath_sub_n43, dpath_sub_n42, dpath_sub_n41, dpath_sub_n40,
         dpath_sub_n39, dpath_sub_n38, dpath_sub_n37, dpath_sub_n36,
         dpath_sub_n35, dpath_sub_n34, dpath_sub_n33, dpath_sub_n32,
         dpath_sub_n31, dpath_sub_n30, dpath_sub_n29, dpath_sub_n28,
         dpath_sub_n27, dpath_sub_n26, dpath_sub_n25, dpath_sub_n24,
         dpath_sub_n23, dpath_sub_n22, dpath_sub_n21, dpath_sub_n20,
         dpath_sub_n19, dpath_sub_n18, dpath_sub_n17, dpath_sub_n16,
         dpath_sub_n15, dpath_sub_n14, dpath_sub_n13, dpath_sub_n12,
         dpath_sub_n11, dpath_sub_n10, dpath_sub_n9, dpath_sub_n8,
         dpath_sub_n7, dpath_sub_n6, dpath_sub_n5, dpath_sub_n4, dpath_sub_n3,
         dpath_sub_n2, dpath_sub_n1, dpath_b_reg_n1, dpath_b_reg_n17,
         dpath_b_reg_n16, dpath_b_reg_n15, dpath_b_reg_n14, dpath_b_reg_n13,
         dpath_b_reg_n12, dpath_b_reg_n11, dpath_b_reg_n10, dpath_b_reg_n9,
         dpath_b_reg_n8, dpath_b_reg_n7, dpath_b_reg_n6, dpath_b_reg_n5,
         dpath_b_reg_n4, dpath_b_reg_n3, dpath_b_reg_n2;

  INVxp33_ASAP7_75t_SRAM ctrl_U16 ( .A(ctrl_state_out_0_), .Y(ctrl_n6) );
  NOR2xp33_ASAP7_75t_SRAM ctrl_U15 ( .A(ctrl_state_out_0_), .B(ctrl_n1), .Y(
        resp_val) );
  NOR2xp33_ASAP7_75t_R ctrl_U14 ( .A(ctrl_n2), .B(dpath_is_a_lt_b_0_), .Y(
        ctrl_a_mux_sel_0_) );
  INVx1_ASAP7_75t_R ctrl_U13 ( .A(dpath_is_a_lt_b_0_), .Y(ctrl_n4) );
  A2O1A1Ixp33_ASAP7_75t_SRAM ctrl_U12 ( .A1(resp_rdy), .A2(ctrl_n6), .B(
        ctrl_a_reg_en_0_), .C(ctrl_n5), .Y(ctrl_state_in__1_) );
  A2O1A1Ixp33_ASAP7_75t_SRAM ctrl_U11 ( .A1(req_val), .A2(ctrl_a_reg_en_0_), 
        .B(ctrl_state_out_0_), .C(ctrl_n5), .Y(ctrl_n3) );
  NOR2xp33_ASAP7_75t_R ctrl_U10 ( .A(ctrl_n2), .B(ctrl_n4), .Y(
        ctrl_a_mux_sel_1_) );
  INVxp67_ASAP7_75t_SRAM ctrl_U9 ( .A(ctrl_n3), .Y(ctrl_state_in__0_) );
  NAND2xp5_ASAP7_75t_R ctrl_U8 ( .A(ctrl_state_out_0_), .B(ctrl_n1), .Y(
        ctrl_n2) );
  NAND2xp33_ASAP7_75t_R ctrl_U7 ( .A(dpath_is_b_zero_0_), .B(ctrl_a_mux_sel_0_), .Y(ctrl_n5) );
  INVxp33_ASAP7_75t_SRAM ctrl_U6 ( .A(ctrl_state_out_1_), .Y(ctrl_n1) );
  NOR2xp33_ASAP7_75t_R ctrl_U5 ( .A(ctrl_state_out_1_), .B(ctrl_state_out_0_), 
        .Y(req_rdy) );
  INVx1_ASAP7_75t_R ctrl_U4 ( .A(ctrl_state_out_1_), .Y(ctrl_a_reg_en_0_) );
  AOI21xp5_ASAP7_75t_R ctrl_U3 ( .A1(ctrl_n4), .A2(ctrl_state_out_0_), .B(
        ctrl_state_out_1_), .Y(ctrl_b_reg_en_0_) );
  NAND2xp5_ASAP7_75t_SRAM ctrl_state_U5 ( .A(ctrl_state_n1), .B(
        ctrl_state_in__0_), .Y(ctrl_state_n3) );
  NAND2xp5_ASAP7_75t_SRAM ctrl_state_U4 ( .A(ctrl_state_n1), .B(
        ctrl_state_in__1_), .Y(ctrl_state_n2) );
  DFFHQNx1_ASAP7_75t_SRAM ctrl_state_out_reg_0_ ( .D(ctrl_state_n3), .CLK(clk), 
        .QN(ctrl_state_out_0_) );
  DFFHQNx1_ASAP7_75t_SRAM ctrl_state_out_reg_1_ ( .D(ctrl_state_n2), .CLK(clk), 
        .QN(ctrl_state_out_1_) );
  INVx1_ASAP7_75t_R ctrl_state_U3 ( .A(reset), .Y(ctrl_state_n1) );
  OAI22xp33_ASAP7_75t_SRAM dpath_a_reg_U18 ( .A1(dpath_a_mux_out_12_), .A2(
        dpath_a_reg_n1), .B1(ctrl_a_reg_en_0_), .B2(dpath_a_reg_out_12_), .Y(
        dpath_a_reg_n14) );
  OAI22xp33_ASAP7_75t_SRAM dpath_a_reg_U17 ( .A1(dpath_a_mux_out_14_), .A2(
        dpath_a_reg_n1), .B1(ctrl_a_reg_en_0_), .B2(dpath_a_reg_out_14_), .Y(
        dpath_a_reg_n16) );
  OAI22xp33_ASAP7_75t_R dpath_a_reg_U16 ( .A1(dpath_a_mux_out_15_), .A2(
        dpath_a_reg_n1), .B1(ctrl_a_reg_en_0_), .B2(dpath_a_reg_out_15_), .Y(
        dpath_a_reg_n17) );
  OAI22xp5_ASAP7_75t_SRAM dpath_a_reg_U15 ( .A1(dpath_a_mux_out_4_), .A2(
        dpath_a_reg_n1), .B1(ctrl_a_reg_en_0_), .B2(dpath_a_reg_out_4_), .Y(
        dpath_a_reg_n6) );
  OAI22xp5_ASAP7_75t_SRAM dpath_a_reg_U14 ( .A1(dpath_a_mux_out_11_), .A2(
        dpath_a_reg_n1), .B1(ctrl_a_reg_en_0_), .B2(dpath_a_reg_out_11_), .Y(
        dpath_a_reg_n13) );
  OAI22xp5_ASAP7_75t_SRAM dpath_a_reg_U13 ( .A1(dpath_a_mux_out_5_), .A2(
        dpath_a_reg_n1), .B1(ctrl_a_reg_en_0_), .B2(dpath_a_reg_out_5_), .Y(
        dpath_a_reg_n7) );
  OAI22xp5_ASAP7_75t_SRAM dpath_a_reg_U12 ( .A1(dpath_a_mux_out_6_), .A2(
        dpath_a_reg_n1), .B1(ctrl_a_reg_en_0_), .B2(dpath_a_reg_out_6_), .Y(
        dpath_a_reg_n8) );
  OAI22xp5_ASAP7_75t_SRAM dpath_a_reg_U11 ( .A1(dpath_a_mux_out_9_), .A2(
        dpath_a_reg_n1), .B1(ctrl_a_reg_en_0_), .B2(dpath_a_reg_out_9_), .Y(
        dpath_a_reg_n11) );
  OAI22xp5_ASAP7_75t_SRAM dpath_a_reg_U10 ( .A1(dpath_a_mux_out_0_), .A2(
        dpath_a_reg_n1), .B1(ctrl_a_reg_en_0_), .B2(dpath_a_reg_out_0_), .Y(
        dpath_a_reg_n2) );
  OAI22xp5_ASAP7_75t_SRAM dpath_a_reg_U9 ( .A1(dpath_a_mux_out_10_), .A2(
        dpath_a_reg_n1), .B1(ctrl_a_reg_en_0_), .B2(dpath_a_reg_out_10_), .Y(
        dpath_a_reg_n12) );
  OAI22xp5_ASAP7_75t_SRAM dpath_a_reg_U8 ( .A1(dpath_a_mux_out_3_), .A2(
        dpath_a_reg_n1), .B1(ctrl_a_reg_en_0_), .B2(dpath_a_reg_out_3_), .Y(
        dpath_a_reg_n5) );
  OAI22xp5_ASAP7_75t_SRAM dpath_a_reg_U7 ( .A1(dpath_a_mux_out_8_), .A2(
        dpath_a_reg_n1), .B1(ctrl_a_reg_en_0_), .B2(dpath_a_reg_out_8_), .Y(
        dpath_a_reg_n10) );
  OAI22xp5_ASAP7_75t_SRAM dpath_a_reg_U6 ( .A1(dpath_a_mux_out_1_), .A2(
        dpath_a_reg_n1), .B1(ctrl_a_reg_en_0_), .B2(dpath_a_reg_out_1_), .Y(
        dpath_a_reg_n3) );
  OAI22xp5_ASAP7_75t_SRAM dpath_a_reg_U5 ( .A1(dpath_a_mux_out_7_), .A2(
        dpath_a_reg_n1), .B1(ctrl_a_reg_en_0_), .B2(dpath_a_reg_out_7_), .Y(
        dpath_a_reg_n9) );
  OAI22xp5_ASAP7_75t_SRAM dpath_a_reg_U4 ( .A1(dpath_a_mux_out_2_), .A2(
        dpath_a_reg_n1), .B1(ctrl_a_reg_en_0_), .B2(dpath_a_reg_out_2_), .Y(
        dpath_a_reg_n4) );
  OAI22xp5_ASAP7_75t_SRAM dpath_a_reg_U3 ( .A1(dpath_a_mux_out_13_), .A2(
        dpath_a_reg_n1), .B1(ctrl_a_reg_en_0_), .B2(dpath_a_reg_out_13_), .Y(
        dpath_a_reg_n15) );
  INVx1_ASAP7_75t_R dpath_a_reg_U2 ( .A(ctrl_a_reg_en_0_), .Y(dpath_a_reg_n1)
         );
  DFFHQNx1_ASAP7_75t_SRAM dpath_a_reg_out_reg_12_ ( .D(dpath_a_reg_n14), .CLK(
        clk), .QN(dpath_a_reg_out_12_) );
  DFFHQNx1_ASAP7_75t_SRAM dpath_a_reg_out_reg_0_ ( .D(dpath_a_reg_n2), .CLK(
        clk), .QN(dpath_a_reg_out_0_) );
  DFFHQNx1_ASAP7_75t_SRAM dpath_a_reg_out_reg_4_ ( .D(dpath_a_reg_n6), .CLK(
        clk), .QN(dpath_a_reg_out_4_) );
  DFFHQNx1_ASAP7_75t_SRAM dpath_a_reg_out_reg_6_ ( .D(dpath_a_reg_n8), .CLK(
        clk), .QN(dpath_a_reg_out_6_) );
  DFFHQNx1_ASAP7_75t_SRAM dpath_a_reg_out_reg_7_ ( .D(dpath_a_reg_n9), .CLK(
        clk), .QN(dpath_a_reg_out_7_) );
  DFFHQNx1_ASAP7_75t_SRAM dpath_a_reg_out_reg_8_ ( .D(dpath_a_reg_n10), .CLK(
        clk), .QN(dpath_a_reg_out_8_) );
  DFFHQNx1_ASAP7_75t_SRAM dpath_a_reg_out_reg_9_ ( .D(dpath_a_reg_n11), .CLK(
        clk), .QN(dpath_a_reg_out_9_) );
  DFFHQNx1_ASAP7_75t_SRAM dpath_a_reg_out_reg_10_ ( .D(dpath_a_reg_n12), .CLK(
        clk), .QN(dpath_a_reg_out_10_) );
  DFFHQNx1_ASAP7_75t_SRAM dpath_a_reg_out_reg_11_ ( .D(dpath_a_reg_n13), .CLK(
        clk), .QN(dpath_a_reg_out_11_) );
  DFFHQNx1_ASAP7_75t_SRAM dpath_a_reg_out_reg_13_ ( .D(dpath_a_reg_n15), .CLK(
        clk), .QN(dpath_a_reg_out_13_) );
  DFFHQNx1_ASAP7_75t_SRAM dpath_a_reg_out_reg_5_ ( .D(dpath_a_reg_n7), .CLK(
        clk), .QN(dpath_a_reg_out_5_) );
  DFFHQNx1_ASAP7_75t_SRAM dpath_a_reg_out_reg_3_ ( .D(dpath_a_reg_n5), .CLK(
        clk), .QN(dpath_a_reg_out_3_) );
  DFFHQNx1_ASAP7_75t_SRAM dpath_a_reg_out_reg_1_ ( .D(dpath_a_reg_n3), .CLK(
        clk), .QN(dpath_a_reg_out_1_) );
  DFFHQNx1_ASAP7_75t_SRAM dpath_a_reg_out_reg_2_ ( .D(dpath_a_reg_n4), .CLK(
        clk), .QN(dpath_a_reg_out_2_) );
  DFFHQNx1_ASAP7_75t_R dpath_a_reg_out_reg_14_ ( .D(dpath_a_reg_n16), .CLK(clk), .QN(dpath_a_reg_out_14_) );
  DFFHQNx1_ASAP7_75t_R dpath_a_reg_out_reg_15_ ( .D(dpath_a_reg_n17), .CLK(clk), .QN(dpath_a_reg_out_15_) );
  AOI22xp33_ASAP7_75t_SRAM dpath_a_lt_b_U44 ( .A1(dpath_b_reg_out_12_), .A2(
        dpath_a_lt_b_n35), .B1(dpath_b_reg_out_13_), .B2(dpath_a_lt_b_n36), 
        .Y(dpath_a_lt_b_n38) );
  OAI31xp33_ASAP7_75t_R dpath_a_lt_b_U43 ( .A1(dpath_a_lt_b_n34), .A2(
        dpath_a_lt_b_n33), .A3(dpath_a_lt_b_n32), .B(dpath_a_lt_b_n31), .Y(
        dpath_a_lt_b_n39) );
  AOI31xp33_ASAP7_75t_SRAM dpath_a_lt_b_U42 ( .A1(dpath_a_reg_out_8_), .A2(
        dpath_a_lt_b_n30), .A3(dpath_a_lt_b_n29), .B(dpath_a_lt_b_n28), .Y(
        dpath_a_lt_b_n31) );
  AOI31xp33_ASAP7_75t_SRAM dpath_a_lt_b_U41 ( .A1(dpath_a_reg_out_10_), .A2(
        dpath_a_lt_b_n24), .A3(dpath_a_lt_b_n23), .B(dpath_a_lt_b_n22), .Y(
        dpath_a_lt_b_n25) );
  INVxp33_ASAP7_75t_SRAM dpath_a_lt_b_U40 ( .A(dpath_a_lt_b_n30), .Y(
        dpath_a_lt_b_n33) );
  AOI21xp33_ASAP7_75t_SRAM dpath_a_lt_b_U39 ( .A1(dpath_a_lt_b_n19), .A2(
        dpath_a_lt_b_n18), .B(dpath_a_lt_b_n17), .Y(dpath_a_lt_b_n34) );
  AOI22xp33_ASAP7_75t_SRAM dpath_a_lt_b_U38 ( .A1(dpath_a_reg_out_7_), .A2(
        dpath_a_lt_b_n20), .B1(dpath_a_reg_out_6_), .B2(dpath_a_lt_b_n13), .Y(
        dpath_a_lt_b_n14) );
  INVxp33_ASAP7_75t_SRAM dpath_a_lt_b_U37 ( .A(dpath_b_reg_out_7_), .Y(
        dpath_a_lt_b_n20) );
  OAI211xp5_ASAP7_75t_SRAM dpath_a_lt_b_U36 ( .A1(dpath_a_lt_b_n7), .A2(
        dpath_a_lt_b_n6), .B(dpath_a_lt_b_n5), .C(dpath_a_lt_b_n4), .Y(
        dpath_a_lt_b_n8) );
  AOI22xp33_ASAP7_75t_SRAM dpath_a_lt_b_U35 ( .A1(dpath_b_reg_out_2_), .A2(
        dpath_a_lt_b_n3), .B1(dpath_b_reg_out_3_), .B2(dpath_a_lt_b_n10), .Y(
        dpath_a_lt_b_n5) );
  INVxp67_ASAP7_75t_SRAM dpath_a_lt_b_U34 ( .A(dpath_a_reg_out_0_), .Y(
        dpath_a_lt_b_n1) );
  INVxp33_ASAP7_75t_SRAM dpath_a_lt_b_U33 ( .A(dpath_a_lt_b_n4), .Y(
        dpath_a_lt_b_n11) );
  NAND2xp33_ASAP7_75t_SRAM dpath_a_lt_b_U32 ( .A(dpath_b_reg_out_4_), .B(
        dpath_a_lt_b_n9), .Y(dpath_a_lt_b_n4) );
  AOI22xp33_ASAP7_75t_SRAM dpath_a_lt_b_U31 ( .A1(dpath_b_reg_out_6_), .A2(
        dpath_a_lt_b_n16), .B1(dpath_b_reg_out_5_), .B2(dpath_a_lt_b_n12), .Y(
        dpath_a_lt_b_n19) );
  INVxp67_ASAP7_75t_SRAM dpath_a_lt_b_U30 ( .A(dpath_a_reg_out_5_), .Y(
        dpath_a_lt_b_n12) );
  INVxp33_ASAP7_75t_SRAM dpath_a_lt_b_U29 ( .A(dpath_a_reg_out_6_), .Y(
        dpath_a_lt_b_n16) );
  OAI321xp33_ASAP7_75t_SRAM dpath_a_lt_b_U28 ( .A1(dpath_a_lt_b_n11), .A2(
        dpath_b_reg_out_3_), .A3(dpath_a_lt_b_n10), .B1(dpath_b_reg_out_4_), 
        .B2(dpath_a_lt_b_n9), .C(dpath_a_lt_b_n8), .Y(dpath_a_lt_b_n18) );
  NOR2xp33_ASAP7_75t_SRAM dpath_a_lt_b_U27 ( .A(dpath_b_reg_out_5_), .B(
        dpath_a_lt_b_n12), .Y(dpath_a_lt_b_n13) );
  INVxp33_ASAP7_75t_SRAM dpath_a_lt_b_U26 ( .A(dpath_a_lt_b_n13), .Y(
        dpath_a_lt_b_n15) );
  A2O1A1Ixp33_ASAP7_75t_SRAM dpath_a_lt_b_U25 ( .A1(dpath_a_lt_b_n16), .A2(
        dpath_a_lt_b_n15), .B(dpath_b_reg_out_6_), .C(dpath_a_lt_b_n14), .Y(
        dpath_a_lt_b_n17) );
  INVxp33_ASAP7_75t_SRAM dpath_a_lt_b_U24 ( .A(dpath_a_reg_out_4_), .Y(
        dpath_a_lt_b_n9) );
  INVxp33_ASAP7_75t_SRAM dpath_a_lt_b_U23 ( .A(dpath_a_reg_out_3_), .Y(
        dpath_a_lt_b_n10) );
  INVxp33_ASAP7_75t_SRAM dpath_a_lt_b_U22 ( .A(dpath_a_reg_out_1_), .Y(
        dpath_a_lt_b_n2) );
  INVxp33_ASAP7_75t_SRAM dpath_a_lt_b_U21 ( .A(dpath_a_reg_out_2_), .Y(
        dpath_a_lt_b_n3) );
  AOI21xp5_ASAP7_75t_R dpath_a_lt_b_U20 ( .A1(dpath_a_lt_b_n39), .A2(
        dpath_a_lt_b_n38), .B(dpath_a_lt_b_n37), .Y(dpath_a_lt_b_n40) );
  INVx1_ASAP7_75t_SRAM dpath_a_lt_b_U19 ( .A(dpath_a_reg_out_14_), .Y(
        dpath_a_lt_b_n41) );
  OAI22xp33_ASAP7_75t_SRAM dpath_a_lt_b_U18 ( .A1(dpath_a_reg_out_7_), .A2(
        dpath_a_lt_b_n20), .B1(dpath_a_lt_b_n29), .B2(dpath_a_reg_out_8_), .Y(
        dpath_a_lt_b_n32) );
  OAI22xp33_ASAP7_75t_SRAM dpath_a_lt_b_U17 ( .A1(dpath_b_reg_out_1_), .A2(
        dpath_a_lt_b_n2), .B1(dpath_a_lt_b_n3), .B2(dpath_b_reg_out_2_), .Y(
        dpath_a_lt_b_n6) );
  OAI22xp33_ASAP7_75t_SRAM dpath_a_lt_b_U16 ( .A1(dpath_b_reg_out_12_), .A2(
        dpath_a_lt_b_n35), .B1(dpath_a_lt_b_n21), .B2(dpath_b_reg_out_11_), 
        .Y(dpath_a_lt_b_n22) );
  OAI31xp33_ASAP7_75t_R dpath_a_lt_b_U15 ( .A1(dpath_b_reg_out_9_), .A2(
        dpath_a_lt_b_n27), .A3(dpath_a_lt_b_n26), .B(dpath_a_lt_b_n25), .Y(
        dpath_a_lt_b_n28) );
  MAJIxp5_ASAP7_75t_R dpath_a_lt_b_U14 ( .A(dpath_a_lt_b_n43), .B(
        dpath_a_lt_b_n42), .C(dpath_a_reg_out_15_), .Y(dpath_is_a_lt_b_0_) );
  INVxp67_ASAP7_75t_SRAM dpath_a_lt_b_U13 ( .A(dpath_b_reg_out_8_), .Y(
        dpath_a_lt_b_n29) );
  INVxp67_ASAP7_75t_SRAM dpath_a_lt_b_U12 ( .A(dpath_b_reg_out_10_), .Y(
        dpath_a_lt_b_n23) );
  INVx1_ASAP7_75t_SRAM dpath_a_lt_b_U11 ( .A(dpath_a_reg_out_12_), .Y(
        dpath_a_lt_b_n35) );
  AOI22xp33_ASAP7_75t_R dpath_a_lt_b_U10 ( .A1(dpath_b_reg_out_0_), .A2(
        dpath_a_lt_b_n1), .B1(dpath_b_reg_out_1_), .B2(dpath_a_lt_b_n2), .Y(
        dpath_a_lt_b_n7) );
  AOI21xp5_ASAP7_75t_R dpath_a_lt_b_U9 ( .A1(dpath_b_reg_out_14_), .A2(
        dpath_a_lt_b_n41), .B(dpath_a_lt_b_n40), .Y(dpath_a_lt_b_n43) );
  INVxp67_ASAP7_75t_SRAM dpath_a_lt_b_U8 ( .A(dpath_a_reg_out_9_), .Y(
        dpath_a_lt_b_n26) );
  OAI22xp5_ASAP7_75t_R dpath_a_lt_b_U7 ( .A1(dpath_b_reg_out_13_), .A2(
        dpath_a_lt_b_n36), .B1(dpath_a_lt_b_n41), .B2(dpath_b_reg_out_14_), 
        .Y(dpath_a_lt_b_n37) );
  OAI21xp5_ASAP7_75t_SRAM dpath_a_lt_b_U6 ( .A1(dpath_a_reg_out_10_), .A2(
        dpath_a_lt_b_n23), .B(dpath_a_lt_b_n24), .Y(dpath_a_lt_b_n27) );
  AOI21xp5_ASAP7_75t_SRAM dpath_a_lt_b_U5 ( .A1(dpath_b_reg_out_9_), .A2(
        dpath_a_lt_b_n26), .B(dpath_a_lt_b_n27), .Y(dpath_a_lt_b_n30) );
  INVxp33_ASAP7_75t_SRAM dpath_a_lt_b_U4 ( .A(dpath_b_reg_out_15_), .Y(
        dpath_a_lt_b_n42) );
  INVxp33_ASAP7_75t_SRAM dpath_a_lt_b_U3 ( .A(dpath_a_reg_out_13_), .Y(
        dpath_a_lt_b_n36) );
  NAND2xp33_ASAP7_75t_SRAM dpath_a_lt_b_U2 ( .A(dpath_b_reg_out_11_), .B(
        dpath_a_lt_b_n21), .Y(dpath_a_lt_b_n24) );
  INVxp33_ASAP7_75t_SRAM dpath_a_lt_b_U1 ( .A(dpath_a_reg_out_11_), .Y(
        dpath_a_lt_b_n21) );
  NOR4xp25_ASAP7_75t_SRAM dpath_b_zero_U5 ( .A(dpath_b_reg_out_12_), .B(
        dpath_b_reg_out_13_), .C(dpath_b_reg_out_14_), .D(dpath_b_reg_out_15_), 
        .Y(dpath_b_zero_n4) );
  NOR4xp25_ASAP7_75t_SRAM dpath_b_zero_U4 ( .A(dpath_b_reg_out_4_), .B(
        dpath_b_reg_out_5_), .C(dpath_b_reg_out_6_), .D(dpath_b_reg_out_7_), 
        .Y(dpath_b_zero_n2) );
  NOR4xp25_ASAP7_75t_SRAM dpath_b_zero_U3 ( .A(dpath_b_reg_out_8_), .B(
        dpath_b_reg_out_9_), .C(dpath_b_reg_out_10_), .D(dpath_b_reg_out_11_), 
        .Y(dpath_b_zero_n3) );
  NOR4xp25_ASAP7_75t_SRAM dpath_b_zero_U2 ( .A(dpath_b_reg_out_0_), .B(
        dpath_b_reg_out_1_), .C(dpath_b_reg_out_2_), .D(dpath_b_reg_out_3_), 
        .Y(dpath_b_zero_n1) );
  AND4x1_ASAP7_75t_SRAM dpath_b_zero_U1 ( .A(dpath_b_zero_n4), .B(
        dpath_b_zero_n3), .C(dpath_b_zero_n2), .D(dpath_b_zero_n1), .Y(
        dpath_is_b_zero_0_) );
  AO222x2_ASAP7_75t_SRAM dpath_a_mux_U20 ( .A1(dpath_a_mux_n4), .A2(
        resp_msg_13_), .B1(dpath_a_mux_n3), .B2(req_msg_29_), .C1(
        dpath_b_reg_out_13_), .C2(dpath_a_mux_n2), .Y(dpath_a_mux_out_13_) );
  AO222x2_ASAP7_75t_SRAM dpath_a_mux_U19 ( .A1(dpath_a_mux_n4), .A2(
        resp_msg_12_), .B1(dpath_a_mux_n3), .B2(req_msg_28_), .C1(
        dpath_b_reg_out_12_), .C2(dpath_a_mux_n2), .Y(dpath_a_mux_out_12_) );
  AO222x2_ASAP7_75t_SRAM dpath_a_mux_U18 ( .A1(dpath_a_mux_n4), .A2(
        resp_msg_11_), .B1(dpath_a_mux_n3), .B2(req_msg_27_), .C1(
        dpath_b_reg_out_11_), .C2(dpath_a_mux_n2), .Y(dpath_a_mux_out_11_) );
  AO222x2_ASAP7_75t_SRAM dpath_a_mux_U17 ( .A1(dpath_a_mux_n4), .A2(
        resp_msg_10_), .B1(dpath_a_mux_n3), .B2(req_msg_26_), .C1(
        dpath_b_reg_out_10_), .C2(dpath_a_mux_n2), .Y(dpath_a_mux_out_10_) );
  AO222x2_ASAP7_75t_SRAM dpath_a_mux_U16 ( .A1(dpath_a_mux_n4), .A2(
        resp_msg_9_), .B1(dpath_a_mux_n3), .B2(req_msg_25_), .C1(
        dpath_b_reg_out_9_), .C2(dpath_a_mux_n2), .Y(dpath_a_mux_out_9_) );
  AO222x2_ASAP7_75t_SRAM dpath_a_mux_U15 ( .A1(dpath_a_mux_n4), .A2(
        resp_msg_8_), .B1(dpath_a_mux_n3), .B2(req_msg_24_), .C1(
        dpath_b_reg_out_8_), .C2(dpath_a_mux_n2), .Y(dpath_a_mux_out_8_) );
  AO222x2_ASAP7_75t_SRAM dpath_a_mux_U14 ( .A1(dpath_a_mux_n4), .A2(
        resp_msg_7_), .B1(dpath_a_mux_n3), .B2(req_msg_23_), .C1(
        dpath_b_reg_out_7_), .C2(dpath_a_mux_n2), .Y(dpath_a_mux_out_7_) );
  AO222x2_ASAP7_75t_SRAM dpath_a_mux_U13 ( .A1(dpath_a_mux_n4), .A2(
        resp_msg_6_), .B1(dpath_a_mux_n3), .B2(req_msg_22_), .C1(
        dpath_b_reg_out_6_), .C2(dpath_a_mux_n2), .Y(dpath_a_mux_out_6_) );
  AO222x2_ASAP7_75t_SRAM dpath_a_mux_U12 ( .A1(dpath_a_mux_n4), .A2(
        resp_msg_5_), .B1(dpath_a_mux_n3), .B2(req_msg_21_), .C1(
        dpath_b_reg_out_5_), .C2(dpath_a_mux_n2), .Y(dpath_a_mux_out_5_) );
  AO222x2_ASAP7_75t_SRAM dpath_a_mux_U11 ( .A1(dpath_a_mux_n4), .A2(
        resp_msg_4_), .B1(dpath_a_mux_n3), .B2(req_msg_20_), .C1(
        dpath_b_reg_out_4_), .C2(dpath_a_mux_n2), .Y(dpath_a_mux_out_4_) );
  AO222x2_ASAP7_75t_SRAM dpath_a_mux_U10 ( .A1(dpath_a_mux_n4), .A2(
        resp_msg_3_), .B1(dpath_a_mux_n3), .B2(req_msg_19_), .C1(
        dpath_b_reg_out_3_), .C2(dpath_a_mux_n2), .Y(dpath_a_mux_out_3_) );
  AO222x2_ASAP7_75t_SRAM dpath_a_mux_U9 ( .A1(dpath_a_mux_n4), .A2(resp_msg_2_), .B1(dpath_a_mux_n3), .B2(req_msg_18_), .C1(dpath_b_reg_out_2_), .C2(
        dpath_a_mux_n2), .Y(dpath_a_mux_out_2_) );
  AO222x2_ASAP7_75t_SRAM dpath_a_mux_U8 ( .A1(dpath_a_mux_n4), .A2(resp_msg_1_), .B1(dpath_a_mux_n3), .B2(req_msg_17_), .C1(dpath_b_reg_out_1_), .C2(
        dpath_a_mux_n2), .Y(dpath_a_mux_out_1_) );
  AO222x2_ASAP7_75t_R dpath_a_mux_U7 ( .A1(dpath_a_mux_n4), .A2(resp_msg_15_), 
        .B1(dpath_a_mux_n3), .B2(req_msg_31_), .C1(dpath_b_reg_out_15_), .C2(
        dpath_a_mux_n2), .Y(dpath_a_mux_out_15_) );
  NOR2x1_ASAP7_75t_R dpath_a_mux_U6 ( .A(ctrl_a_mux_sel_0_), .B(dpath_a_mux_n2), .Y(dpath_a_mux_n3) );
  AO222x2_ASAP7_75t_SRAM dpath_a_mux_U5 ( .A1(dpath_a_mux_n4), .A2(resp_msg_0_), .B1(dpath_a_mux_n2), .B2(dpath_b_reg_out_0_), .C1(dpath_a_mux_n3), .C2(
        req_msg_16_), .Y(dpath_a_mux_out_0_) );
  AO222x2_ASAP7_75t_R dpath_a_mux_U4 ( .A1(dpath_a_mux_n4), .A2(resp_msg_14_), 
        .B1(dpath_a_mux_n3), .B2(req_msg_30_), .C1(dpath_b_reg_out_14_), .C2(
        dpath_a_mux_n2), .Y(dpath_a_mux_out_14_) );
  INVxp67_ASAP7_75t_R dpath_a_mux_U3 ( .A(ctrl_a_mux_sel_0_), .Y(
        dpath_a_mux_n1) );
  BUFx2_ASAP7_75t_R dpath_a_mux_U2 ( .A(ctrl_a_mux_sel_1_), .Y(dpath_a_mux_n2)
         );
  NOR2x1_ASAP7_75t_R dpath_a_mux_U1 ( .A(dpath_a_mux_n1), .B(dpath_a_mux_n2), 
        .Y(dpath_a_mux_n4) );
  AO22x1_ASAP7_75t_SRAM dpath_b_mux_U17 ( .A1(req_rdy), .A2(req_msg_15_), .B1(
        dpath_b_mux_n1), .B2(dpath_a_reg_out_15_), .Y(dpath_b_mux_out_15_) );
  AO22x1_ASAP7_75t_SRAM dpath_b_mux_U16 ( .A1(req_rdy), .A2(req_msg_12_), .B1(
        dpath_b_mux_n1), .B2(dpath_a_reg_out_12_), .Y(dpath_b_mux_out_12_) );
  AO22x1_ASAP7_75t_SRAM dpath_b_mux_U15 ( .A1(req_rdy), .A2(req_msg_11_), .B1(
        dpath_b_mux_n1), .B2(dpath_a_reg_out_11_), .Y(dpath_b_mux_out_11_) );
  AO22x1_ASAP7_75t_SRAM dpath_b_mux_U14 ( .A1(req_rdy), .A2(req_msg_3_), .B1(
        dpath_b_mux_n1), .B2(dpath_a_reg_out_3_), .Y(dpath_b_mux_out_3_) );
  AO22x1_ASAP7_75t_SRAM dpath_b_mux_U13 ( .A1(req_rdy), .A2(req_msg_2_), .B1(
        dpath_b_mux_n1), .B2(dpath_a_reg_out_2_), .Y(dpath_b_mux_out_2_) );
  AO22x1_ASAP7_75t_SRAM dpath_b_mux_U12 ( .A1(req_rdy), .A2(req_msg_1_), .B1(
        dpath_b_mux_n1), .B2(dpath_a_reg_out_1_), .Y(dpath_b_mux_out_1_) );
  AO22x1_ASAP7_75t_SRAM dpath_b_mux_U11 ( .A1(req_rdy), .A2(req_msg_4_), .B1(
        dpath_b_mux_n1), .B2(dpath_a_reg_out_4_), .Y(dpath_b_mux_out_4_) );
  AO22x1_ASAP7_75t_SRAM dpath_b_mux_U10 ( .A1(req_rdy), .A2(req_msg_5_), .B1(
        dpath_b_mux_n1), .B2(dpath_a_reg_out_5_), .Y(dpath_b_mux_out_5_) );
  AO22x1_ASAP7_75t_SRAM dpath_b_mux_U9 ( .A1(req_rdy), .A2(req_msg_14_), .B1(
        dpath_b_mux_n1), .B2(dpath_a_reg_out_14_), .Y(dpath_b_mux_out_14_) );
  AO22x1_ASAP7_75t_SRAM dpath_b_mux_U8 ( .A1(req_rdy), .A2(req_msg_13_), .B1(
        dpath_b_mux_n1), .B2(dpath_a_reg_out_13_), .Y(dpath_b_mux_out_13_) );
  AO22x1_ASAP7_75t_SRAM dpath_b_mux_U7 ( .A1(req_rdy), .A2(req_msg_10_), .B1(
        dpath_b_mux_n1), .B2(dpath_a_reg_out_10_), .Y(dpath_b_mux_out_10_) );
  AO22x1_ASAP7_75t_SRAM dpath_b_mux_U6 ( .A1(req_rdy), .A2(req_msg_8_), .B1(
        dpath_b_mux_n1), .B2(dpath_a_reg_out_8_), .Y(dpath_b_mux_out_8_) );
  AO22x1_ASAP7_75t_SRAM dpath_b_mux_U5 ( .A1(req_rdy), .A2(req_msg_7_), .B1(
        dpath_b_mux_n1), .B2(dpath_a_reg_out_7_), .Y(dpath_b_mux_out_7_) );
  AO22x1_ASAP7_75t_SRAM dpath_b_mux_U4 ( .A1(req_rdy), .A2(req_msg_6_), .B1(
        dpath_b_mux_n1), .B2(dpath_a_reg_out_6_), .Y(dpath_b_mux_out_6_) );
  AO22x1_ASAP7_75t_SRAM dpath_b_mux_U3 ( .A1(req_rdy), .A2(req_msg_0_), .B1(
        dpath_b_mux_n1), .B2(dpath_a_reg_out_0_), .Y(dpath_b_mux_out_0_) );
  AO22x1_ASAP7_75t_SRAM dpath_b_mux_U2 ( .A1(req_rdy), .A2(req_msg_9_), .B1(
        dpath_b_mux_n1), .B2(dpath_a_reg_out_9_), .Y(dpath_b_mux_out_9_) );
  INVx1_ASAP7_75t_R dpath_b_mux_U1 ( .A(req_rdy), .Y(dpath_b_mux_n1) );
  NAND2xp33_ASAP7_75t_SRAM dpath_sub_U104 ( .A(dpath_sub_n86), .B(
        dpath_sub_n85), .Y(dpath_sub_n87) );
  INVxp33_ASAP7_75t_SRAM dpath_sub_U103 ( .A(dpath_sub_n84), .Y(dpath_sub_n85)
         );
  NAND2xp33_ASAP7_75t_SRAM dpath_sub_U102 ( .A(dpath_sub_n81), .B(
        dpath_sub_n80), .Y(dpath_sub_n83) );
  INVxp33_ASAP7_75t_SRAM dpath_sub_U101 ( .A(dpath_sub_n79), .Y(dpath_sub_n80)
         );
  NAND2xp33_ASAP7_75t_SRAM dpath_sub_U100 ( .A(dpath_sub_n76), .B(
        dpath_sub_n75), .Y(dpath_sub_n78) );
  INVxp33_ASAP7_75t_SRAM dpath_sub_U99 ( .A(dpath_sub_n74), .Y(dpath_sub_n75)
         );
  NAND2xp33_ASAP7_75t_SRAM dpath_sub_U98 ( .A(dpath_sub_n71), .B(dpath_sub_n70), .Y(dpath_sub_n73) );
  INVxp33_ASAP7_75t_SRAM dpath_sub_U97 ( .A(dpath_sub_n69), .Y(dpath_sub_n70)
         );
  XOR2xp5_ASAP7_75t_SRAM dpath_sub_U96 ( .A(dpath_sub_n68), .B(dpath_sub_n67), 
        .Y(resp_msg_13_) );
  XOR2xp5_ASAP7_75t_SRAM dpath_sub_U95 ( .A(dpath_sub_n66), .B(dpath_sub_n65), 
        .Y(resp_msg_14_) );
  NAND2xp33_ASAP7_75t_SRAM dpath_sub_U94 ( .A(dpath_sub_n57), .B(dpath_sub_n56), .Y(dpath_sub_n62) );
  INVxp33_ASAP7_75t_SRAM dpath_sub_U93 ( .A(dpath_sub_n51), .Y(dpath_sub_n52)
         );
  NAND2xp33_ASAP7_75t_SRAM dpath_sub_U92 ( .A(dpath_sub_n50), .B(dpath_sub_n49), .Y(dpath_sub_n55) );
  INVxp33_ASAP7_75t_SRAM dpath_sub_U91 ( .A(dpath_sub_n48), .Y(dpath_sub_n49)
         );
  NAND2xp33_ASAP7_75t_SRAM dpath_sub_U90 ( .A(dpath_sub_n45), .B(dpath_sub_n18), .Y(dpath_sub_n47) );
  NAND2xp33_ASAP7_75t_SRAM dpath_sub_U89 ( .A(dpath_sub_n42), .B(dpath_sub_n41), .Y(dpath_sub_n44) );
  NAND2xp33_ASAP7_75t_SRAM dpath_sub_U88 ( .A(dpath_sub_n51), .B(dpath_sub_n53), .Y(dpath_sub_n40) );
  INVxp33_ASAP7_75t_SRAM dpath_sub_U87 ( .A(dpath_sub_n38), .Y(dpath_sub_n53)
         );
  NAND2xp33_ASAP7_75t_SRAM dpath_sub_U86 ( .A(dpath_sub_n35), .B(dpath_sub_n34), .Y(dpath_sub_n37) );
  OAI21xp33_ASAP7_75t_SRAM dpath_sub_U85 ( .A1(dpath_sub_n82), .A2(
        dpath_sub_n79), .B(dpath_sub_n81), .Y(dpath_sub_n32) );
  INVxp33_ASAP7_75t_SRAM dpath_sub_U84 ( .A(dpath_sub_n31), .Y(dpath_sub_n82)
         );
  NAND2xp33_ASAP7_75t_SRAM dpath_sub_U83 ( .A(dpath_sub_n30), .B(dpath_sub_n29), .Y(dpath_sub_n33) );
  INVxp33_ASAP7_75t_SRAM dpath_sub_U82 ( .A(dpath_sub_n28), .Y(dpath_sub_n29)
         );
  XOR2xp5_ASAP7_75t_R dpath_sub_U81 ( .A(dpath_sub_n26), .B(dpath_sub_n25), 
        .Y(resp_msg_15_) );
  INVxp33_ASAP7_75t_SRAM dpath_sub_U80 ( .A(dpath_b_reg_out_15_), .Y(
        dpath_sub_n24) );
  AO21x1_ASAP7_75t_R dpath_sub_U79 ( .A1(dpath_sub_n46), .A2(dpath_sub_n18), 
        .B(dpath_sub_n20), .Y(dpath_sub_n64) );
  NAND2xp33_ASAP7_75t_SRAM dpath_sub_U78 ( .A(dpath_a_reg_out_11_), .B(
        dpath_sub_n19), .Y(dpath_sub_n45) );
  NAND2xp33_ASAP7_75t_SRAM dpath_sub_U77 ( .A(dpath_a_reg_out_10_), .B(
        dpath_sub_n17), .Y(dpath_sub_n71) );
  AOI21x1_ASAP7_75t_R dpath_sub_U76 ( .A1(dpath_sub_n43), .A2(dpath_sub_n41), 
        .B(dpath_sub_n16), .Y(dpath_sub_n72) );
  NAND2xp33_ASAP7_75t_SRAM dpath_sub_U75 ( .A(dpath_a_reg_out_9_), .B(
        dpath_sub_n15), .Y(dpath_sub_n42) );
  OAI21x1_ASAP7_75t_R dpath_sub_U74 ( .A1(dpath_sub_n77), .A2(dpath_sub_n74), 
        .B(dpath_sub_n76), .Y(dpath_sub_n43) );
  INVxp33_ASAP7_75t_SRAM dpath_sub_U73 ( .A(dpath_b_reg_out_8_), .Y(
        dpath_sub_n14) );
  AOI21xp5_ASAP7_75t_R dpath_sub_U72 ( .A1(dpath_sub_n36), .A2(dpath_sub_n34), 
        .B(dpath_sub_n13), .Y(dpath_sub_n77) );
  INVxp33_ASAP7_75t_SRAM dpath_sub_U71 ( .A(dpath_sub_n35), .Y(dpath_sub_n13)
         );
  NAND2xp33_ASAP7_75t_SRAM dpath_sub_U70 ( .A(dpath_a_reg_out_7_), .B(
        dpath_sub_n12), .Y(dpath_sub_n35) );
  OAI21xp5_ASAP7_75t_R dpath_sub_U69 ( .A1(dpath_sub_n11), .A2(dpath_sub_n39), 
        .B(dpath_sub_n10), .Y(dpath_sub_n36) );
  AOI21xp33_ASAP7_75t_SRAM dpath_sub_U68 ( .A1(dpath_sub_n58), .A2(
        dpath_sub_n56), .B(dpath_sub_n9), .Y(dpath_sub_n10) );
  NAND2xp33_ASAP7_75t_SRAM dpath_sub_U67 ( .A(dpath_a_reg_out_6_), .B(
        dpath_sub_n8), .Y(dpath_sub_n57) );
  OAI21xp33_ASAP7_75t_R dpath_sub_U66 ( .A1(dpath_sub_n48), .A2(dpath_sub_n51), 
        .B(dpath_sub_n50), .Y(dpath_sub_n58) );
  NAND2xp33_ASAP7_75t_SRAM dpath_sub_U65 ( .A(dpath_a_reg_out_5_), .B(
        dpath_sub_n7), .Y(dpath_sub_n50) );
  NAND2xp33_ASAP7_75t_SRAM dpath_sub_U64 ( .A(dpath_a_reg_out_4_), .B(
        dpath_sub_n6), .Y(dpath_sub_n51) );
  AOI21xp5_ASAP7_75t_R dpath_sub_U63 ( .A1(dpath_sub_n5), .A2(dpath_sub_n31), 
        .B(dpath_sub_n4), .Y(dpath_sub_n39) );
  NAND2xp33_ASAP7_75t_SRAM dpath_sub_U62 ( .A(dpath_a_reg_out_3_), .B(
        dpath_sub_n3), .Y(dpath_sub_n30) );
  NAND2xp33_ASAP7_75t_SRAM dpath_sub_U61 ( .A(dpath_a_reg_out_2_), .B(
        dpath_sub_n2), .Y(dpath_sub_n81) );
  NAND2xp33_ASAP7_75t_SRAM dpath_sub_U60 ( .A(dpath_a_reg_out_1_), .B(
        dpath_sub_n1), .Y(dpath_sub_n86) );
  NOR2xp33_ASAP7_75t_SRAM dpath_sub_U59 ( .A(dpath_a_reg_out_1_), .B(
        dpath_sub_n1), .Y(dpath_sub_n84) );
  NOR2xp33_ASAP7_75t_SRAM dpath_sub_U58 ( .A(dpath_sub_n28), .B(dpath_sub_n79), 
        .Y(dpath_sub_n5) );
  NOR2xp33_ASAP7_75t_SRAM dpath_sub_U57 ( .A(dpath_a_reg_out_2_), .B(
        dpath_sub_n2), .Y(dpath_sub_n79) );
  NOR2xp33_ASAP7_75t_SRAM dpath_sub_U56 ( .A(dpath_a_reg_out_3_), .B(
        dpath_sub_n3), .Y(dpath_sub_n28) );
  NAND2xp33_ASAP7_75t_SRAM dpath_sub_U55 ( .A(dpath_sub_n59), .B(dpath_sub_n56), .Y(dpath_sub_n11) );
  NOR2xp33_ASAP7_75t_R dpath_sub_U54 ( .A(dpath_sub_n48), .B(dpath_sub_n38), 
        .Y(dpath_sub_n59) );
  NOR2xp33_ASAP7_75t_SRAM dpath_sub_U53 ( .A(dpath_a_reg_out_4_), .B(
        dpath_sub_n6), .Y(dpath_sub_n38) );
  NOR2xp33_ASAP7_75t_SRAM dpath_sub_U52 ( .A(dpath_a_reg_out_5_), .B(
        dpath_sub_n7), .Y(dpath_sub_n48) );
  INVxp67_ASAP7_75t_SRAM dpath_sub_U51 ( .A(dpath_b_reg_out_5_), .Y(
        dpath_sub_n7) );
  INVxp33_ASAP7_75t_SRAM dpath_sub_U50 ( .A(dpath_b_reg_out_13_), .Y(
        dpath_sub_n22) );
  INVxp33_ASAP7_75t_SRAM dpath_sub_U49 ( .A(dpath_b_reg_out_14_), .Y(
        dpath_sub_n23) );
  OR2x2_ASAP7_75t_SRAM dpath_sub_U48 ( .A(dpath_a_reg_out_7_), .B(
        dpath_sub_n12), .Y(dpath_sub_n34) );
  AO22x1_ASAP7_75t_R dpath_sub_U47 ( .A1(dpath_a_reg_out_14_), .A2(
        dpath_sub_n23), .B1(dpath_sub_n65), .B2(dpath_sub_n66), .Y(
        dpath_sub_n26) );
  XOR2xp5_ASAP7_75t_SRAM dpath_sub_U46 ( .A(dpath_sub_n24), .B(
        dpath_a_reg_out_15_), .Y(dpath_sub_n25) );
  XOR2xp5_ASAP7_75t_SRAM dpath_sub_U45 ( .A(dpath_sub_n64), .B(dpath_sub_n63), 
        .Y(resp_msg_12_) );
  XNOR2xp5_ASAP7_75t_SRAM dpath_sub_U44 ( .A(dpath_sub_n47), .B(dpath_sub_n46), 
        .Y(resp_msg_11_) );
  XOR2xp5_ASAP7_75t_SRAM dpath_sub_U43 ( .A(dpath_sub_n55), .B(dpath_sub_n54), 
        .Y(resp_msg_5_) );
  XNOR2xp5_ASAP7_75t_SRAM dpath_sub_U42 ( .A(dpath_sub_n40), .B(dpath_sub_n60), 
        .Y(resp_msg_4_) );
  XNOR2xp5_ASAP7_75t_SRAM dpath_sub_U41 ( .A(dpath_sub_n33), .B(dpath_sub_n32), 
        .Y(resp_msg_3_) );
  XOR2xp5_ASAP7_75t_SRAM dpath_sub_U40 ( .A(dpath_sub_n83), .B(dpath_sub_n82), 
        .Y(resp_msg_2_) );
  XOR2xp5_ASAP7_75t_SRAM dpath_sub_U39 ( .A(dpath_sub_n88), .B(dpath_sub_n87), 
        .Y(resp_msg_1_) );
  XOR2xp5_ASAP7_75t_SRAM dpath_sub_U38 ( .A(dpath_sub_n21), .B(
        dpath_a_reg_out_12_), .Y(dpath_sub_n63) );
  OR2x2_ASAP7_75t_SRAM dpath_sub_U37 ( .A(dpath_a_reg_out_9_), .B(
        dpath_sub_n15), .Y(dpath_sub_n41) );
  NOR2xp33_ASAP7_75t_SRAM dpath_sub_U36 ( .A(dpath_a_reg_out_8_), .B(
        dpath_sub_n14), .Y(dpath_sub_n74) );
  OR2x2_ASAP7_75t_SRAM dpath_sub_U35 ( .A(dpath_a_reg_out_6_), .B(dpath_sub_n8), .Y(dpath_sub_n56) );
  INVxp33_ASAP7_75t_SRAM dpath_sub_U34 ( .A(dpath_b_reg_out_6_), .Y(
        dpath_sub_n8) );
  XOR2xp5_ASAP7_75t_SRAM dpath_sub_U33 ( .A(dpath_sub_n73), .B(dpath_sub_n72), 
        .Y(resp_msg_10_) );
  XNOR2xp5_ASAP7_75t_SRAM dpath_sub_U32 ( .A(dpath_sub_n44), .B(dpath_sub_n43), 
        .Y(resp_msg_9_) );
  XOR2xp5_ASAP7_75t_SRAM dpath_sub_U31 ( .A(dpath_sub_n78), .B(dpath_sub_n77), 
        .Y(resp_msg_8_) );
  XNOR2xp5_ASAP7_75t_SRAM dpath_sub_U30 ( .A(dpath_sub_n37), .B(dpath_sub_n36), 
        .Y(resp_msg_7_) );
  XNOR2xp5_ASAP7_75t_SRAM dpath_sub_U29 ( .A(dpath_a_reg_out_0_), .B(
        dpath_sub_n27), .Y(resp_msg_0_) );
  XOR2xp5_ASAP7_75t_SRAM dpath_sub_U28 ( .A(dpath_sub_n23), .B(
        dpath_a_reg_out_14_), .Y(dpath_sub_n65) );
  XOR2xp5_ASAP7_75t_SRAM dpath_sub_U27 ( .A(dpath_sub_n22), .B(
        dpath_a_reg_out_13_), .Y(dpath_sub_n67) );
  NOR2xp33_ASAP7_75t_SRAM dpath_sub_U26 ( .A(dpath_a_reg_out_10_), .B(
        dpath_sub_n17), .Y(dpath_sub_n69) );
  INVxp33_ASAP7_75t_SRAM dpath_sub_U25 ( .A(dpath_sub_n57), .Y(dpath_sub_n9)
         );
  OR2x2_ASAP7_75t_SRAM dpath_sub_U24 ( .A(dpath_a_reg_out_11_), .B(
        dpath_sub_n19), .Y(dpath_sub_n18) );
  OAI21xp33_ASAP7_75t_SRAM dpath_sub_U23 ( .A1(dpath_sub_n28), .A2(
        dpath_sub_n81), .B(dpath_sub_n30), .Y(dpath_sub_n4) );
  XOR2xp5_ASAP7_75t_SRAM dpath_sub_U22 ( .A(dpath_sub_n62), .B(dpath_sub_n61), 
        .Y(resp_msg_6_) );
  INVxp67_ASAP7_75t_SRAM dpath_sub_U21 ( .A(dpath_b_reg_out_10_), .Y(
        dpath_sub_n17) );
  INVxp67_ASAP7_75t_SRAM dpath_sub_U20 ( .A(dpath_b_reg_out_11_), .Y(
        dpath_sub_n19) );
  INVxp67_ASAP7_75t_SRAM dpath_sub_U19 ( .A(dpath_b_reg_out_4_), .Y(
        dpath_sub_n6) );
  INVxp67_ASAP7_75t_SRAM dpath_sub_U18 ( .A(dpath_b_reg_out_0_), .Y(
        dpath_sub_n27) );
  INVxp67_ASAP7_75t_SRAM dpath_sub_U17 ( .A(dpath_b_reg_out_12_), .Y(
        dpath_sub_n21) );
  INVxp67_ASAP7_75t_SRAM dpath_sub_U16 ( .A(dpath_sub_n42), .Y(dpath_sub_n16)
         );
  INVxp67_ASAP7_75t_SRAM dpath_sub_U15 ( .A(dpath_b_reg_out_7_), .Y(
        dpath_sub_n12) );
  INVxp67_ASAP7_75t_SRAM dpath_sub_U14 ( .A(dpath_b_reg_out_2_), .Y(
        dpath_sub_n2) );
  INVxp67_ASAP7_75t_SRAM dpath_sub_U13 ( .A(dpath_b_reg_out_3_), .Y(
        dpath_sub_n3) );
  NAND2xp5_ASAP7_75t_SRAM dpath_sub_U12 ( .A(dpath_a_reg_out_8_), .B(
        dpath_sub_n14), .Y(dpath_sub_n76) );
  NOR2xp33_ASAP7_75t_R dpath_sub_U11 ( .A(dpath_a_reg_out_0_), .B(
        dpath_sub_n27), .Y(dpath_sub_n88) );
  OAI21xp5_ASAP7_75t_SRAM dpath_sub_U10 ( .A1(dpath_sub_n84), .A2(
        dpath_sub_n88), .B(dpath_sub_n86), .Y(dpath_sub_n31) );
  AOI21xp5_ASAP7_75t_SRAM dpath_sub_U9 ( .A1(dpath_sub_n60), .A2(dpath_sub_n59), .B(dpath_sub_n58), .Y(dpath_sub_n61) );
  AOI21xp5_ASAP7_75t_SRAM dpath_sub_U8 ( .A1(dpath_sub_n60), .A2(dpath_sub_n53), .B(dpath_sub_n52), .Y(dpath_sub_n54) );
  AO22x1_ASAP7_75t_R dpath_sub_U7 ( .A1(dpath_a_reg_out_12_), .A2(
        dpath_sub_n21), .B1(dpath_sub_n63), .B2(dpath_sub_n64), .Y(
        dpath_sub_n68) );
  AO22x1_ASAP7_75t_R dpath_sub_U6 ( .A1(dpath_a_reg_out_13_), .A2(
        dpath_sub_n22), .B1(dpath_sub_n67), .B2(dpath_sub_n68), .Y(
        dpath_sub_n66) );
  OAI21xp5_ASAP7_75t_SRAM dpath_sub_U5 ( .A1(dpath_sub_n72), .A2(dpath_sub_n69), .B(dpath_sub_n71), .Y(dpath_sub_n46) );
  INVxp33_ASAP7_75t_SRAM dpath_sub_U4 ( .A(dpath_sub_n39), .Y(dpath_sub_n60)
         );
  INVxp33_ASAP7_75t_SRAM dpath_sub_U3 ( .A(dpath_sub_n45), .Y(dpath_sub_n20)
         );
  INVxp33_ASAP7_75t_SRAM dpath_sub_U2 ( .A(dpath_b_reg_out_9_), .Y(
        dpath_sub_n15) );
  INVxp33_ASAP7_75t_SRAM dpath_sub_U1 ( .A(dpath_b_reg_out_1_), .Y(
        dpath_sub_n1) );
  OAI22xp33_ASAP7_75t_SRAM dpath_b_reg_U18 ( .A1(dpath_b_mux_out_1_), .A2(
        dpath_b_reg_n1), .B1(ctrl_b_reg_en_0_), .B2(dpath_b_reg_out_1_), .Y(
        dpath_b_reg_n3) );
  OAI22xp33_ASAP7_75t_SRAM dpath_b_reg_U17 ( .A1(dpath_b_mux_out_8_), .A2(
        dpath_b_reg_n1), .B1(ctrl_b_reg_en_0_), .B2(dpath_b_reg_out_8_), .Y(
        dpath_b_reg_n10) );
  OAI22xp33_ASAP7_75t_SRAM dpath_b_reg_U16 ( .A1(dpath_b_mux_out_2_), .A2(
        dpath_b_reg_n1), .B1(ctrl_b_reg_en_0_), .B2(dpath_b_reg_out_2_), .Y(
        dpath_b_reg_n4) );
  OAI22xp33_ASAP7_75t_SRAM dpath_b_reg_U15 ( .A1(dpath_b_mux_out_11_), .A2(
        dpath_b_reg_n1), .B1(ctrl_b_reg_en_0_), .B2(dpath_b_reg_out_11_), .Y(
        dpath_b_reg_n13) );
  OAI22xp33_ASAP7_75t_SRAM dpath_b_reg_U14 ( .A1(dpath_b_mux_out_12_), .A2(
        dpath_b_reg_n1), .B1(ctrl_b_reg_en_0_), .B2(dpath_b_reg_out_12_), .Y(
        dpath_b_reg_n14) );
  OAI22xp33_ASAP7_75t_SRAM dpath_b_reg_U13 ( .A1(dpath_b_mux_out_3_), .A2(
        dpath_b_reg_n1), .B1(ctrl_b_reg_en_0_), .B2(dpath_b_reg_out_3_), .Y(
        dpath_b_reg_n5) );
  OAI22xp33_ASAP7_75t_SRAM dpath_b_reg_U12 ( .A1(dpath_b_mux_out_10_), .A2(
        dpath_b_reg_n1), .B1(ctrl_b_reg_en_0_), .B2(dpath_b_reg_out_10_), .Y(
        dpath_b_reg_n12) );
  OAI22xp33_ASAP7_75t_SRAM dpath_b_reg_U11 ( .A1(dpath_b_mux_out_9_), .A2(
        dpath_b_reg_n1), .B1(ctrl_b_reg_en_0_), .B2(dpath_b_reg_out_9_), .Y(
        dpath_b_reg_n11) );
  OAI22xp33_ASAP7_75t_SRAM dpath_b_reg_U10 ( .A1(dpath_b_mux_out_13_), .A2(
        dpath_b_reg_n1), .B1(ctrl_b_reg_en_0_), .B2(dpath_b_reg_out_13_), .Y(
        dpath_b_reg_n15) );
  OAI22xp33_ASAP7_75t_SRAM dpath_b_reg_U9 ( .A1(dpath_b_mux_out_7_), .A2(
        dpath_b_reg_n1), .B1(ctrl_b_reg_en_0_), .B2(dpath_b_reg_out_7_), .Y(
        dpath_b_reg_n9) );
  OAI22xp33_ASAP7_75t_SRAM dpath_b_reg_U8 ( .A1(dpath_b_mux_out_15_), .A2(
        dpath_b_reg_n1), .B1(ctrl_b_reg_en_0_), .B2(dpath_b_reg_out_15_), .Y(
        dpath_b_reg_n17) );
  OAI22xp33_ASAP7_75t_SRAM dpath_b_reg_U7 ( .A1(dpath_b_mux_out_0_), .A2(
        dpath_b_reg_n1), .B1(ctrl_b_reg_en_0_), .B2(dpath_b_reg_out_0_), .Y(
        dpath_b_reg_n2) );
  OAI22xp33_ASAP7_75t_SRAM dpath_b_reg_U6 ( .A1(dpath_b_mux_out_6_), .A2(
        dpath_b_reg_n1), .B1(ctrl_b_reg_en_0_), .B2(dpath_b_reg_out_6_), .Y(
        dpath_b_reg_n8) );
  OAI22xp33_ASAP7_75t_SRAM dpath_b_reg_U5 ( .A1(dpath_b_mux_out_14_), .A2(
        dpath_b_reg_n1), .B1(ctrl_b_reg_en_0_), .B2(dpath_b_reg_out_14_), .Y(
        dpath_b_reg_n16) );
  OAI22xp33_ASAP7_75t_SRAM dpath_b_reg_U4 ( .A1(dpath_b_mux_out_5_), .A2(
        dpath_b_reg_n1), .B1(ctrl_b_reg_en_0_), .B2(dpath_b_reg_out_5_), .Y(
        dpath_b_reg_n7) );
  OAI22xp33_ASAP7_75t_SRAM dpath_b_reg_U3 ( .A1(dpath_b_mux_out_4_), .A2(
        dpath_b_reg_n1), .B1(ctrl_b_reg_en_0_), .B2(dpath_b_reg_out_4_), .Y(
        dpath_b_reg_n6) );
  INVx1_ASAP7_75t_R dpath_b_reg_U2 ( .A(ctrl_b_reg_en_0_), .Y(dpath_b_reg_n1)
         );
  DFFHQNx1_ASAP7_75t_SRAM dpath_b_reg_out_reg_0_ ( .D(dpath_b_reg_n2), .CLK(
        clk), .QN(dpath_b_reg_out_0_) );
  DFFHQNx1_ASAP7_75t_SRAM dpath_b_reg_out_reg_1_ ( .D(dpath_b_reg_n3), .CLK(
        clk), .QN(dpath_b_reg_out_1_) );
  DFFHQNx1_ASAP7_75t_SRAM dpath_b_reg_out_reg_2_ ( .D(dpath_b_reg_n4), .CLK(
        clk), .QN(dpath_b_reg_out_2_) );
  DFFHQNx1_ASAP7_75t_SRAM dpath_b_reg_out_reg_3_ ( .D(dpath_b_reg_n5), .CLK(
        clk), .QN(dpath_b_reg_out_3_) );
  DFFHQNx1_ASAP7_75t_SRAM dpath_b_reg_out_reg_6_ ( .D(dpath_b_reg_n8), .CLK(
        clk), .QN(dpath_b_reg_out_6_) );
  DFFHQNx1_ASAP7_75t_SRAM dpath_b_reg_out_reg_7_ ( .D(dpath_b_reg_n9), .CLK(
        clk), .QN(dpath_b_reg_out_7_) );
  DFFHQNx1_ASAP7_75t_SRAM dpath_b_reg_out_reg_8_ ( .D(dpath_b_reg_n10), .CLK(
        clk), .QN(dpath_b_reg_out_8_) );
  DFFHQNx1_ASAP7_75t_SRAM dpath_b_reg_out_reg_9_ ( .D(dpath_b_reg_n11), .CLK(
        clk), .QN(dpath_b_reg_out_9_) );
  DFFHQNx1_ASAP7_75t_SRAM dpath_b_reg_out_reg_10_ ( .D(dpath_b_reg_n12), .CLK(
        clk), .QN(dpath_b_reg_out_10_) );
  DFFHQNx1_ASAP7_75t_SRAM dpath_b_reg_out_reg_11_ ( .D(dpath_b_reg_n13), .CLK(
        clk), .QN(dpath_b_reg_out_11_) );
  DFFHQNx1_ASAP7_75t_SRAM dpath_b_reg_out_reg_12_ ( .D(dpath_b_reg_n14), .CLK(
        clk), .QN(dpath_b_reg_out_12_) );
  DFFHQNx1_ASAP7_75t_SRAM dpath_b_reg_out_reg_13_ ( .D(dpath_b_reg_n15), .CLK(
        clk), .QN(dpath_b_reg_out_13_) );
  DFFHQNx1_ASAP7_75t_SRAM dpath_b_reg_out_reg_14_ ( .D(dpath_b_reg_n16), .CLK(
        clk), .QN(dpath_b_reg_out_14_) );
  DFFHQNx1_ASAP7_75t_SRAM dpath_b_reg_out_reg_15_ ( .D(dpath_b_reg_n17), .CLK(
        clk), .QN(dpath_b_reg_out_15_) );
  DFFHQNx1_ASAP7_75t_SRAM dpath_b_reg_out_reg_5_ ( .D(dpath_b_reg_n7), .CLK(
        clk), .QN(dpath_b_reg_out_5_) );
  DFFHQNx1_ASAP7_75t_SRAM dpath_b_reg_out_reg_4_ ( .D(dpath_b_reg_n6), .CLK(
        clk), .QN(dpath_b_reg_out_4_) );
endmodule

