////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: m.v
// /___/   /\     Timestamp: Mon Feb  9 16:28:26 2026
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog /home/teban/Practica1/ipcore_dir/tmp/_cg/m.ngc /home/teban/Practica1/ipcore_dir/tmp/_cg/m.v 
// Device	: 3s50pq208-5
// Input file	: /home/teban/Practica1/ipcore_dir/tmp/_cg/m.ngc
// Output file	: /home/teban/Practica1/ipcore_dir/tmp/_cg/m.v
// # of Modules	: 1
// Design Name	: m
// Xilinx        : /opt/Xilinx/14.7/ISE_DS/ISE/
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module m (
  clk, ce, load, up, sclr, q, l
)/* synthesis syn_black_box syn_noprune=1 */;
  input clk;
  input ce;
  input load;
  input up;
  input sclr;
  output [3 : 0] q;
  input [3 : 0] l;
  
  // synthesis translate_off
  
  wire \blk00000001/sig0000001e ;
  wire \blk00000001/sig0000001d ;
  wire \blk00000001/sig0000001c ;
  wire \blk00000001/sig0000001b ;
  wire \blk00000001/sig0000001a ;
  wire \blk00000001/sig00000015 ;
  wire \blk00000001/sig00000014 ;
  wire \blk00000001/sig00000013 ;
  wire \blk00000001/sig00000012 ;
  wire \blk00000001/sig00000011 ;
  wire \blk00000001/sig00000010 ;
  wire \blk00000001/sig0000000f ;
  wire \blk00000001/sig0000000e ;
  wire \blk00000001/sig0000000d ;
  wire \blk00000001/sig0000000c ;
  wire \blk00000001/sig0000000b ;
  wire \blk00000001/sig0000000a ;
  wire [3 : 0] NlwRenamedSig_OI_q;
  assign
    q[3] = NlwRenamedSig_OI_q[3],
    q[2] = NlwRenamedSig_OI_q[2],
    q[1] = NlwRenamedSig_OI_q[1],
    q[0] = NlwRenamedSig_OI_q[0];
  LUT4 #(
    .INIT ( 16'h3ACA ))
  \blk00000001/blk00000016  (
    .I0(l[0]),
    .I1(up),
    .I2(\blk00000001/sig0000000b ),
    .I3(NlwRenamedSig_OI_q[0]),
    .O(\blk00000001/sig00000012 )
  );
  LUT4 #(
    .INIT ( 16'hCA3A ))
  \blk00000001/blk00000015  (
    .I0(l[1]),
    .I1(up),
    .I2(\blk00000001/sig0000000b ),
    .I3(NlwRenamedSig_OI_q[1]),
    .O(\blk00000001/sig00000013 )
  );
  LUT4 #(
    .INIT ( 16'hCA3A ))
  \blk00000001/blk00000014  (
    .I0(l[2]),
    .I1(up),
    .I2(\blk00000001/sig0000000b ),
    .I3(NlwRenamedSig_OI_q[2]),
    .O(\blk00000001/sig00000014 )
  );
  LUT4 #(
    .INIT ( 16'hD782 ))
  \blk00000001/blk00000013  (
    .I0(\blk00000001/sig0000000b ),
    .I1(up),
    .I2(NlwRenamedSig_OI_q[3]),
    .I3(l[3]),
    .O(\blk00000001/sig00000015 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \blk00000001/blk00000012  (
    .I0(up),
    .I1(load),
    .O(\blk00000001/sig0000000a )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \blk00000001/blk00000011  (
    .I0(ce),
    .I1(sclr),
    .O(\blk00000001/sig0000001a )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000010  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000001e ),
    .R(\blk00000001/sig0000001a ),
    .Q(NlwRenamedSig_OI_q[3])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000000f  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000001d ),
    .R(\blk00000001/sig0000001a ),
    .Q(NlwRenamedSig_OI_q[2])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000000e  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000001c ),
    .R(\blk00000001/sig0000001a ),
    .Q(NlwRenamedSig_OI_q[1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000000d  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000001b ),
    .R(\blk00000001/sig0000001a ),
    .Q(NlwRenamedSig_OI_q[0])
  );
  XORCY   \blk00000001/blk0000000c  (
    .CI(\blk00000001/sig0000000d ),
    .LI(\blk00000001/sig00000014 ),
    .O(\blk00000001/sig0000001d )
  );
  MUXCY   \blk00000001/blk0000000b  (
    .CI(\blk00000001/sig0000000d ),
    .DI(\blk00000001/sig00000011 ),
    .S(\blk00000001/sig00000014 ),
    .O(\blk00000001/sig0000000e )
  );
  XORCY   \blk00000001/blk0000000a  (
    .CI(\blk00000001/sig0000000c ),
    .LI(\blk00000001/sig00000013 ),
    .O(\blk00000001/sig0000001c )
  );
  MUXCY   \blk00000001/blk00000009  (
    .CI(\blk00000001/sig0000000c ),
    .DI(\blk00000001/sig00000010 ),
    .S(\blk00000001/sig00000013 ),
    .O(\blk00000001/sig0000000d )
  );
  XORCY   \blk00000001/blk00000008  (
    .CI(\blk00000001/sig0000000e ),
    .LI(\blk00000001/sig00000015 ),
    .O(\blk00000001/sig0000001e )
  );
  XORCY   \blk00000001/blk00000007  (
    .CI(\blk00000001/sig0000000a ),
    .LI(\blk00000001/sig00000012 ),
    .O(\blk00000001/sig0000001b )
  );
  MUXCY   \blk00000001/blk00000006  (
    .CI(\blk00000001/sig0000000a ),
    .DI(\blk00000001/sig0000000f ),
    .S(\blk00000001/sig00000012 ),
    .O(\blk00000001/sig0000000c )
  );
  MULT_AND   \blk00000001/blk00000005  (
    .I0(NlwRenamedSig_OI_q[2]),
    .I1(\blk00000001/sig0000000b ),
    .LO(\blk00000001/sig00000011 )
  );
  MULT_AND   \blk00000001/blk00000004  (
    .I0(NlwRenamedSig_OI_q[1]),
    .I1(\blk00000001/sig0000000b ),
    .LO(\blk00000001/sig00000010 )
  );
  MULT_AND   \blk00000001/blk00000003  (
    .I0(NlwRenamedSig_OI_q[0]),
    .I1(\blk00000001/sig0000000b ),
    .LO(\blk00000001/sig0000000f )
  );
  LUT1 #(
    .INIT ( 2'h1 ))
  \blk00000001/blk00000002  (
    .I0(load),
    .O(\blk00000001/sig0000000b )
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

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

endmodule

`endif

// synthesis translate_on
