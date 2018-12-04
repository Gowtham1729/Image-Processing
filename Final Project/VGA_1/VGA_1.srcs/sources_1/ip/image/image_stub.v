// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Wed Nov 21 03:36:54 2018
// Host        : Gowtham running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {C:/Users/Gowtham/Desktop/Final
//               Project/VGA_1/VGA_1.srcs/sources_1/ip/image/image_stub.v}
// Design      : image
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_1,Vivado 2018.2" *)
module image(clka, wea, addra, dina, douta)
/* synthesis syn_black_box black_box_pad_pin="clka,wea[0:0],addra[14:0],dina[95:0],douta[95:0]" */;
  input clka;
  input [0:0]wea;
  input [14:0]addra;
  input [95:0]dina;
  output [95:0]douta;
endmodule
