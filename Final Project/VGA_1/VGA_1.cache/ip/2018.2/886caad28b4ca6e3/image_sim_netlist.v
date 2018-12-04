// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat Nov 10 18:52:45 2018
// Host        : DESKTOP-G0P9LGP running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ image_sim_netlist.v
// Design      : image
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "image,blk_mem_gen_v8_4_1,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_1,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [11:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [23:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [23:0]douta;

  wire [11:0]addra;
  wire clka;
  wire [23:0]dina;
  wire [23:0]douta;
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
  wire [23:0]NLW_U0_doutb_UNCONNECTED;
  wire [11:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [23:0]NLW_U0_s_axi_rdata_UNCONNECTED;
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
  (* C_COUNT_18K_BRAM = "4" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.871782 mW" *) 
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
  (* C_INIT_FILE = "image.mem" *) 
  (* C_INIT_FILE_NAME = "image.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2500" *) 
  (* C_READ_DEPTH_B = "2500" *) 
  (* C_READ_WIDTH_A = "24" *) 
  (* C_READ_WIDTH_B = "24" *) 
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
  (* C_WRITE_DEPTH_A = "2500" *) 
  (* C_WRITE_DEPTH_B = "2500" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "24" *) 
  (* C_WRITE_WIDTH_B = "24" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[23:0]),
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
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[23:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bindec
   (ena_array,
    addra);
  output [0:0]ena_array;
  input [2:0]addra;

  wire [2:0]addra;
  wire [0:0]ena_array;

  LUT3 #(
    .INIT(8'h04)) 
    ENOUT
       (.I0(addra[0]),
        .I1(addra[2]),
        .I2(addra[1]),
        .O(ena_array));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr
   (douta,
    clka,
    addra,
    dina,
    wea);
  output [23:0]douta;
  input clka;
  input [11:0]addra;
  input [23:0]dina;
  input [0:0]wea;

  wire [11:0]addra;
  wire clka;
  wire [23:0]dina;
  wire [23:0]douta;
  wire [4:4]ena_array;
  wire [8:0]ram_douta;
  wire ram_ena_n_0;
  wire \ramloop[1].ram.r_n_0 ;
  wire \ramloop[1].ram.r_n_1 ;
  wire \ramloop[1].ram.r_n_10 ;
  wire \ramloop[1].ram.r_n_11 ;
  wire \ramloop[1].ram.r_n_12 ;
  wire \ramloop[1].ram.r_n_13 ;
  wire \ramloop[1].ram.r_n_14 ;
  wire \ramloop[1].ram.r_n_15 ;
  wire \ramloop[1].ram.r_n_16 ;
  wire \ramloop[1].ram.r_n_17 ;
  wire \ramloop[1].ram.r_n_18 ;
  wire \ramloop[1].ram.r_n_19 ;
  wire \ramloop[1].ram.r_n_2 ;
  wire \ramloop[1].ram.r_n_20 ;
  wire \ramloop[1].ram.r_n_21 ;
  wire \ramloop[1].ram.r_n_22 ;
  wire \ramloop[1].ram.r_n_23 ;
  wire \ramloop[1].ram.r_n_3 ;
  wire \ramloop[1].ram.r_n_4 ;
  wire \ramloop[1].ram.r_n_5 ;
  wire \ramloop[1].ram.r_n_6 ;
  wire \ramloop[1].ram.r_n_7 ;
  wire \ramloop[1].ram.r_n_8 ;
  wire \ramloop[1].ram.r_n_9 ;
  wire \ramloop[2].ram.r_n_0 ;
  wire \ramloop[2].ram.r_n_1 ;
  wire \ramloop[2].ram.r_n_2 ;
  wire \ramloop[2].ram.r_n_3 ;
  wire \ramloop[2].ram.r_n_4 ;
  wire \ramloop[2].ram.r_n_5 ;
  wire \ramloop[2].ram.r_n_6 ;
  wire \ramloop[2].ram.r_n_7 ;
  wire \ramloop[2].ram.r_n_8 ;
  wire \ramloop[3].ram.r_n_0 ;
  wire \ramloop[3].ram.r_n_1 ;
  wire \ramloop[3].ram.r_n_2 ;
  wire \ramloop[3].ram.r_n_3 ;
  wire \ramloop[3].ram.r_n_4 ;
  wire \ramloop[3].ram.r_n_5 ;
  wire [0:0]wea;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bindec \bindec_a.bindec_inst_a 
       (.addra(addra[11:9]),
        .ena_array(ena_array));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_mux \has_mux_a.A 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ({\ramloop[2].ram.r_n_0 ,\ramloop[2].ram.r_n_1 ,\ramloop[2].ram.r_n_2 ,\ramloop[2].ram.r_n_3 ,\ramloop[2].ram.r_n_4 ,\ramloop[2].ram.r_n_5 ,\ramloop[2].ram.r_n_6 ,\ramloop[2].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 ,\ramloop[3].ram.r_n_2 ,\ramloop[3].ram.r_n_3 ,\ramloop[3].ram.r_n_4 ,\ramloop[3].ram.r_n_5 }),
        .DOADO({\ramloop[1].ram.r_n_0 ,\ramloop[1].ram.r_n_1 ,\ramloop[1].ram.r_n_2 ,\ramloop[1].ram.r_n_3 ,\ramloop[1].ram.r_n_4 ,\ramloop[1].ram.r_n_5 ,\ramloop[1].ram.r_n_6 ,\ramloop[1].ram.r_n_7 ,\ramloop[1].ram.r_n_8 ,\ramloop[1].ram.r_n_9 ,\ramloop[1].ram.r_n_10 ,\ramloop[1].ram.r_n_11 }),
        .DOBDO({\ramloop[1].ram.r_n_12 ,\ramloop[1].ram.r_n_13 ,\ramloop[1].ram.r_n_14 ,\ramloop[1].ram.r_n_15 ,\ramloop[1].ram.r_n_16 ,\ramloop[1].ram.r_n_17 ,\ramloop[1].ram.r_n_18 ,\ramloop[1].ram.r_n_19 ,\ramloop[1].ram.r_n_20 ,\ramloop[1].ram.r_n_21 ,\ramloop[1].ram.r_n_22 ,\ramloop[1].ram.r_n_23 }),
        .DOPADOP(\ramloop[2].ram.r_n_8 ),
        .addra(addra[11:9]),
        .clka(clka),
        .douta(douta),
        .ram_douta(ram_douta));
  LUT1 #(
    .INIT(2'h1)) 
    ram_ena
       (.I0(addra[11]),
        .O(ram_ena_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.addra(addra[10:0]),
        .\addra[11] (ram_ena_n_0),
        .clka(clka),
        .dina(dina[8:0]),
        .ram_douta(ram_douta),
        .wea(wea));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.DOADO({\ramloop[1].ram.r_n_0 ,\ramloop[1].ram.r_n_1 ,\ramloop[1].ram.r_n_2 ,\ramloop[1].ram.r_n_3 ,\ramloop[1].ram.r_n_4 ,\ramloop[1].ram.r_n_5 ,\ramloop[1].ram.r_n_6 ,\ramloop[1].ram.r_n_7 ,\ramloop[1].ram.r_n_8 ,\ramloop[1].ram.r_n_9 ,\ramloop[1].ram.r_n_10 ,\ramloop[1].ram.r_n_11 }),
        .DOBDO({\ramloop[1].ram.r_n_12 ,\ramloop[1].ram.r_n_13 ,\ramloop[1].ram.r_n_14 ,\ramloop[1].ram.r_n_15 ,\ramloop[1].ram.r_n_16 ,\ramloop[1].ram.r_n_17 ,\ramloop[1].ram.r_n_18 ,\ramloop[1].ram.r_n_19 ,\ramloop[1].ram.r_n_20 ,\ramloop[1].ram.r_n_21 ,\ramloop[1].ram.r_n_22 ,\ramloop[1].ram.r_n_23 }),
        .addra(addra[8:0]),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .wea(wea));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized1 \ramloop[2].ram.r 
       (.DOPADOP(\ramloop[2].ram.r_n_8 ),
        .addra(addra[10:0]),
        .\addra[11] (ram_ena_n_0),
        .clka(clka),
        .dina(dina[17:9]),
        .\douta[16] ({\ramloop[2].ram.r_n_0 ,\ramloop[2].ram.r_n_1 ,\ramloop[2].ram.r_n_2 ,\ramloop[2].ram.r_n_3 ,\ramloop[2].ram.r_n_4 ,\ramloop[2].ram.r_n_5 ,\ramloop[2].ram.r_n_6 ,\ramloop[2].ram.r_n_7 }),
        .wea(wea));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized2 \ramloop[3].ram.r 
       (.addra(addra[10:0]),
        .\addra[11] (ram_ena_n_0),
        .clka(clka),
        .dina(dina[23:18]),
        .\douta[23] ({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 ,\ramloop[3].ram.r_n_2 ,\ramloop[3].ram.r_n_3 ,\ramloop[3].ram.r_n_4 ,\ramloop[3].ram.r_n_5 }),
        .wea(wea));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_mux
   (douta,
    addra,
    clka,
    DOADO,
    ram_douta,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ,
    DOBDO,
    DOPADOP,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 );
  output [23:0]douta;
  input [2:0]addra;
  input clka;
  input [11:0]DOADO;
  input [8:0]ram_douta;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ;
  input [11:0]DOBDO;
  input [0:0]DOPADOP;
  input [5:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ;
  wire [5:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  wire [11:0]DOADO;
  wire [11:0]DOBDO;
  wire [0:0]DOPADOP;
  wire [2:0]addra;
  wire clka;
  wire [23:0]douta;
  wire [8:0]ram_douta;
  wire [2:0]sel_pipe;
  wire [2:0]sel_pipe_d1;

  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[0]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOADO[0]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(ram_douta[0]),
        .O(douta[0]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[10]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOADO[10]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [1]),
        .O(douta[10]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[11]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOADO[11]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [2]),
        .O(douta[11]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[12]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOBDO[0]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [3]),
        .O(douta[12]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[13]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOBDO[1]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [4]),
        .O(douta[13]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[14]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOBDO[2]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [5]),
        .O(douta[14]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[15]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOBDO[3]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [6]),
        .O(douta[15]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[16]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOBDO[4]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [7]),
        .O(douta[16]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[17]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOBDO[5]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(DOPADOP),
        .O(douta[17]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[18]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOBDO[6]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 [0]),
        .O(douta[18]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[19]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOBDO[7]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 [1]),
        .O(douta[19]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[1]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOADO[1]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(ram_douta[1]),
        .O(douta[1]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[20]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOBDO[8]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 [2]),
        .O(douta[20]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[21]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOBDO[9]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 [3]),
        .O(douta[21]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[22]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOBDO[10]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 [4]),
        .O(douta[22]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[23]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOBDO[11]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 [5]),
        .O(douta[23]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[2]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOADO[2]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(ram_douta[2]),
        .O(douta[2]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[3]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOADO[3]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(ram_douta[3]),
        .O(douta[3]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[4]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOADO[4]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(ram_douta[4]),
        .O(douta[4]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[5]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOADO[5]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(ram_douta[5]),
        .O(douta[5]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[6]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOADO[6]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(ram_douta[6]),
        .O(douta[6]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[7]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOADO[7]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(ram_douta[7]),
        .O(douta[7]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[8]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOADO[8]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(ram_douta[8]),
        .O(douta[8]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[9]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOADO[9]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [0]),
        .O(douta[9]));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[0] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[0]),
        .Q(sel_pipe_d1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[1] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[1]),
        .Q(sel_pipe_d1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[2] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[2]),
        .Q(sel_pipe_d1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[0]),
        .Q(sel_pipe[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[1]),
        .Q(sel_pipe[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[2] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[2]),
        .Q(sel_pipe[2]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width
   (ram_douta,
    clka,
    \addra[11] ,
    addra,
    dina,
    wea);
  output [8:0]ram_douta;
  input clka;
  input \addra[11] ;
  input [10:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [10:0]addra;
  wire \addra[11] ;
  wire clka;
  wire [8:0]dina;
  wire [8:0]ram_douta;
  wire [0:0]wea;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.addra(addra),
        .\addra[11] (\addra[11] ),
        .clka(clka),
        .dina(dina),
        .ram_douta(ram_douta),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized0
   (DOADO,
    DOBDO,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [11:0]DOADO;
  output [11:0]DOBDO;
  input clka;
  input [0:0]ena_array;
  input [8:0]addra;
  input [23:0]dina;
  input [0:0]wea;

  wire [11:0]DOADO;
  wire [11:0]DOBDO;
  wire [8:0]addra;
  wire clka;
  wire [23:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized0 \prim_init.ram 
       (.DOADO(DOADO),
        .DOBDO(DOBDO),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized1
   (\douta[16] ,
    DOPADOP,
    clka,
    \addra[11] ,
    addra,
    dina,
    wea);
  output [7:0]\douta[16] ;
  output [0:0]DOPADOP;
  input clka;
  input \addra[11] ;
  input [10:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [0:0]DOPADOP;
  wire [10:0]addra;
  wire \addra[11] ;
  wire clka;
  wire [8:0]dina;
  wire [7:0]\douta[16] ;
  wire [0:0]wea;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized1 \prim_init.ram 
       (.DOPADOP(DOPADOP),
        .addra(addra),
        .\addra[11] (\addra[11] ),
        .clka(clka),
        .dina(dina),
        .\douta[16] (\douta[16] ),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized2
   (\douta[23] ,
    clka,
    \addra[11] ,
    addra,
    dina,
    wea);
  output [5:0]\douta[23] ;
  input clka;
  input \addra[11] ;
  input [10:0]addra;
  input [5:0]dina;
  input [0:0]wea;

  wire [10:0]addra;
  wire \addra[11] ;
  wire clka;
  wire [5:0]dina;
  wire [5:0]\douta[23] ;
  wire [0:0]wea;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized2 \prim_init.ram 
       (.addra(addra),
        .\addra[11] (\addra[11] ),
        .clka(clka),
        .dina(dina),
        .\douta[23] (\douta[23] ),
        .wea(wea));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init
   (ram_douta,
    clka,
    \addra[11] ,
    addra,
    dina,
    wea);
  output [8:0]ram_douta;
  input clka;
  input \addra[11] ;
  input [10:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [10:0]addra;
  wire \addra[11] ;
  wire clka;
  wire [8:0]dina;
  wire [8:0]ram_douta;
  wire [0:0]wea;
  wire [15:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .INITP_00(256'hFF092BEA9133FFFFBE48C3757FF9ECB8E401AFFEFCCBFA91B7FF9FD7F425B9FF),
    .INITP_01(256'h7B5EE809173E9FEF3FC28B3B57E7CFDA900ADD7FFBA65B4EEADFFCF04E4008E7),
    .INITP_02(256'hA79BF6E646AE68DECD36E5CD414B77BD296C5243F7C4044C4F167FB99EF63B48),
    .INITP_03(256'h95D056FFEF7EBEAC7FFFFE4CF9D7D53FFE295C39F74BFFAB03FF30F5F2F5FE20),
    .INITP_04(256'h63D67D9FFFB962DDA695FFEF552AB0FABFF3084AEBCFEFFDCF53EFBCF7FF7EAC),
    .INITP_05(256'hC1C44AB26FB574A0FD0F6BBFAB31299AC5D3EA4F1E385F3748007C6079FFB846),
    .INITP_06(256'hB90AD59F74695EBD199EB7C7C42D64AEF0DB02FF35555DEBF9267377F0D37DC1),
    .INITP_07(256'h37AF3DC0B8FF8F781E72ADBEDFF67A2FEDF4ECAACC0E53B1775E7EBD47A3BF7D),
    .INIT_00(256'hFFFDF6FFFFFFFFF6FFFFE9FF2F7A2FE8F1FFFFF5DFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_01(256'hFFD8F8FFF7FFFFFFFFFFFFFFFFFFFFFFF2FFFFFAFCF7F8F6F4F2FAFFFFF9F1EB),
    .INIT_02(256'hFFFFFAECF0FFAC24864B80FDFFF3F9F5F1FEFBEFFCEFE4FBE419B3BCD637FCFF),
    .INIT_03(256'hF3F5EDFF75FFFFACC9B4B2D628FDEBF9FFDFFFFAFFFFFFFFFFFFFFFFFFFFF9F2),
    .INIT_04(256'hFBFDFFFFFFFFFFFFFFFFFFFFFBFEFFFDEEFBFF08CAAECFB4CDC226FFFEFFF4E2),
    .INIT_05(256'hBF1CEBFFDDFF76B7B3CB74FCF9F0EDFF203A048C9B262A96B7AEC1FFE5FCFDFF),
    .INIT_06(256'h0F005DC7BCAED9E3BF3AF0FEFFF2FAFBFFFFFFFFFFFFFFFFFFFFFBFDFFFFF6FF),
    .INIT_07(256'hFFFFFFFFFFFFFFFFFAFFFFF2F2FF12E2FFF6FFEEF6FF8DC7DDA0F99660B1820D),
    .INIT_08(256'hFFF6ECF0F3B6CDC3A522D6D2DBA1B2DAD39AB2C52E59D326F4F7F9FFF9FEFFFF),
    .INIT_09(256'hC5E4D2D8B437FF50EFF9FDF9FFFFFFFFFFFFFFFFFFFFEEFFEBFCFCFFF1EDF4E9),
    .INIT_0A(256'hFFFFFFFFFFFFFFD9FCF8DDF1EFFBFAFAEEFDEFC7C1CABEE1C8D3B3409910AE23),
    .INIT_0B(256'hE9EE67C7EBDDCCC5C8D5D479AC31D6DFBFCAAFD7A93BE5FBFFF6FFFFFFFFFFFF),
    .INIT_0C(256'hD3AE87C338E0FFF4FDFDFFF4FCFFFBFFFFFFF6FFF3FBFCFFDDF8F7FCEEF3F7E6),
    .INIT_0D(256'hFFEEFEF8E0FFD3E4E9E9F5F8FFF1FBF01EB8DAC6DCCBBCE0A31100CFDAC9CFD5),
    .INIT_0E(256'hCACED5D2D2D02AFCFFE1BAE5DEC2E50FF09CAB40FFF5FFFBFFFFFFFEF3FFFFFF),
    .INIT_0F(256'hCB1CFFF2FFEEF7FBFAFFFCFFFFFFF5FFFFF9F8FA30EBEDFFE1FFF5FDF4F188BD),
    .INIT_10(256'hF8FC2BD3FDE5FFF6E1F4EEF744B9E2CDC7CAD0CE43FFFFF09CD6CEBCE2DFF2CF),
    .INIT_11(256'hE2CDC5FFF8F1FFB6CFDDE3EAFFEDBE52F0FCFFFFFFFFFBFFFFF8FFFFF5FFF8F3),
    .INIT_12(256'hF1F9FFFFFEF9FFFFFFFFFCFFFFF5EFFEF7DEFFFFEFE5FFD8DABCBFB6C8E0CFCB),
    .INIT_13(256'hF6F3EEFEFFD76DAE64D1E0C3C9C6C7D9CCA9EDF9FC0FC1CECBE9E9F2C81FF7FA),
    .INIT_14(256'hFAFF0FA1C0E6CBA108FBDFF0F7FFFFFFEEF7FFF7FCFFFFFFFCEEFDFFFBFCFF2F),
    .INIT_15(256'hFFFFFAF8FFFFF5FFFFFFF9F1FFDB87DEEFF0DFF7F26BE0D1C9D9D0C1D0D1D79D),
    .INIT_16(256'hFFEDD11BC2D3C7BEBEC4D0C3E1D777C80B60C2D3CA6301FFCCF8EAFFEBFFFFF8),
    .INIT_17(256'hC6D7C1B01826C7E5FBFF36D7FFF6FDFFFFFBFFFFF3FFFFFFFCF9F7FFFFCDE5FD),
    .INIT_18(256'hFFFFF8FBFFFFFBF3FBEFE5FFD8E6F8FFE252D5C8D2AE4341ABD6C5C37CE5025F),
    .INIT_19(256'hCEDBE9D8D5BDD7C7E1CB18E1FFFFF3007C10D6EEAC5756E9FBFFF7FFF8FDFEFF),
    .INIT_1A(256'hECFACC99712F37BDFEFFF6F6FFF4FFFFFFFFFFFFFFFFFFFFF5FFFF77DFCEF1F7),
    .INIT_1B(256'hFFFFFFFFFFFFF8F0FFFFA0EAE2DB11BBCDBECD9E291A170D0F73FFD8F4CC0818),
    .INIT_1C(256'hD6CA93FD27062198FFFCFFF9F4FFF233CDBCBFFFECFFFEFFEEAAF1FFFFFFFFFF),
    .INIT_1D(256'h62F2FFFFF3FFFFF3FFFDFFFFFFFFFFFFFFFFFFFFEDF8EBFCFFFE1B134545B7E9),
    .INIT_1E(256'hFFFFFCECFCFCFCFCF4FCFFFF69A9C8CD07CAF1090F1500000000FEFCFFBDC9CC),
    .INIT_1F(256'hF6FFD9B62E0400FFE4E60FB246FFFEF7FCFFFCF1EEFFFFFAFFFFFFFFFFFFFFFF),
    .INIT_20(256'hFFFFFFFFE8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF5F3F9F2FFFFFA26C2CBC3FF),
    .INIT_21(256'hFFFFFFFFFFFEFBFEE9F90A460A04E5FFB2F0E235FFFBEFA813FFFFFEF9F2FEF0),
    .INIT_22(256'h4CFFFF009663FFFFF4F6F5FFFFFFFFF9F5FFFBFEFFFFFFFFFFFFFFFFFFFFF5FF),
    .INIT_23(256'hFFF6FFFFFFFFFFFFFFFFFFFFFFFFF9E9FFF2FFF6F7F323CCBEAFCADD09AEE730),
    .INIT_24(256'hFAFFE0A7DCD3DBD6D2C5B8DF3DDCF12CB3C3C8C6B0FFF4F5FFFFF7FFFFF8FFF8),
    .INIT_25(256'hCCD9C3E4FFEDF1FFFFF7FFF6FFFFF1FDFFFFFFFFFFFFFFFFFFFFF8EDF9FBF3FE),
    .INIT_26(256'hFFF8FCFEFCFBF5F8FFFDF7EDF8FFF338B2E3D8CFC8C6DACBD1D5BCD5E4DAC664),
    .INIT_27(256'hDACEDCBEC4DACCB49EDFC2D1B534CFB1D5CAB7E5E8FFF5FEFEF8FFF8FFFEFFFF),
    .INIT_28(256'hB862FFE5FBF6EEF9FCF2F6FFFFFFFCFEFEF5F2FFFFFFF1FFF1F9E8FF97AFD0C7),
    .INIT_29(256'hFFFFFFFFFFF8F2FFFF81A6B9D7C8CBC1BECFBBDCCAC1ECECC2BC43ED11C4F2C8),
    .INIT_2A(256'hDCBBC9FBFCFF223EFDFF86AED2DDD5D119FBF4FCFBFBF1FCFFFFFFFFF7F5F3FF),
    .INIT_2B(256'hFDFFFEF8F8FCF8FFFFFFF9FEFEF9F4F7FFFFF7E7FFFF54C7D8DBC4E2B5BECBC0),
    .INIT_2C(256'hF4FBF62EBBD2D1D9D4ACCC77B9BDC3BB27F1FFE9E6F0F0F689AED9DDDCC0D8E6),
    .INIT_2D(256'hF4FAFCF4FFFFA8C9C2CEE5EFC1C6FFFFFFFDFBF6F8FAFFFFFFFEF7FCF8F3F2F1),
    .INIT_2E(256'hE6F7FEFFFFFFFFFFFAFFEDEAF8E6FFFFC2B6D0D2C9CFA322FF29DFE3B4BFF5EE),
    .INIT_2F(256'hC1BCCAAAFFFCA9CECFBDCDD6FFF0F9FEEDDEFBF0A6FAAFB7C6DBC7D3BEFFF4FF),
    .INIT_30(256'hF3FF55EFEE5CC0C4CBDCB6A51BFCFEFBF1FDFFFFF8FEFFFFFFFFFB34CCB4C3CC),
    .INIT_31(256'hFFFFF5F1FFFFB0A1E3B9DBDAE3D7CD2DFCF0F20DA0CDDCDE1CF6EBFFFFFBFFFB),
    .INIT_32(256'h8BB0E4DFC39CFFF6ECF4FFFDFFFDF3FF04FFECFBE95FBAD4D5CCD5ABBC7150BC),
    .INIT_33(256'hFFF9FEFAFFCAD1CCB6D5D33FA58EF9FFFFFFFFF52E8B9239CDB3C2DDC597EAFF),
    .INIT_34(256'hF5FFA5CAD5D2CEB4CADFE713FDC0C3DCC9D3BCD5FEF4FFE7F6FFFAF2FFE31DFF),
    .INIT_35(256'hC9FEF6FFF3FAFFFCE6FFF5FFBAFFFFECF9FFFFAFCAE9CEC1DDC1D53CFEFFEDE2),
    .INIT_36(256'hD0BF6AFEE3C7180300F0FFF0FFFFFDEEF971BBF8F1F2F5069EA43AD7C0D8D09E),
    .INIT_37(256'hEFF2F2FFFFFFED68C5AAD1C1BE1CFFECEAFFF8F5F2FFFFF0EBF2FEE8FEFEFCFF),
    .INIT_38(256'hF0FFFAE6FFFEFE11FEFFFFF0F3FBFEFFFFFEFEFFFBFFFFF9F8FFFAFFB42B59F7),
    .INIT_39(256'hE6F4EFFEF5E4F113065DCF9D23A7C07DDCE9F5D899E4D8CDD5C7A8FFE1FCFFFC),
    .INIT_3A(256'hC8C749C9EEDDEBCC19E6FEEFFBF7FDF0FFFDEDFFEDFFEBFFFFFFF9FBFFFFF2F4),
    .INIT_3B(256'hFEE74CFFF9FCFFFAF3F5FEFFFFFAFFFFFFFFFFFFFFEBFFFEFFFFFFFFFF0FC9E4),
    .INIT_3C(256'hFCF6FCFFF5EFF6F8E2F4EEF8E8FCBCB3C4D0E4B8CCBF22FEFEF7FCF8FAF6F9F7),
    .INIT_3D(256'hB7C9D6C2A9FAFFFEFEF4F3FFFBF1FD2C18F8F9F1FFFFF5F7FBFCFFF8EEF0FCF4),
    .INIT_3E(256'hF4E7F9FCEFFFF8FFFFFFFFFFFFFFFFFFFFFCFEFFFFF7FFFCF5F5F8F7FAFFA5CF),
    .INIT_3F(256'hFFFFF8FFF6EFF8F7FFF1FB67C2D0D7BDCEDCB2A7FED9F0FFE7EBFC14CFE26EFE),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:8],ram_douta[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1],ram_douta[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(\addra[11] ),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized0
   (DOADO,
    DOBDO,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [11:0]DOADO;
  output [11:0]DOBDO;
  input clka;
  input [0:0]ena_array;
  input [8:0]addra;
  input [23:0]dina;
  input [0:0]wea;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_16 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_17 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_24 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_25 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_32 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_33 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_34 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_35 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_8 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_9 ;
  wire [11:0]DOADO;
  wire [11:0]DOBDO;
  wire [8:0]addra;
  wire clka;
  wire [23:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_01(256'h3B3F03343E3F333F3F3F3B3F3F3F3F3F3F3F3F3E3F3F2B393F3F3F3F3F3F3F3F),
    .INIT_02(256'h1229023F0E390E3C09173E380539031511192B073F3F0B3B3F0F373F3F1F3B3F),
    .INIT_03(256'h0538030A0B2833150E38230707051A070C25213B252B130D1B26360F00000431),
    .INIT_04(256'h3F3F3F3E000000150D390B0F0D18231E07273B0A0B391B0F06382B1307282F15),
    .INIT_05(256'h3F3F3B3F3F1F3F3F3E3F3F3F3E3F3B3F3F1F3B3F3D3F233C3A1F17393F3F373C),
    .INIT_06(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3E3F233A3F3F3B3F),
    .INIT_07(256'h3F1F333E3F3F3F3E3D1F0B2E3F3F3F3C3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_08(256'h0E18170D0A190F100F0937033A0F2F3F3B3F133F3E0F2F3F391E1F313F1F373F),
    .INIT_09(256'h0000001B0001083215293B06120923071228023C0E37370C0A18271D0A080F0E),
    .INIT_0A(256'h083807020307270F0C182F1F061807020A38272A09171F080D2732371A1A130B),
    .INIT_0B(256'h3F3F373F3C0F0B3A3B3F073C3E0F2F3F3F3F3B393F3F2B323F3F3B3F13291A2E),
    .INIT_0C(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3B3F3F3F3B3F0F23373D1F0B34),
    .INIT_0D(256'h3F3F3F3F3F1F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_0E(256'h0F270E260000002C3F3F373F3F3F2B3F3F3F3B3F3D0E3F2E3F3F3F3E3C1E3F2E),
    .INIT_0F(256'h3C2F273F060225100B0816380439171A07182323113833290E383B190E29070A),
    .INIT_10(256'h0D3813130B3903100A181F08190A3B18000114213B2F232B3F3F3F313D0E3F2C),
    .INIT_11(256'h3F3F2F3D3F0F273B3F3F3F393D1F1330393E2B380B0922370838130607192727),
    .INIT_12(256'h3F3F3F3F3F3F3F3F3F3F3F3B3F3F33373F3F3F3C3F3F27393F3F3B3E3F3F3B3F),
    .INIT_13(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_14(256'h3F3F3F383F3F1B2D3F3F3F373F3F3F373F2F23313F3F3F3E3E1F373F3D0F373F),
    .INIT_15(256'h13162A09121A0706070732380A38171205081F0A06380A3B1A193B1D15271B01),
    .INIT_16(256'h07010022390D2B273E2F03363E2F0B323F0F23333F3F3F393B3F172A3E2F3F38),
    .INIT_17(256'h3E3F2B3E3B0F373F08333D1E081937060A08330D04380B06112803010E081235),
    .INIT_18(256'h3C2F23373E1F333A3F3F3F3E3F3F3F3C3F0F072D3E1E3F283F3F3F373F3F2F32),
    .INIT_19(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_1A(256'h3C0F17333F2F3B383F3F3F3B3F1F3F3F3E0F3B3F391E3B383F3F3F3F3F3F3F3F),
    .INIT_1B(256'h1B19062913191F0F0B0737080628370A07092B150C280F1417162D313D2F3F3F),
    .INIT_1C(256'h3D1F333F3F3F373F3F3F333F3F3F1F3E3F3F2B3F3F3F133F3D0F0F3D3B0E1F30),
    .INIT_1D(256'h1108063903180A3F0D0927170F282A3E1D292B00330F233F392F333F3B1F373F),
    .INIT_1E(256'h3F3F3B3F3D1F07363F1F373F3D2F3F3F3B3F3F3F381F1F3C291C1F1F0001183D),
    .INIT_1F(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3E0F3F3F392E2F2A),
    .INIT_20(256'h3A0F13363A2E3F2E3C2F13343F1F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_21(256'h120803120919131C00083F0907082B12192A070F00002C30352F333F3A0F3B3F),
    .INIT_22(256'h3F3F2F343E2F3F3F3B0F373F361F133F3B2F2B3F3F3F3F34373D2B191C390702),
    .INIT_23(256'h0A383F0900002C2F3A1F273F3C3F3B3B3D0F173F3E1F173F3F3F333F3F3F132E),
    .INIT_24(256'h372F1B3F000000240E372A26132923080E381E371619231C09080F120A39031F),
    .INIT_25(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F393F1F3F3C393E2F303B3F273F),
    .INIT_26(256'h3F3F3F3B3F3F33353F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_27(256'h0F18170B1328331308080F1509172F0110381636200A23042F0D031B3E3F3F3F),
    .INIT_28(256'h3F3F3F353F3F3F2B3E0F1B3F3E2F3F313C2F23270E152E0606381B1706083319),
    .INIT_29(256'h3F1F3F3B3F3F3F2C3F3F3F283F3F3F323E2F3F3F3B3F3B3F3B3F373F3D0F273A),
    .INIT_2A(256'h0A383B1E0518231F0B1913130C0737130418172307371F110F1A0B1900000017),
    .INIT_2B(256'h3F3F3F3F3F3F3F3F3F3F3F313C3F07293D2F373F0000041D14073A2E11083711),
    .INIT_2C(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_2D(256'h080816391E18330916162E20091816230A1732112A191A2F3F3E0B33373F3F3F),
    .INIT_2E(256'h3F3F2B2F3F3F3F3B3B1F3F3F333F1B3F15190E310F29023F06071E360B090B1A),
    .INIT_2F(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_30(256'h0538270809283F080B281A341519223900010C24393F373F3E3F3F3B3F3F3F35),
    .INIT_31(256'h3E0F3B3F3D3F333F383F3B3F223A1E380000002012083239083837030E080B0A),
    .INIT_32(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_33(256'h0001283C063431221C090E21390E072A3F3F373F3E0F3F3C3F3F3F3F3F3F3F3F),
    .INIT_34(256'h3D1E272F3F3F2B3F3F2F173F3C0E233F133415300000002603350D380A143134),
    .INIT_35(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F373E3F3F273B),
    .INIT_36(256'h3E0F1B3F3E0F133F393E032F3F3F1F3F3F3F373F3F3F2B3B3F3F3F3F3F3F3F3F),
    .INIT_37(256'h3A3F3B3B363E2F311826213B0003211507172A2105350E09031034351214252D),
    .INIT_38(256'h000000000000000000000000000000003F3F3F3F3F3F3F3F3F3F3F3E3F1F2738),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({addra,1'b1,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,dina[11:6],1'b0,1'b0,dina[5:0]}),
        .DIBDI({1'b0,1'b0,dina[23:18],1'b0,1'b0,dina[17:12]}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_1 ,DOADO[11:6],\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_8 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_9 ,DOADO[5:0]}),
        .DOBDO({\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_16 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_17 ,DOBDO[11:6],\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_24 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_25 ,DOBDO[5:0]}),
        .DOPADOP({\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_32 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_33 }),
        .DOPBDOP({\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_34 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_35 }),
        .ENARDEN(ena_array),
        .ENBWREN(ena_array),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({wea,wea}),
        .WEBWE({1'b0,1'b0,wea,wea}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized1
   (\douta[16] ,
    DOPADOP,
    clka,
    \addra[11] ,
    addra,
    dina,
    wea);
  output [7:0]\douta[16] ;
  output [0:0]DOPADOP;
  input clka;
  input \addra[11] ;
  input [10:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [0:0]DOPADOP;
  wire [10:0]addra;
  wire \addra[11] ;
  wire clka;
  wire [8:0]dina;
  wire [7:0]\douta[16] ;
  wire [0:0]wea;
  wire [15:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .INITP_00(256'hFF6C171A083FFFEB16560999FFFAE11FD7276FFEB51F76999FFF765D47AB9DFF),
    .INITP_01(256'hBFDDF9B3488A3FFFFFE0779B7627F1D65B984FFFFF6ED98EF0FFFF84C0BDF27B),
    .INITP_02(256'h31FDFFFD279745AEEFCFC3AFC143F79FA670B8593BDD93591F1D7FB5D06EBBF6),
    .INITP_03(256'hA58B4FFFFFE96830BFBFF6C9830E97DFFEAB5F59D2FBFF4972CC03F3FDA0EC76),
    .INITP_04(256'hAE20FD6FE9B9C76774ACFFFFD294CD7AFFFCA8C8EBFE7FFF7EC9E41EF7FFC56C),
    .INITP_05(256'h5BD7C525BDFE8CA7FB63FBF4657A47E3FFFE9E0BE8C45BFBF7330994FFBFAF90),
    .INITP_06(256'hE05A3CB3246BF29F3BEF76AF21A4847AE8A9BA77888D53B2F34E7B2833877E5B),
    .INITP_07(256'hC34F6265BFFF8FC40F26EFDFDDF528495B4BFEC2177547DD7D72EF8B325DDC6B),
    .INIT_00(256'h7F7F7D7F7BFEFFFFFB78FE79003587FDFFF9FBFFFBFF7DFFFFFFFFFFFFFFFFFF),
    .INIT_01(256'hFE72FFFEF7FFFFFFFFFFFFFFFFFFFFFF7DFF7B78FFFFFF7DFF7DFCFDFDFFFF7F),
    .INIT_02(256'hFDFEFFFB7B7F4E093818B3F4FCF9FCFB79FFFFFAFF7A7C787906C6C64A14FCFD),
    .INIT_03(256'hFFFFF6FC387FFE3FC04939C905FCFDFFFFECFEFEFFFFFFFFFFFFFFFFFFFFFFF8),
    .INIT_04(256'hFF7FFFFFFFFFFFFFFFFFFFFFFFFEFE7CF9FFFF0054C24FC150CE00F6FFFFF9F4),
    .INIT_05(256'hD881D45CC25B16BF424FA777FFFD737D081A83AF320001AA343AC5FEFEFF76FD),
    .INIT_06(256'h0301A64741BE51BE3F96FF7F7EF4FE7FFFFFFFFFFFFFFFFFFFFFFF7DFCFFFDFF),
    .INIT_07(256'hFFFFFFFFFFFFFFFFFFFFFF79FBFF005B5E55D6CACEDDA94F51C4FF499BBAA900),
    .INIT_08(256'h5CD44F55DEC53DCB4A01473C4F45BA4CC2BE4E4B0DAB4C05F97C7AFEFC7FFFFF),
    .INIT_09(256'hC440CB3DC205FD29FDFC7C7EFFFFFFFFFFFFFFFFFFFFF8FF74FFFF7C66D8D34E),
    .INIT_0A(256'hFFFFFFFFFFFFFFEFFF75575554D75556D2DBD540C648BECC3EC53A05B808CE00),
    .INIT_0B(256'h55D8A341C4BD42CA4A4A442BBD07CDB94348464FBF1FFEFEFE7CFFFFFFFFFFFF),
    .INIT_0C(256'hBC49BDCA00FFF57FFEFEFF7A7EFFFDFFFFFF7BFF7AFFFF7CD5D5D7D7D0D5D8D2),
    .INIT_0D(256'hFFF5FFFFF5FE5652D7D4D653584FD6D3004ACE3AC745BECF4685025341BDC3C6),
    .INIT_0E(256'h453D4447C8C40A747F67C24AC544C602F1BD3BA8FCFFFFFDFFFFFF7FF9FFFFFF),
    .INIT_0F(256'hCC067FFAFF77FBFD7DFF7EFFFFFF79FFFFFFFFFB075853DE4B5B545855D4B1C9),
    .INIT_10(256'hFFFD88D1D24860574E5855D889424E3D3DC345419574FDFC45C7BDC5C5F6F45F),
    .INIT_11(256'h4EBFCFF879FFFDC347CDC7FFFF77C4157DFDFFFFFFFFFDFFFF7CFFFFFAFF7CFC),
    .INIT_12(256'hF8FCFFFF7FFCFFFFFFFFFFFFFF7BFC7F72DCD5555150E14ECF3FC3BC3FC94445),
    .INIT_13(256'hD2D252DD614E9BBC13C7CC3E43434246C7C67AFFFA004AB9BEFF77FE46007FFB),
    .INIT_14(256'h7DFE834D4CC1C352067FCDEDFF7FFFFF77FBFFFB7EFFFFFFFFF6FBFFFFFF7D0A),
    .INIT_15(256'hFFFF7D7CFFFFFFFFFEFF7EFBFFE7A952D6D44CDD5F9ED1C5C1CCCAC448434541),
    .INIT_16(256'hD754CF00C2C64141C1C6493DCC552EE005A74A3D49A400FEC27F787BF5FFFF7C),
    .INIT_17(256'h48C64AC188093EFFFEFA1BEBFF7BFEFFFFFDFFFF7FFF7B7EFFFF7DFF7D56D558),
    .INIT_18(256'hFFFFFFFD7BFE7E7FFF78767D524BD05E57184BC047B9050538C845BF2673839F),
    .INIT_19(256'h4CC8C440CBC2C83BBACA0AF3F4FBF306C092FA754A19A6F9FDFFFBFF7CFE7FFF),
    .INIT_1A(256'h7472CB332A169BDE7FFF7B7BFF7AFFFFFFFFFFFFFFFFFFFF7CFFFAAE59C8D4D4),
    .INIT_1B(256'hFFFFFFFFFFFFFF7BFFFC42E2D9D480CC4939C8BD8B089001002E7F6A72D6008B),
    .INIT_1C(256'h3CBB30771B850BC277737B6FF075ED02C63BCC7B76FF7FFF7755F8FFFFFFFFFF),
    .INIT_1D(256'h1FF5FFFFF9FFFFF9FFFEFFFFFFFFFFFFFFFFFFFFFCFFF87EFFF98601241EC64E),
    .INIT_1E(256'hFFFFFFF8FFFFFFFFFCFFFB79A5BDC8D000F97A0202068008070EFC7AFDCD47CC),
    .INIT_1F(256'hFF6A2B9F808803F77372005114F7F8FF7EFF7EF877FFFF7DFFFFFFFFFFFFFFFF),
    .INIT_20(256'hFFFFFFFF74FFFFFFFFFFFFFFFFFFFFFFFEFE7D7DFA7BFF7CF9FD7580C0BFBDE9),
    .INIT_21(256'h7CFEFFFFFFFF7C7FF8FE06200080776595AA3600F1F370CB027A7FFEFFFD7F78),
    .INIT_22(256'h8E777F093420FB7DFAFFFBFFFFFFFFFCFAFFFD7FFFFFFFFFFFFFFFFFFFFF75FD),
    .INIT_23(256'hFF7BFFFFFFFFFFFFFFFFFFFFFFFF7B73FFF8FFFAFE7380D0CA3EC95487576C06),
    .INIT_24(256'h7DFFEFC4C9B7C0C4C53FBA4F07697F9A4638C5C8CAFCFEFCFF74FBFFFF7CFF7C),
    .INIT_25(256'h40494052F5FFFFF5FE7BFF79FEFEFA7FFFFFFFFFFFFFFFFFFFFFFFFBFFFF7BFF),
    .INIT_26(256'hFE7AFDFF7F7FFFFFFAFF7FFFFF7FEC87BD4949BF404845C33FC94045C23EC5A5),
    .INIT_27(256'h3E47D3394A43C03BB7533A41420CCC3DC5C44EF6FCFD7D7F7F7CFFFBFF7FFFFF),
    .INIT_28(256'h47A8FE777FFFFBFF7FF9FAFEFFFFFFFF7F7BF87DFDFEF5FEFA7F7577BBC5C1C7),
    .INIT_29(256'hFDFCF9FA7F7CF7FCFC313E44453D4843C24C38CA424AE6E3CAC30A6B00C9D13E),
    .INIT_2A(256'hC642CBE9F57A030F72FAC33D3EC3494E007FFBFFFFFF7C7FFFFEFFFFFE7CF9FE),
    .INIT_2B(256'hFAFCFEFE7F7F7CFEFFFFFCFEFFFDFAFB7F7FFF77FDFA954B4EC73FCCC8C4C543),
    .INIT_2C(256'hFFFEF207C5C7BF414AC5C8A43F354DC5006DFD7171F16C7045C0C143C1B552E9),
    .INIT_2D(256'hF37A79F4FCF5515343C2444B3FC876FCFCFDFF7E7DFCFFFFFFFEFCFFFFFFFFFF),
    .INIT_2E(256'hF57F7FFFFFFF7F7EFCFFF7F6FFF5FBF950C34BC841C4C10074004DD245546FEA),
    .INIT_2F(256'hC0C6D547FFF1CDC93FC1CDE97BEF71F4716975EE4B77CEC0BCCB3FC3D27EF1FD),
    .INIT_30(256'h72771F7E791CC4C644C14D4504FAFF7F7BFDFFFFFCFEFDF977FBEE8A4BC0C544),
    .INIT_31(256'hFFFFFFFCFFFCCA3CD941C4C2C74648047B7FF68C4AD3C5BF00F7F17A736FFB76),
    .INIT_32(256'hAD34C2C547C47DF77072F7F27473F0F800FDF7FFF4A648C9C6C5CDB941211CDB),
    .INIT_33(256'h7FFDFE72F3C342C4BBCA4902C03EFCFF7BFDFF7712BEBA0847C74DC5C44DFFFB),
    .INIT_34(256'h7F7FC64EC8BCC3B8B8B9500071BCC64B3E46C95FFA73FBECF1F671EEF96A8BFF),
    .INIT_35(256'hD4777275F3F67873687CF3FDD97FFFF7FF7FEF3D4153C9414C41D40E7FFFFFFC),
    .INIT_36(256'h5F4C337FF6658A0002FFFF7871FCF8F4FFBE63FEFD7FFE00424003D33ECBC939),
    .INIT_37(256'hFDFBFFFCF4FFFAB04BB942BFC900F9EEECF47672707A776F6E74FFF07EFFFF7E),
    .INIT_38(256'hF177746A7777F903FFFF7DF9FAFC75F9FDFEFFFFF7FDFEFF7CFFFAFFDC1932FF),
    .INIT_39(256'hFEFFFAFFFFFAF8898D36EB4904BF449D7175FFF83CC53DCAC0C4BFFC6CFA77F2),
    .INIT_3A(256'h3C49853846404C46006BFDF0757077F079F5EEFB717CF8FFFEFE7FFFFC7CFDFF),
    .INIT_3B(256'h776C217FFFFEFC7BFF7FFF7FFB75FEFD78FAFBFDFFF5FDFAFDFCF8FEFD804BCA),
    .INIT_3C(256'hFFFF7EFFFF7FFFFFF67FFDFF74FF6456C93CCB43BC4402FA76F1F2F574F2F3F2),
    .INIT_3D(256'h3E4CC347CA7673EE7374F0F7F4EFF61007797F78FEFFFDFFFFF97F7FFFFFFF7A),
    .INIT_3E(256'hFF79FFFFF7FFFBFFFFFFFFFFFFFFFFFFFF7E7C7FFEF7FE7F7DFC7F7FFDF5BFC9),
    .INIT_3F(256'hFE7C79FFFDFBFFFFFFF77FA7C4BBC745414D4043F5E46F747573F7004DC91CFF),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:8],\douta[16] }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1],DOPADOP}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(\addra[11] ),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized2
   (\douta[23] ,
    clka,
    \addra[11] ,
    addra,
    dina,
    wea);
  output [5:0]\douta[23] ;
  input clka;
  input \addra[11] ;
  input [10:0]addra;
  input [5:0]dina;
  input [0:0]wea;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_33 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_8 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_9 ;
  wire [10:0]addra;
  wire \addra[11] ;
  wire clka;
  wire [5:0]dina;
  wire [5:0]\douta[23] ;
  wire [0:0]wea;
  wire [15:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h3A3C3D3D393B3F3F3F3B3F350011013F3F3D3D3F3D3F3D3B3F3F3F3F3F3F3F3F),
    .INIT_01(256'h3F383F3F3B3C3F3F3F3F3F3F3F3F3F3F3E3F3E3C3F3E3E3D3F3D3E3F3F3E3C39),
    .INIT_02(256'h3F3F3E3B3C3E30031100133B3F3F3F3F3C3F3F3F3F373C3437000F0E09003B3F),
    .INIT_03(256'h3F3F3E3F1B373F07150E0C0B003F3F3F3C373F3C3F3F3F3F3F3F3F3F3F3F3F3C),
    .INIT_04(256'h3F3E3F3F3F3F3F3F3F3F3F3F3F3F3F3E3B3E3E001711170A0E12003F3C3F3F3F),
    .INIT_05(256'h2C0126332D3200090A15163B3F3E3B3E000007141100000A0912133F3F3F363F),
    .INIT_06(256'h000108180B1214040B083F3E3A3C3F3E3F3F3F3F3F3F3F3F3F3F3F3F3E3F3D3E),
    .INIT_07(256'h3F3F3F3F3F3F3F3F3F3F3F3C3C3E0030332B2C2D35350809050F3C21000C0D03),
    .INIT_08(256'h2E2C2E2D240B06101300110A130F080E090C1A0E00080F003C3B3A3F3F3E3F3F),
    .INIT_09(256'h030F0B060A0037113E3F3F3B3F3F3F3F3F3F3F3F3F3F3B3F3A3F3F3E352F332B),
    .INIT_0A(256'h3F3F3F3F3F3F3F363F3A2E2F2B3236352E333632040B0B11070A09000C051300),
    .INIT_0B(256'h2C2E060E08050C110B050D0B0B0010030D120C15130B3F3F3E393F3F3F3F3F3F),
    .INIT_0C(256'h09170A0C003F3F3E3F3F3F3D3F3F3E3F3F3F3D3F3D3F3F3E2D2F2E2F2C2C2C29),
    .INIT_0D(256'h3F3A3F3F393F2E2E2E2D2F2F322E312F00080A0E0F05040D0B0F00140D050E0E),
    .INIT_0E(256'h080F0E090B0B003F3D2C0E090F080A002E0F12113E3F3F3E3F3F3F3F3C3F3F3F),
    .INIT_0F(256'h11003A3F3F3B3D3E3E3F3F3F3F3F3D3F3F3F3F3D06312E332A322E302F2E170B),
    .INIT_10(256'h3F3E062C2F2A352F2A2E2C2E040C0D0D0A080B0C043D3F3F180805060838392D),
    .INIT_11(256'h0F0B193F3E3F3F1004100C3F3F3F0A07363F3F3F3F3F3E3F3F3E3F3F3D3F3E3D),
    .INIT_12(256'h3C3E3F3F3F3E3F3F3F3F3F3F3F3D3D3F3A3131302D2B3127271F1D0A050E0C09),
    .INIT_13(256'h2E2E2D3132270C1D000E09040C0A070C0A203E3E3F000B090C3F3A3F0D003B3F),
    .INIT_14(256'h3E3F0224140B0E23003F15373F3E3F3F3B3D3F3D3F3F3F3F3F3B3E3F3F3F3F07),
    .INIT_15(256'h3F3F3E3E3F3F3E3F3F3F3F3D3F34172C2E2D2930300F120C040B120E0A09070D),
    .INIT_16(256'h302E2900050D070815160E070D101332040E0C0A0B06003B113A3F3E3A3F3F3E),
    .INIT_17(256'h00120411070110333F3F0D353F3D3F3F3F3E3F3F3E3F3E3F3F3F3E3F3E2C2E30),
    .INIT_18(256'h3F3F3F3E3E3F3F3E3F3C383E2C2B2E352F0E070C0D080000080E0A080A370A07),
    .INIT_19(256'h140F0E050207140804120031303230001A0229360D00063F3E3F3D3F3E3F3F3F),
    .INIT_1A(256'h382B18040D0C0D2F3F3F3D3D3F3D3F3F3F3F3F3F3F3F3F3F3E3F3E1930293030),
    .INIT_1B(256'h3F3F3F3F3F3F3F3D3F3F2334302E01130E0E130E000506040418382A342E0404),
    .INIT_1C(256'h000D12300B03071D302A302F373D2E000A101B3A3B3F3F3F3B2A3C3F3F3F3F3F),
    .INIT_1D(256'h10363F3F3C3F3F3C3F3F3F3F3F3F3F3F3F3F3F3F3D3F3B3F3F3D040212000B0A),
    .INIT_1E(256'h3F3F3F3B3F3F3F3F3D3F3F3B0B0B0717002C2E000309010000002F2D37071313),
    .INIT_1F(256'h2E3120200A0500372B2B000F01303F3D3F3F3F3C3B3F3F3E3F3F3F3F3F3F3F3F),
    .INIT_20(256'h3F3F3F3F3A3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3D3D3F3D3F373901120A1433),
    .INIT_21(256'h3F3F3F3F3F3F383B3F3F000903063532121F220035333527003D3A3F3F3F3F3C),
    .INIT_22(256'h0B3D3A0014063B3C3F3E3E3E3F3F3F3E3D3F3E3F3F3F3F3F3F3F3F3F3F3F3B3F),
    .INIT_23(256'h3F3D3F3F3F3F3F3F3F3F3F3F3F3F3E3A3F3C3F3D3F3E001806060C0100293606),
    .INIT_24(256'h3E3F380B06040910130B0312002B38001004080D093F393F383C3D3F3F3E3F3E),
    .INIT_25(256'h03100112383F3F3C3F3F3F3F3F3F3B3B3F3F3F3F3F3F3F3F3F3F3F3C3F3F3D3F),
    .INIT_26(256'h3F3F3F3F3E3D3B3B3F3E393B3F3E3302060C0D090B0E0B07070C0A0B04051208),
    .INIT_27(256'h0C0C0D01090B060D0812080C0E0016000B0D1A3B393F3D3E3E3D3F3F3F3E3F3F),
    .INIT_28(256'h11063F3B3D3B393C3E3D3E3F3F3F3C3C3D3C3B3F3F3F353F3F3D373D19100D0F),
    .INIT_29(256'h3F3F3F3F3A3B3F3F3F0D09080E0C0607080B0A0E100F26270F10002A00070C10),
    .INIT_2A(256'h0D0A112E2F2E000028381D0A000F110F003E3D3F3F3F3B3E3F3F3F3F3F3F3E3F),
    .INIT_2B(256'h3F3F3F3F3E3D3D3F3F3F3F3F3F3F3D3D3E3E3F393F3F050C06080A040806101A),
    .INIT_2C(256'h3F3F3D000A0A06020A0C120511070F07002537362B2E332C1F0C08060C050E32),
    .INIT_2D(256'h2E2F38322F3422200C06100C011A373F3F3F3F3B3C3F3F3F3C3B3A3C3C3B3C3C),
    .INIT_2E(256'h3A3C3E3F3F3F3D3D3D3F3E3F3F3F3D3A1E0D0B0B0C1009003A00120007102A30),
    .INIT_2F(256'h100F1C203C302D150107072B37292D302A29342A203815110D070A0C16363B3F),
    .INIT_30(256'h2D31103239060A0D0C070710003F3F3D3C3F3F3F3F3F3F3F3E3E38051F0B070E),
    .INIT_31(256'h3F3F3F3E3C34140812030908080814003E3A3F02090C0B0E00392F342B283130),
    .INIT_32(256'h02050D0A0C0B2F302D2F3230302F2D30013F383C3D0D0A0409090D0610050628),
    .INIT_33(256'h3E3F3F3D360F0D0D09131600191A3E3F3E3D3F3F081512000A17080713323F3D),
    .INIT_34(256'h3E3D18110A090C0703051000300D0E0F010E1027302E322B2E302E2C312A0639),
    .INIT_35(256'h2535352D2D2F302E29332E34303B3E3E3D3A2C05050D07050D0B15003F3F3F3B),
    .INIT_36(256'h1B11173D362E0200003F3F3C383C3D3F3F1E323F3F3E3F01100800170B080B02),
    .INIT_37(256'h393F3F343B3B3B071B070A0B0A002F372B2F2E2C2B31302D2D313F3C3E3C3F37),
    .INIT_38(256'h2C2F2D28303234003B3F3E3B3F3F393E3F3F3F3E3B3E3F3F3E3F3B3C2C10193B),
    .INIT_39(256'h3E3F3C3F3E3B3C04091A33240010110337373F34210D0711090E1B31312B312C),
    .INIT_3A(256'h050C000D07060C1700352C29282E302B302E2C3533393B3B3F3F3E3E3F3B3F3F),
    .INIT_3B(256'h322F0D3D3F3D3F3F37373B373F3C3F3F3F3F3F3F3F3A3F3D3F3F3F3B3C021613),
    .INIT_3C(256'h3F3F3F3F3F3B3E3F3939393F343E2E28170B0B0E060E003032272E2F2F2E2E2D),
    .INIT_3D(256'h080F090D0F2D2F30302F2E312F2C3202013C3A3E3F3E3F3F3F3F3E3E3D3E3F3D),
    .INIT_3E(256'h3F3E3F3F3B3F3D3F3F3F3F3F3F3F3F3F3F3F3F3E3F3F3F3E3F3F3E3F3F3F050E),
    .INIT_3F(256'h3E3D3C3F3E3E3F3F383F3F120B0E0A0A09110F1530292E31372A3100150B033F),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_8 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_9 ,\douta[23] }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_33 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(\addra[11] ),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top
   (douta,
    clka,
    addra,
    dina,
    wea);
  output [23:0]douta;
  input clka;
  input [11:0]addra;
  input [23:0]dina;
  input [0:0]wea;

  wire [11:0]addra;
  wire clka;
  wire [23:0]dina;
  wire [23:0]douta;
  wire [0:0]wea;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .wea(wea));
endmodule

(* C_ADDRA_WIDTH = "12" *) (* C_ADDRB_WIDTH = "12" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "4" *) 
(* C_COUNT_36K_BRAM = "0" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.871782 mW" *) 
(* C_FAMILY = "artix7" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "0" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "image.mem" *) 
(* C_INIT_FILE_NAME = "image.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "0" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "2500" *) (* C_READ_DEPTH_B = "2500" *) (* C_READ_WIDTH_A = "24" *) 
(* C_READ_WIDTH_B = "24" *) (* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) 
(* C_RST_PRIORITY_A = "CE" *) (* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) 
(* C_USE_BRAM_BLOCK = "0" *) (* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) 
(* C_USE_DEFAULT_DATA = "0" *) (* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) 
(* C_USE_URAM = "0" *) (* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) 
(* C_WRITE_DEPTH_A = "2500" *) (* C_WRITE_DEPTH_B = "2500" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
(* C_WRITE_MODE_B = "WRITE_FIRST" *) (* C_WRITE_WIDTH_A = "24" *) (* C_WRITE_WIDTH_B = "24" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1
   (clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    doutb,
    injectsbiterr,
    injectdbiterr,
    eccpipece,
    sbiterr,
    dbiterr,
    rdaddrecc,
    sleep,
    deepsleep,
    shutdown,
    rsta_busy,
    rstb_busy,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_injectsbiterr,
    s_axi_injectdbiterr,
    s_axi_sbiterr,
    s_axi_dbiterr,
    s_axi_rdaddrecc);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [11:0]addra;
  input [23:0]dina;
  output [23:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [11:0]addrb;
  input [23:0]dinb;
  output [23:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [11:0]rdaddrecc;
  input sleep;
  input deepsleep;
  input shutdown;
  output rsta_busy;
  output rstb_busy;
  input s_aclk;
  input s_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [23:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [23:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [11:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [11:0]addra;
  wire clka;
  wire [23:0]dina;
  wire [23:0]douta;
  wire [0:0]wea;

  assign dbiterr = \<const0> ;
  assign doutb[23] = \<const0> ;
  assign doutb[22] = \<const0> ;
  assign doutb[21] = \<const0> ;
  assign doutb[20] = \<const0> ;
  assign doutb[19] = \<const0> ;
  assign doutb[18] = \<const0> ;
  assign doutb[17] = \<const0> ;
  assign doutb[16] = \<const0> ;
  assign doutb[15] = \<const0> ;
  assign doutb[14] = \<const0> ;
  assign doutb[13] = \<const0> ;
  assign doutb[12] = \<const0> ;
  assign doutb[11] = \<const0> ;
  assign doutb[10] = \<const0> ;
  assign doutb[9] = \<const0> ;
  assign doutb[8] = \<const0> ;
  assign doutb[7] = \<const0> ;
  assign doutb[6] = \<const0> ;
  assign doutb[5] = \<const0> ;
  assign doutb[4] = \<const0> ;
  assign doutb[3] = \<const0> ;
  assign doutb[2] = \<const0> ;
  assign doutb[1] = \<const0> ;
  assign doutb[0] = \<const0> ;
  assign rdaddrecc[11] = \<const0> ;
  assign rdaddrecc[10] = \<const0> ;
  assign rdaddrecc[9] = \<const0> ;
  assign rdaddrecc[8] = \<const0> ;
  assign rdaddrecc[7] = \<const0> ;
  assign rdaddrecc[6] = \<const0> ;
  assign rdaddrecc[5] = \<const0> ;
  assign rdaddrecc[4] = \<const0> ;
  assign rdaddrecc[3] = \<const0> ;
  assign rdaddrecc[2] = \<const0> ;
  assign rdaddrecc[1] = \<const0> ;
  assign rdaddrecc[0] = \<const0> ;
  assign rsta_busy = \<const0> ;
  assign rstb_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_dbiterr = \<const0> ;
  assign s_axi_rdaddrecc[11] = \<const0> ;
  assign s_axi_rdaddrecc[10] = \<const0> ;
  assign s_axi_rdaddrecc[9] = \<const0> ;
  assign s_axi_rdaddrecc[8] = \<const0> ;
  assign s_axi_rdaddrecc[7] = \<const0> ;
  assign s_axi_rdaddrecc[6] = \<const0> ;
  assign s_axi_rdaddrecc[5] = \<const0> ;
  assign s_axi_rdaddrecc[4] = \<const0> ;
  assign s_axi_rdaddrecc[3] = \<const0> ;
  assign s_axi_rdaddrecc[2] = \<const0> ;
  assign s_axi_rdaddrecc[1] = \<const0> ;
  assign s_axi_rdaddrecc[0] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_sbiterr = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1_synth inst_blk_mem_gen
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .wea(wea));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1_synth
   (douta,
    clka,
    addra,
    dina,
    wea);
  output [23:0]douta;
  input clka;
  input [11:0]addra;
  input [23:0]dina;
  input [0:0]wea;

  wire [11:0]addra;
  wire clka;
  wire [23:0]dina;
  wire [23:0]douta;
  wire [0:0]wea;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .wea(wea));
endmodule
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
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
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
