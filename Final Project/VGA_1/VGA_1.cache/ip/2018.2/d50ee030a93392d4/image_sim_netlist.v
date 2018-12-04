// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Wed Nov 14 00:44:11 2018
// Host        : Gowtham running 64-bit major release  (build 9200)
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [71:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [71:0]douta;

  wire [11:0]addra;
  wire clka;
  wire [71:0]dina;
  wire [71:0]douta;
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
  wire [71:0]NLW_U0_doutb_UNCONNECTED;
  wire [11:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [71:0]NLW_U0_s_axi_rdata_UNCONNECTED;
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
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "5" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     10.162489 mW" *) 
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
  (* C_READ_WIDTH_A = "72" *) 
  (* C_READ_WIDTH_B = "72" *) 
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
  (* C_WRITE_WIDTH_A = "72" *) 
  (* C_WRITE_WIDTH_B = "72" *) 
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
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[71:0]),
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
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[71:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
  output [71:0]douta;
  input clka;
  input [11:0]addra;
  input [71:0]dina;
  input [0:0]wea;

  wire [11:0]addra;
  wire clka;
  wire [71:0]dina;
  wire [71:0]douta;
  wire [4:4]ena_array;
  wire [17:0]ram_douta;
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
  wire \ramloop[1].ram.r_n_24 ;
  wire \ramloop[1].ram.r_n_25 ;
  wire \ramloop[1].ram.r_n_26 ;
  wire \ramloop[1].ram.r_n_27 ;
  wire \ramloop[1].ram.r_n_28 ;
  wire \ramloop[1].ram.r_n_29 ;
  wire \ramloop[1].ram.r_n_3 ;
  wire \ramloop[1].ram.r_n_30 ;
  wire \ramloop[1].ram.r_n_31 ;
  wire \ramloop[1].ram.r_n_32 ;
  wire \ramloop[1].ram.r_n_33 ;
  wire \ramloop[1].ram.r_n_34 ;
  wire \ramloop[1].ram.r_n_35 ;
  wire \ramloop[1].ram.r_n_36 ;
  wire \ramloop[1].ram.r_n_37 ;
  wire \ramloop[1].ram.r_n_38 ;
  wire \ramloop[1].ram.r_n_39 ;
  wire \ramloop[1].ram.r_n_4 ;
  wire \ramloop[1].ram.r_n_40 ;
  wire \ramloop[1].ram.r_n_41 ;
  wire \ramloop[1].ram.r_n_42 ;
  wire \ramloop[1].ram.r_n_43 ;
  wire \ramloop[1].ram.r_n_44 ;
  wire \ramloop[1].ram.r_n_45 ;
  wire \ramloop[1].ram.r_n_46 ;
  wire \ramloop[1].ram.r_n_47 ;
  wire \ramloop[1].ram.r_n_48 ;
  wire \ramloop[1].ram.r_n_49 ;
  wire \ramloop[1].ram.r_n_5 ;
  wire \ramloop[1].ram.r_n_50 ;
  wire \ramloop[1].ram.r_n_51 ;
  wire \ramloop[1].ram.r_n_52 ;
  wire \ramloop[1].ram.r_n_53 ;
  wire \ramloop[1].ram.r_n_54 ;
  wire \ramloop[1].ram.r_n_55 ;
  wire \ramloop[1].ram.r_n_56 ;
  wire \ramloop[1].ram.r_n_57 ;
  wire \ramloop[1].ram.r_n_58 ;
  wire \ramloop[1].ram.r_n_59 ;
  wire \ramloop[1].ram.r_n_6 ;
  wire \ramloop[1].ram.r_n_60 ;
  wire \ramloop[1].ram.r_n_61 ;
  wire \ramloop[1].ram.r_n_62 ;
  wire \ramloop[1].ram.r_n_63 ;
  wire \ramloop[1].ram.r_n_64 ;
  wire \ramloop[1].ram.r_n_65 ;
  wire \ramloop[1].ram.r_n_66 ;
  wire \ramloop[1].ram.r_n_67 ;
  wire \ramloop[1].ram.r_n_68 ;
  wire \ramloop[1].ram.r_n_69 ;
  wire \ramloop[1].ram.r_n_7 ;
  wire \ramloop[1].ram.r_n_70 ;
  wire \ramloop[1].ram.r_n_71 ;
  wire \ramloop[1].ram.r_n_8 ;
  wire \ramloop[1].ram.r_n_9 ;
  wire \ramloop[2].ram.r_n_0 ;
  wire \ramloop[2].ram.r_n_1 ;
  wire \ramloop[2].ram.r_n_10 ;
  wire \ramloop[2].ram.r_n_11 ;
  wire \ramloop[2].ram.r_n_12 ;
  wire \ramloop[2].ram.r_n_13 ;
  wire \ramloop[2].ram.r_n_14 ;
  wire \ramloop[2].ram.r_n_15 ;
  wire \ramloop[2].ram.r_n_16 ;
  wire \ramloop[2].ram.r_n_17 ;
  wire \ramloop[2].ram.r_n_2 ;
  wire \ramloop[2].ram.r_n_3 ;
  wire \ramloop[2].ram.r_n_4 ;
  wire \ramloop[2].ram.r_n_5 ;
  wire \ramloop[2].ram.r_n_6 ;
  wire \ramloop[2].ram.r_n_7 ;
  wire \ramloop[2].ram.r_n_8 ;
  wire \ramloop[2].ram.r_n_9 ;
  wire \ramloop[3].ram.r_n_0 ;
  wire \ramloop[3].ram.r_n_1 ;
  wire \ramloop[3].ram.r_n_10 ;
  wire \ramloop[3].ram.r_n_11 ;
  wire \ramloop[3].ram.r_n_12 ;
  wire \ramloop[3].ram.r_n_13 ;
  wire \ramloop[3].ram.r_n_14 ;
  wire \ramloop[3].ram.r_n_15 ;
  wire \ramloop[3].ram.r_n_16 ;
  wire \ramloop[3].ram.r_n_17 ;
  wire \ramloop[3].ram.r_n_2 ;
  wire \ramloop[3].ram.r_n_3 ;
  wire \ramloop[3].ram.r_n_4 ;
  wire \ramloop[3].ram.r_n_5 ;
  wire \ramloop[3].ram.r_n_6 ;
  wire \ramloop[3].ram.r_n_7 ;
  wire \ramloop[3].ram.r_n_8 ;
  wire \ramloop[3].ram.r_n_9 ;
  wire \ramloop[4].ram.r_n_0 ;
  wire \ramloop[4].ram.r_n_1 ;
  wire \ramloop[4].ram.r_n_10 ;
  wire \ramloop[4].ram.r_n_11 ;
  wire \ramloop[4].ram.r_n_12 ;
  wire \ramloop[4].ram.r_n_13 ;
  wire \ramloop[4].ram.r_n_14 ;
  wire \ramloop[4].ram.r_n_15 ;
  wire \ramloop[4].ram.r_n_16 ;
  wire \ramloop[4].ram.r_n_17 ;
  wire \ramloop[4].ram.r_n_2 ;
  wire \ramloop[4].ram.r_n_3 ;
  wire \ramloop[4].ram.r_n_4 ;
  wire \ramloop[4].ram.r_n_5 ;
  wire \ramloop[4].ram.r_n_6 ;
  wire \ramloop[4].ram.r_n_7 ;
  wire \ramloop[4].ram.r_n_8 ;
  wire \ramloop[4].ram.r_n_9 ;
  wire [0:0]wea;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bindec \bindec_a.bindec_inst_a 
       (.addra(addra[11:9]),
        .ena_array(ena_array));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_mux \has_mux_a.A 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[2].ram.r_n_0 ,\ramloop[2].ram.r_n_1 ,\ramloop[2].ram.r_n_2 ,\ramloop[2].ram.r_n_3 ,\ramloop[2].ram.r_n_4 ,\ramloop[2].ram.r_n_5 ,\ramloop[2].ram.r_n_6 ,\ramloop[2].ram.r_n_7 ,\ramloop[2].ram.r_n_8 ,\ramloop[2].ram.r_n_9 ,\ramloop[2].ram.r_n_10 ,\ramloop[2].ram.r_n_11 ,\ramloop[2].ram.r_n_12 ,\ramloop[2].ram.r_n_13 ,\ramloop[2].ram.r_n_14 ,\ramloop[2].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\ramloop[2].ram.r_n_16 ,\ramloop[2].ram.r_n_17 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 ,\ramloop[3].ram.r_n_2 ,\ramloop[3].ram.r_n_3 ,\ramloop[3].ram.r_n_4 ,\ramloop[3].ram.r_n_5 ,\ramloop[3].ram.r_n_6 ,\ramloop[3].ram.r_n_7 ,\ramloop[3].ram.r_n_8 ,\ramloop[3].ram.r_n_9 ,\ramloop[3].ram.r_n_10 ,\ramloop[3].ram.r_n_11 ,\ramloop[3].ram.r_n_12 ,\ramloop[3].ram.r_n_13 ,\ramloop[3].ram.r_n_14 ,\ramloop[3].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ({\ramloop[3].ram.r_n_16 ,\ramloop[3].ram.r_n_17 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3 ({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 ,\ramloop[4].ram.r_n_2 ,\ramloop[4].ram.r_n_3 ,\ramloop[4].ram.r_n_4 ,\ramloop[4].ram.r_n_5 ,\ramloop[4].ram.r_n_6 ,\ramloop[4].ram.r_n_7 ,\ramloop[4].ram.r_n_8 ,\ramloop[4].ram.r_n_9 ,\ramloop[4].ram.r_n_10 ,\ramloop[4].ram.r_n_11 ,\ramloop[4].ram.r_n_12 ,\ramloop[4].ram.r_n_13 ,\ramloop[4].ram.r_n_14 ,\ramloop[4].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_4 ({\ramloop[4].ram.r_n_16 ,\ramloop[4].ram.r_n_17 }),
        .DOADO({\ramloop[1].ram.r_n_0 ,\ramloop[1].ram.r_n_1 ,\ramloop[1].ram.r_n_2 ,\ramloop[1].ram.r_n_3 ,\ramloop[1].ram.r_n_4 ,\ramloop[1].ram.r_n_5 ,\ramloop[1].ram.r_n_6 ,\ramloop[1].ram.r_n_7 ,\ramloop[1].ram.r_n_8 ,\ramloop[1].ram.r_n_9 ,\ramloop[1].ram.r_n_10 ,\ramloop[1].ram.r_n_11 ,\ramloop[1].ram.r_n_12 ,\ramloop[1].ram.r_n_13 ,\ramloop[1].ram.r_n_14 ,\ramloop[1].ram.r_n_15 ,\ramloop[1].ram.r_n_16 ,\ramloop[1].ram.r_n_17 ,\ramloop[1].ram.r_n_18 ,\ramloop[1].ram.r_n_19 ,\ramloop[1].ram.r_n_20 ,\ramloop[1].ram.r_n_21 ,\ramloop[1].ram.r_n_22 ,\ramloop[1].ram.r_n_23 ,\ramloop[1].ram.r_n_24 ,\ramloop[1].ram.r_n_25 ,\ramloop[1].ram.r_n_26 ,\ramloop[1].ram.r_n_27 ,\ramloop[1].ram.r_n_28 ,\ramloop[1].ram.r_n_29 ,\ramloop[1].ram.r_n_30 ,\ramloop[1].ram.r_n_31 }),
        .DOBDO({\ramloop[1].ram.r_n_32 ,\ramloop[1].ram.r_n_33 ,\ramloop[1].ram.r_n_34 ,\ramloop[1].ram.r_n_35 ,\ramloop[1].ram.r_n_36 ,\ramloop[1].ram.r_n_37 ,\ramloop[1].ram.r_n_38 ,\ramloop[1].ram.r_n_39 ,\ramloop[1].ram.r_n_40 ,\ramloop[1].ram.r_n_41 ,\ramloop[1].ram.r_n_42 ,\ramloop[1].ram.r_n_43 ,\ramloop[1].ram.r_n_44 ,\ramloop[1].ram.r_n_45 ,\ramloop[1].ram.r_n_46 ,\ramloop[1].ram.r_n_47 ,\ramloop[1].ram.r_n_48 ,\ramloop[1].ram.r_n_49 ,\ramloop[1].ram.r_n_50 ,\ramloop[1].ram.r_n_51 ,\ramloop[1].ram.r_n_52 ,\ramloop[1].ram.r_n_53 ,\ramloop[1].ram.r_n_54 ,\ramloop[1].ram.r_n_55 ,\ramloop[1].ram.r_n_56 ,\ramloop[1].ram.r_n_57 ,\ramloop[1].ram.r_n_58 ,\ramloop[1].ram.r_n_59 ,\ramloop[1].ram.r_n_60 ,\ramloop[1].ram.r_n_61 ,\ramloop[1].ram.r_n_62 ,\ramloop[1].ram.r_n_63 }),
        .DOPADOP({\ramloop[1].ram.r_n_64 ,\ramloop[1].ram.r_n_65 ,\ramloop[1].ram.r_n_66 ,\ramloop[1].ram.r_n_67 }),
        .DOPBDOP({\ramloop[1].ram.r_n_68 ,\ramloop[1].ram.r_n_69 ,\ramloop[1].ram.r_n_70 ,\ramloop[1].ram.r_n_71 }),
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
        .dina(dina[17:0]),
        .ram_douta(ram_douta),
        .wea(wea));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.DOADO({\ramloop[1].ram.r_n_0 ,\ramloop[1].ram.r_n_1 ,\ramloop[1].ram.r_n_2 ,\ramloop[1].ram.r_n_3 ,\ramloop[1].ram.r_n_4 ,\ramloop[1].ram.r_n_5 ,\ramloop[1].ram.r_n_6 ,\ramloop[1].ram.r_n_7 ,\ramloop[1].ram.r_n_8 ,\ramloop[1].ram.r_n_9 ,\ramloop[1].ram.r_n_10 ,\ramloop[1].ram.r_n_11 ,\ramloop[1].ram.r_n_12 ,\ramloop[1].ram.r_n_13 ,\ramloop[1].ram.r_n_14 ,\ramloop[1].ram.r_n_15 ,\ramloop[1].ram.r_n_16 ,\ramloop[1].ram.r_n_17 ,\ramloop[1].ram.r_n_18 ,\ramloop[1].ram.r_n_19 ,\ramloop[1].ram.r_n_20 ,\ramloop[1].ram.r_n_21 ,\ramloop[1].ram.r_n_22 ,\ramloop[1].ram.r_n_23 ,\ramloop[1].ram.r_n_24 ,\ramloop[1].ram.r_n_25 ,\ramloop[1].ram.r_n_26 ,\ramloop[1].ram.r_n_27 ,\ramloop[1].ram.r_n_28 ,\ramloop[1].ram.r_n_29 ,\ramloop[1].ram.r_n_30 ,\ramloop[1].ram.r_n_31 }),
        .DOBDO({\ramloop[1].ram.r_n_32 ,\ramloop[1].ram.r_n_33 ,\ramloop[1].ram.r_n_34 ,\ramloop[1].ram.r_n_35 ,\ramloop[1].ram.r_n_36 ,\ramloop[1].ram.r_n_37 ,\ramloop[1].ram.r_n_38 ,\ramloop[1].ram.r_n_39 ,\ramloop[1].ram.r_n_40 ,\ramloop[1].ram.r_n_41 ,\ramloop[1].ram.r_n_42 ,\ramloop[1].ram.r_n_43 ,\ramloop[1].ram.r_n_44 ,\ramloop[1].ram.r_n_45 ,\ramloop[1].ram.r_n_46 ,\ramloop[1].ram.r_n_47 ,\ramloop[1].ram.r_n_48 ,\ramloop[1].ram.r_n_49 ,\ramloop[1].ram.r_n_50 ,\ramloop[1].ram.r_n_51 ,\ramloop[1].ram.r_n_52 ,\ramloop[1].ram.r_n_53 ,\ramloop[1].ram.r_n_54 ,\ramloop[1].ram.r_n_55 ,\ramloop[1].ram.r_n_56 ,\ramloop[1].ram.r_n_57 ,\ramloop[1].ram.r_n_58 ,\ramloop[1].ram.r_n_59 ,\ramloop[1].ram.r_n_60 ,\ramloop[1].ram.r_n_61 ,\ramloop[1].ram.r_n_62 ,\ramloop[1].ram.r_n_63 }),
        .DOPADOP({\ramloop[1].ram.r_n_64 ,\ramloop[1].ram.r_n_65 ,\ramloop[1].ram.r_n_66 ,\ramloop[1].ram.r_n_67 }),
        .DOPBDOP({\ramloop[1].ram.r_n_68 ,\ramloop[1].ram.r_n_69 ,\ramloop[1].ram.r_n_70 ,\ramloop[1].ram.r_n_71 }),
        .addra(addra[8:0]),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .wea(wea));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized1 \ramloop[2].ram.r 
       (.addra(addra[10:0]),
        .\addra[11] (ram_ena_n_0),
        .clka(clka),
        .dina(dina[35:18]),
        .\douta[34] ({\ramloop[2].ram.r_n_0 ,\ramloop[2].ram.r_n_1 ,\ramloop[2].ram.r_n_2 ,\ramloop[2].ram.r_n_3 ,\ramloop[2].ram.r_n_4 ,\ramloop[2].ram.r_n_5 ,\ramloop[2].ram.r_n_6 ,\ramloop[2].ram.r_n_7 ,\ramloop[2].ram.r_n_8 ,\ramloop[2].ram.r_n_9 ,\ramloop[2].ram.r_n_10 ,\ramloop[2].ram.r_n_11 ,\ramloop[2].ram.r_n_12 ,\ramloop[2].ram.r_n_13 ,\ramloop[2].ram.r_n_14 ,\ramloop[2].ram.r_n_15 }),
        .\douta[35] ({\ramloop[2].ram.r_n_16 ,\ramloop[2].ram.r_n_17 }),
        .wea(wea));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized2 \ramloop[3].ram.r 
       (.addra(addra[10:0]),
        .\addra[11] (ram_ena_n_0),
        .clka(clka),
        .dina(dina[53:36]),
        .\douta[52] ({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 ,\ramloop[3].ram.r_n_2 ,\ramloop[3].ram.r_n_3 ,\ramloop[3].ram.r_n_4 ,\ramloop[3].ram.r_n_5 ,\ramloop[3].ram.r_n_6 ,\ramloop[3].ram.r_n_7 ,\ramloop[3].ram.r_n_8 ,\ramloop[3].ram.r_n_9 ,\ramloop[3].ram.r_n_10 ,\ramloop[3].ram.r_n_11 ,\ramloop[3].ram.r_n_12 ,\ramloop[3].ram.r_n_13 ,\ramloop[3].ram.r_n_14 ,\ramloop[3].ram.r_n_15 }),
        .\douta[53] ({\ramloop[3].ram.r_n_16 ,\ramloop[3].ram.r_n_17 }),
        .wea(wea));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized3 \ramloop[4].ram.r 
       (.addra(addra[10:0]),
        .\addra[11] (ram_ena_n_0),
        .clka(clka),
        .dina(dina[71:54]),
        .\douta[70] ({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 ,\ramloop[4].ram.r_n_2 ,\ramloop[4].ram.r_n_3 ,\ramloop[4].ram.r_n_4 ,\ramloop[4].ram.r_n_5 ,\ramloop[4].ram.r_n_6 ,\ramloop[4].ram.r_n_7 ,\ramloop[4].ram.r_n_8 ,\ramloop[4].ram.r_n_9 ,\ramloop[4].ram.r_n_10 ,\ramloop[4].ram.r_n_11 ,\ramloop[4].ram.r_n_12 ,\ramloop[4].ram.r_n_13 ,\ramloop[4].ram.r_n_14 ,\ramloop[4].ram.r_n_15 }),
        .\douta[71] ({\ramloop[4].ram.r_n_16 ,\ramloop[4].ram.r_n_17 }),
        .wea(wea));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_mux
   (douta,
    addra,
    clka,
    DOADO,
    ram_douta,
    DOPADOP,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    DOBDO,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    DOPBDOP,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_4 );
  output [71:0]douta;
  input [2:0]addra;
  input clka;
  input [31:0]DOADO;
  input [17:0]ram_douta;
  input [3:0]DOPADOP;
  input [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  input [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input [31:0]DOBDO;
  input [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input [3:0]DOPBDOP;
  input [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ;
  input [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3 ;
  input [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_4 ;

  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ;
  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3 ;
  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_4 ;
  wire [31:0]DOADO;
  wire [31:0]DOBDO;
  wire [3:0]DOPADOP;
  wire [3:0]DOPBDOP;
  wire [2:0]addra;
  wire clka;
  wire [71:0]douta;
  wire [17:0]ram_douta;
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
        .I1(DOADO[9]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(ram_douta[10]),
        .O(douta[10]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[11]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOADO[10]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(ram_douta[11]),
        .O(douta[11]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[12]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOADO[11]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(ram_douta[12]),
        .O(douta[12]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[13]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOADO[12]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(ram_douta[13]),
        .O(douta[13]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[14]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOADO[13]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(ram_douta[14]),
        .O(douta[14]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[15]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOADO[14]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(ram_douta[15]),
        .O(douta[15]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[16]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOADO[15]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(ram_douta[16]),
        .O(douta[16]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[17]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOPADOP[1]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(ram_douta[17]),
        .O(douta[17]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[18]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOADO[16]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [0]),
        .O(douta[18]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[19]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOADO[17]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [1]),
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
        .I1(DOADO[18]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [2]),
        .O(douta[20]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[21]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOADO[19]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [3]),
        .O(douta[21]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[22]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOADO[20]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [4]),
        .O(douta[22]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[23]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOADO[21]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [5]),
        .O(douta[23]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[24]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOADO[22]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [6]),
        .O(douta[24]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[25]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOADO[23]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [7]),
        .O(douta[25]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[26]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOPADOP[2]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 [0]),
        .O(douta[26]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[27]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOADO[24]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [8]),
        .O(douta[27]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[28]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOADO[25]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [9]),
        .O(douta[28]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[29]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOADO[26]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [10]),
        .O(douta[29]));
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
    \douta[30]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOADO[27]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [11]),
        .O(douta[30]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[31]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOADO[28]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [12]),
        .O(douta[31]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[32]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOADO[29]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [13]),
        .O(douta[32]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[33]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOADO[30]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [14]),
        .O(douta[33]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[34]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOADO[31]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [15]),
        .O(douta[34]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[35]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOPADOP[3]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 [1]),
        .O(douta[35]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[36]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOBDO[0]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 [0]),
        .O(douta[36]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[37]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOBDO[1]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 [1]),
        .O(douta[37]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[38]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOBDO[2]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 [2]),
        .O(douta[38]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[39]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOBDO[3]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 [3]),
        .O(douta[39]));
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
    \douta[40]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOBDO[4]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 [4]),
        .O(douta[40]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[41]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOBDO[5]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 [5]),
        .O(douta[41]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[42]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOBDO[6]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 [6]),
        .O(douta[42]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[43]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOBDO[7]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 [7]),
        .O(douta[43]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[44]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOPBDOP[0]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 [0]),
        .O(douta[44]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[45]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOBDO[8]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 [8]),
        .O(douta[45]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[46]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOBDO[9]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 [9]),
        .O(douta[46]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[47]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOBDO[10]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 [10]),
        .O(douta[47]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[48]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOBDO[11]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 [11]),
        .O(douta[48]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[49]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOBDO[12]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 [12]),
        .O(douta[49]));
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
    \douta[50]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOBDO[13]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 [13]),
        .O(douta[50]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[51]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOBDO[14]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 [14]),
        .O(douta[51]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[52]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOBDO[15]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 [15]),
        .O(douta[52]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[53]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOPBDOP[1]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 [1]),
        .O(douta[53]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[54]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOBDO[16]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3 [0]),
        .O(douta[54]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[55]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOBDO[17]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3 [1]),
        .O(douta[55]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[56]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOBDO[18]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3 [2]),
        .O(douta[56]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[57]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOBDO[19]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3 [3]),
        .O(douta[57]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[58]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOBDO[20]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3 [4]),
        .O(douta[58]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[59]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOBDO[21]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3 [5]),
        .O(douta[59]));
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
    \douta[60]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOBDO[22]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3 [6]),
        .O(douta[60]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[61]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOBDO[23]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3 [7]),
        .O(douta[61]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[62]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOPBDOP[2]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_4 [0]),
        .O(douta[62]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[63]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOBDO[24]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3 [8]),
        .O(douta[63]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[64]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOBDO[25]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3 [9]),
        .O(douta[64]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[65]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOBDO[26]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3 [10]),
        .O(douta[65]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[66]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOBDO[27]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3 [11]),
        .O(douta[66]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[67]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOBDO[28]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3 [12]),
        .O(douta[67]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[68]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOBDO[29]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3 [13]),
        .O(douta[68]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[69]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOBDO[30]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3 [14]),
        .O(douta[69]));
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
    \douta[70]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOBDO[31]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3 [15]),
        .O(douta[70]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[71]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOPBDOP[3]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_4 [1]),
        .O(douta[71]));
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
        .I1(DOPADOP[0]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(ram_douta[8]),
        .O(douta[8]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[9]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOADO[8]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(ram_douta[9]),
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
  output [17:0]ram_douta;
  input clka;
  input \addra[11] ;
  input [10:0]addra;
  input [17:0]dina;
  input [0:0]wea;

  wire [10:0]addra;
  wire \addra[11] ;
  wire clka;
  wire [17:0]dina;
  wire [17:0]ram_douta;
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
    DOPADOP,
    DOPBDOP,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [31:0]DOADO;
  output [31:0]DOBDO;
  output [3:0]DOPADOP;
  output [3:0]DOPBDOP;
  input clka;
  input [0:0]ena_array;
  input [8:0]addra;
  input [71:0]dina;
  input [0:0]wea;

  wire [31:0]DOADO;
  wire [31:0]DOBDO;
  wire [3:0]DOPADOP;
  wire [3:0]DOPBDOP;
  wire [8:0]addra;
  wire clka;
  wire [71:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized0 \prim_init.ram 
       (.DOADO(DOADO),
        .DOBDO(DOBDO),
        .DOPADOP(DOPADOP),
        .DOPBDOP(DOPBDOP),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized1
   (\douta[34] ,
    \douta[35] ,
    clka,
    \addra[11] ,
    addra,
    dina,
    wea);
  output [15:0]\douta[34] ;
  output [1:0]\douta[35] ;
  input clka;
  input \addra[11] ;
  input [10:0]addra;
  input [17:0]dina;
  input [0:0]wea;

  wire [10:0]addra;
  wire \addra[11] ;
  wire clka;
  wire [17:0]dina;
  wire [15:0]\douta[34] ;
  wire [1:0]\douta[35] ;
  wire [0:0]wea;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized1 \prim_init.ram 
       (.addra(addra),
        .\addra[11] (\addra[11] ),
        .clka(clka),
        .dina(dina),
        .\douta[34] (\douta[34] ),
        .\douta[35] (\douta[35] ),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized2
   (\douta[52] ,
    \douta[53] ,
    clka,
    \addra[11] ,
    addra,
    dina,
    wea);
  output [15:0]\douta[52] ;
  output [1:0]\douta[53] ;
  input clka;
  input \addra[11] ;
  input [10:0]addra;
  input [17:0]dina;
  input [0:0]wea;

  wire [10:0]addra;
  wire \addra[11] ;
  wire clka;
  wire [17:0]dina;
  wire [15:0]\douta[52] ;
  wire [1:0]\douta[53] ;
  wire [0:0]wea;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized2 \prim_init.ram 
       (.addra(addra),
        .\addra[11] (\addra[11] ),
        .clka(clka),
        .dina(dina),
        .\douta[52] (\douta[52] ),
        .\douta[53] (\douta[53] ),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized3
   (\douta[70] ,
    \douta[71] ,
    clka,
    \addra[11] ,
    addra,
    dina,
    wea);
  output [15:0]\douta[70] ;
  output [1:0]\douta[71] ;
  input clka;
  input \addra[11] ;
  input [10:0]addra;
  input [17:0]dina;
  input [0:0]wea;

  wire [10:0]addra;
  wire \addra[11] ;
  wire clka;
  wire [17:0]dina;
  wire [15:0]\douta[70] ;
  wire [1:0]\douta[71] ;
  wire [0:0]wea;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized3 \prim_init.ram 
       (.addra(addra),
        .\addra[11] (\addra[11] ),
        .clka(clka),
        .dina(dina),
        .\douta[70] (\douta[70] ),
        .\douta[71] (\douta[71] ),
        .wea(wea));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init
   (ram_douta,
    clka,
    \addra[11] ,
    addra,
    dina,
    wea);
  output [17:0]ram_douta;
  input clka;
  input \addra[11] ;
  input [10:0]addra;
  input [17:0]dina;
  input [0:0]wea;

  wire [10:0]addra;
  wire \addra[11] ;
  wire clka;
  wire [17:0]dina;
  wire [17:0]ram_douta;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:16]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h562AA360E7FFFE6EF5A7A785875E3D4CFBBFFFE28A80A88288AA80A80028AAAA),
    .INITP_01(256'hFFE68BF25C77BFDC361C60C7FFFE7D959C2686748114E0459FFFE6BE83BC5C26),
    .INITP_02(256'h232D3E6F8A9B97DDE7ACFE00352E99256D204FFFFE7FF60645F620A82CFBD2D7),
    .INITP_03(256'hDCB7D678DDCAAE69EAF46C6B173A3CE6FF7083A9C25E7EFFB10B7FFC7F3BA7B9),
    .INITP_04(256'hA1706979C9A83E07B5FE7EDBB8AFCE5453CD4FBF7B9F46E3ED338F8F69DDFE1F),
    .INITP_05(256'h9AE66FCEA7DD7A88D78911A55798714E7E7BFEFB921A13EA21BD8ABDDE07FB77),
    .INITP_06(256'hFFF98E4A330BD32302816566EBBBDCA0AAFC156D778877DE7FABFB7379FAE5F4),
    .INITP_07(256'h88E9CA5CA7FC7FFFFEBA487F0E6DB12C3FC1E7FFFEF171B696D210F7B6DDF07F),
    .INITP_08(256'hC7FFFED7CCD84233106AE7BFF47FFFFAFBD697C7ECB8E09EBD27FFFEAFD6CE7C),
    .INITP_09(256'h90C37567102B5F67DDFDB4CDD57F7FE56F1BF77A7F57FC37BFD4D1D9D58EFBEB),
    .INITP_0A(256'h4ED46AAD7BCF80D31F883AE3A18766F3CED6D8FA89018DBCA6DE9C7C599D3CF8),
    .INITP_0B(256'h12621DF344B7B4BD3A7E37885B97C4B5CA4A54915BE6FAE2EC517449E7E63985),
    .INITP_0C(256'hE5F168E652490FDD9D2FC012639A69F47D390169165AAAF6E51D547567C7FF64),
    .INITP_0D(256'h9F8B344A534C76B6FD8CE5AF45F2DED17EAD969F795E567F028E226BA00DB6FF),
    .INITP_0E(256'hEA53FCF6F65B2E0CF36F7764C88F80ADEBE64A7E35C4817843AF168FE80A225F),
    .INITP_0F(256'hD7ABCBF9C629E586FEBA3FFE7CEE2D3671AD455F6B4B8AAFE2DE627F78A9E540),
    .INIT_00(256'h00FD80FC80E000FA00FF00F080FF00FF80FF80FF80FF80FF80FF80FF80FF8000),
    .INIT_01(256'h80F200F400FF00FE80F300FF80F380F080F400E800120092008E0098002800FD),
    .INIT_02(256'h80EE00FF00FF80F880F400F400FE00A3001A80710033806C80ED00FB80F380F8),
    .INIT_03(256'h7EFF76FAFFDB7DFFFEF6FFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFF800000FF80F8),
    .INIT_04(256'hFFE57CFBFDFDFFECFDFA7D7278FC7DFF787E8695368D8B84FA9B7D10F9FE7EEE),
    .INIT_05(256'hF9FCFEF17FFFFCFFFD00FFA77A8BFCA6FF887EA27D9F7E0CFAF47FFC7FFF7BF4),
    .INIT_06(256'h7FF978FAFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80007FFFFDFFFFFFFCF7),
    .INIT_07(256'hF9FDFF0FF935F806FA6A746F090BC90EC7644C771481FE92FEF97EFCF0FE7DF2),
    .INIT_08(256'h7AF9FAB7FF0AD1BA0DCF38A599CDB640F6877D85F9A5FC57F9F4FAFF7FF5FFED),
    .INIT_09(256'h7BFB7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80007FFFFCFAF7FA7FFA7FFE7CFD),
    .INIT_0A(256'h7D0039087E047F4C3F9C4A88468742A6CD910889FF30F7F97FFDFDF9EDF2FFFC),
    .INIT_0B(256'h80C653D445C153C6C4B151BECFD30661FAA1FEA7FF85FAFAF2947D387E827660),
    .INIT_0C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFF80007FFFFFFDFFFFFBFDFEF5F8F5FFFFFF00),
    .INIT_0D(256'h359CB792057D079DB29BBB20C05149A3FC0CFEF47FFA79F47CF97DFAFFFF7FFF),
    .INIT_0E(256'hE7B652D066C420BA43C042C3528BAB8BFA9EFF927A0B76A0FE8A07A51A8C837F),
    .INIT_0F(256'hFFFFFFFFFFFFFFFFFFFF80007FFFFDEDFDFEFDE67FFF7EFAFCF95BDB85C5DDC0),
    .INIT_10(256'hCE074490C397539FC88AC486181A7CF87E4C7CFB79FAFEFD7DF8FFFF7FFFFFFF),
    .INIT_11(256'hD8C4DFBD69CEB0C350A4D38E42947D7F4AAC9C8C418B3083801684790211A69A),
    .INIT_12(256'hFFFFFFFFFFFF80007FFFFEFFFFFFFEFFFAD8FAFF7FEC80BD63C4EABE60C963C5),
    .INIT_13(256'hCD871091A899D18B86ACFA857D3CFAF57CFEFDFA7FF67FFF7FFFFFFFFFFFFFFF),
    .INIT_14(256'h60B8E1BC45C4454B4F93C99A8592508C459F5299C699BF96CE594985BE15CEA2),
    .INIT_15(256'hFFFF00007FFFF6F6FFFB73F5FFFFFDFBFCF7EDC3E2C0E0C45BC868BC62C05DC7),
    .INIT_16(256'hC59B438A8D967C75269AFD0F7DF3FEF1FCFCFFFB7FFEFFFC7FF27FFD7FFFFFF6),
    .INIT_17(256'hD2BD470ACA903FA35687C69CC59041860BA73C878815CD0283AB4892CB874F94),
    .INIT_18(256'h7FFFFFFFFFE8FFFE6CFF7FDFF6FFDEBBE2B9DFC2E4BA62C662C25EC867B961CA),
    .INIT_19(256'hD60442E51E79FA85FF4FFDFBFBFDFFFEFFFE7FFF7FFFFFFFFFFBFFF1FFFD8000),
    .INIT_1A(256'hC994CD92498D4695CF97CC9ACC944B1B2CEFC2FB8AD3D18BC3A3C89BCC8FC59E),
    .INIT_1B(256'hFDFF7AFEFFFC7DFF7BF9E114E0C762BDE4D0DEAF60CEE3BF5CCADEC462BF256D),
    .INIT_1C(256'hCDC8879B7911F8FBFEF7FDFFFFECFEF379FEFEF97FFBFBFFFFFF80007FFFFBF2),
    .INIT_1D(256'hC38B4E87C88FC396D39143318AF081FF55F3C98CC3994A87CD8BC596CBED3AE5),
    .INIT_1E(256'hFFF36FF9FFFADD1D5CB2E1C35DAAE3D661C664B65CC565BFDEC78524C88B51A6),
    .INIT_1F(256'hA7367DF47EF77FFFFFFCFFFF7FFFFFF9FDFDF8FFFEF780007FFFFFF5F4FFFFFC),
    .INIT_20(256'h4B93CDA5CA8E8DA177F7FDF4E9FE45FF518ECD9647A44FA002F672FF3CEFC28C),
    .INIT_21(256'h7CFF8AE5E3C5DEC7E8C4D7BA67B65FD565AFE2AFDF92B6944A83498AC6A04A93),
    .INIT_22(256'h7BFE7FEB76FFF9FDFFFBFCFFFDFDFFFCFFFC00007FFFF9FFFFFDFFFFFEFEFFF3),
    .INIT_23(256'h48999896F8927FF479F646F84C0043994586CB8B76F7F2EBE4FACD9608087DFA),
    .INIT_24(256'hD91F61BDD5C2EBBF63CEDBD362AEDF48638612374598D3A0458443914790CB8D),
    .INIT_25(256'h7EFDFFECFFF77CFEFEF77FFFFBFF80007FFFFAFBFFEEFEF579FFFCFBFDFB8EFE),
    .INIT_26(256'h7B86FAF87FFF7F0BC79BCB9DD295D08FFBA6FF0777FCC6A81BE17AF7FBFEFFFF),
    .INIT_27(256'h62B85DC45BC06AAE57CD57CDC94DCAABC196C58C50A0499F4992D2994792D095),
    .INIT_28(256'hFDFFFFFEFEF57EFCFEF600007FFFFFFFFEFFFFFBFFFDF9FFFFF9F2FFE2D2E362),
    .INIT_29(256'hFBC5FC058053CC96C38A45997B4AF5007DFF4B9284FB7DF2FFFB75E8FFFF7EFD),
    .INIT_2A(256'h67C9E9C7D7C0A4B143079B8BCC98D08D4289C88FC896C69A4C874BA2C9A97A63),
    .INIT_2B(256'hFBFFFFFFFFFB80007FFFFDF7F7FBFAFFFFFEFDFA7DFE7FF30FFFDEFFE1B2DFBD),
    .INIT_2C(256'hCD45CE92CA9B4795D3878319FE11D48BF0F8FBF47FFC7F387ED376FFFBF1FFFF),
    .INIT_2D(256'hE6D466BE263A559C4B8E4698507C4F1C49194C79C99BCA96C3847C597FE58509),
    .INIT_2E(256'hFBFF80007FFFFFFCFFFF7DF8FEF87FFF7CFAFFFF69EEB1E55CFFE2B1E0B3D7BC),
    .INIT_2F(256'h450ACC7E251A00E37FE8C9927D3C79467DF274FA7FFE7EF57FFFFFF6FAFB7EFF),
    .INIT_30(256'h83C345A0CC9A469E449247974B8ACD9F4388D18C549A311762DD82EDA9F6CBE1),
    .INIT_31(256'h7FFFFBFFFDFFFFFFFFFFFDFFFFFFF9FFFFFFFFFBD9FCDEFB6464E3C260A558C2),
    .INIT_32(256'h43150CEB88EBC59DFC6EFA597E2D9C36E9BD7FFFF8FFFFF5FFF7FFFFFDF28000),
    .INIT_33(256'h479ACC9B3E838E9A8C7E3C194D11CB18C20D2C05F26484FA22D249E94DB8CA02),
    .INIT_34(256'hFFFFFCFFFCFFFFFFFDFFFFFFF7FFF2FCFFEF58FDD9FADE8F6ACDDFC59DBACE0B),
    .INIT_35(256'h7410C9961E87239CF9F87DF17FFDFAFFFFFDFBECFDAC7FF37FFF80007FFFFEFF),
    .INIT_36(256'h49A54B87C589CF6DC4F2C6324D070B18EE8976F2FBE170F385E0BFE70DF4F1DD),
    .INIT_37(256'hFFFFFFFFFFFFFFFFFFFFFDF5FEFFFDF0B2FE61FF52FCE10C61075042CD384F92),
    .INIT_38(256'h379D2C5396EB9BFCDEFE7FF47FFF7AFFFBF5FFF9F9FF80007FFFFFFFFFFFFFFF),
    .INIT_39(256'hBFA90C0388DB8CF08604020A32187D00690D7408DC1201F70AEDF5FAF5964E96),
    .INIT_3A(256'hFFFFFFFFFFFFFEFAF7F47EF87DF947FFE6FDE2F9DDFF85FECDF54D52C17F4D94),
    .INIT_3B(256'h7CFA78F77EFFFFF8FEF476E956FFF9FFFFF680007FFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3C(256'hF9E399F283E10C7FC467F918F00B7906F0F073E17ADCEE06089F4B30C3E84EF6),
    .INIT_3D(256'hFFFFFAFFFFFAF8FE7FFF7FF3FEF886FD03F3A1FD9CF9C9EAD20E438F448DB689),
    .INIT_3E(256'hFFECFAFB7FFBFFFFFAFFFCE5FFFF80007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3F(256'h02DA05590C868093060E84E909EAFBE076A37D0ACBF04BFC4EFF29FCF5FB7EFF),
    .INIT_40(256'hFAFF7CFFFCF7FFFDFEFDFCFEFFFF7FF0FAFF29EFBFFCCA0A543B0108ED0278E8),
    .INIT_41(256'h7AFFF4F0FFFC7FFF7BF980007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEA),
    .INIT_42(256'h33178C2D85F683FF7807F075EE4383FBCFFC98F874FB7BF0FDFF7BFFFFFEFCFF),
    .INIT_43(256'hFFE679FF7CF3FEFDF9F4FEFF7CE7F51187A5C793C683C498F1A9790FF0AEBFDB),
    .INIT_44(256'hFFF9F2FDFFF880007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFBFFFA),
    .INIT_45(256'h8729F48CF5817093D197858EF8FB7EF7FFF8FEFF7DEEFFF376FFFDFFFDF3FFFF),
    .INIT_46(256'hFEFB7FFCFFFF78E1FF87F799FE8585919D9984978189F47FEDA5AC1FC3D1C9F9),
    .INIT_47(256'hFCFD80007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5FDFFF4FFFB7BFFFEF4),
    .INIT_48(256'h834DBA8CA19B7D85FEAEFCEF7DFAF8FE7FEE7FFE7FF67FFF7FF7F8FBFEFFFFF1),
    .INIT_49(256'hFA1B7F83F39E889C528C498D4196CC985491078CD79A6D890B979695FB8FFF95),
    .INIT_4A(256'h7FFFFFFFFFF5FFFCFFFD7FFBFFFAFFFF7FFAFFF97DFDFDFBF3F8FFFF79F7FEDE),
    .INIT_4B(256'hCB7EC7977D95FBA0FCE67FEE77FF79FEFFFD7FFBF9F5FFFEFCF67EFF7CFD8000),
    .INIT_4C(256'h43954C91C298C8AA4C7E4B9644943F8B52828F7668AE7C831490C688402149A3),
    .INIT_4D(256'hFFFF7FF9FFFAFFF37FFFFFF8FFFF7EEAFAFD7DF5FFFBFAE4FDFF7E7DFF8EF090),
    .INIT_4E(256'h578D7790FD547FFF77E6FFFA7BF47FF57BFEFDFE7FF178F7FEFF80007FFFFFF8),
    .INIT_4F(256'h468D4689CB9ECC8148A0C6934D99C4CFCBCCCA94478C4A2626D446034D94C2B0),
    .INIT_50(256'h7EFA7DF47DFB7FF9FDF7FCFDFEF4FDF37CFFFFFCFB5F6F7F8D8AC1984F8A4E94),
    .INIT_51(256'h73A0F7067FFF7FF5FEFFFDFEFAFF7FF4FBFF7FFDFEF980007FFFFFFCFAF87EF8),
    .INIT_52(256'hBF934B9CCA8C459D41D9BBECD7EF4111C827C4E090F75186BF824B894A9AD09B),
    .INIT_53(256'h7FF77CFEFFFE75FC7EF17AF6FDF77238FF973EA5C79AC88B4A9FC88FCC8BD594),
    .INIT_54(256'hF3D47DF97AFAFAF57FFDFFFBF8F8FBFB7FFF80007FFFFCFAFFF97CFFFDFEF9F8),
    .INIT_55(256'hD08E490B4CD7E7F9E6E3CADCC6E013DE6AE3018ACA82589246954893AA7BFFAA),
    .INIT_56(256'hFBFAFEFA7AF679F07F177E8FAF9ABF8D458CCC9D458BCA9DC655C48ACF79409C),
    .INIT_57(256'hFFFA7FFF7FFBFAFDFFFCFEF57CFA80007FFFFEF7FCFFFCF2FDFA7AF97DFDFCF7),
    .INIT_58(256'hECD9F6E7F7F288F313E9F0F6FBED43A2C1AE448D4D8FCD9DD0A483857F9DFAF0),
    .INIT_59(256'hF8F7FBA8FB891C9CCB9852914D94C57E4F0D47F0C5084AA849A24E8D46A3CEDF),
    .INIT_5A(256'hFEFF7DE3FCFBFDFBFFFF80007FFFFDFFFCFFFFF6FFFF7CF3FBEDFFFFFFEBFEFB),
    .INIT_5B(256'h71EB6EDFF0D1EFECF1DB4596C1F1499DCA88C9893D9FD589EA95FCA9FDF5FAE4),
    .INIT_5C(256'h0B8FC792CD9646A94698CEFF45DFCEA0AAA1458DBC8ACE9E47D005F86BDE7CE4),
    .INIT_5D(256'h7EFFFAF3FDFB80007FFFFBF7FFF9F9FFFDF8FCF37EFAFBDD7D26FDA47B847891),
    .INIT_5E(256'h74EC7BE576EED14657F546EEC73E4E8F5294C2914E92F88E7D937F0CFDF47EFF),
    .INIT_5F(256'hCC11C8FBCAF5BFEB861CF88B04A5D499D192C60851EF6FDFECF5F3EAF9E079F4),
    .INIT_60(256'h7FB500007FFFFFFCFFF97BFFFFF2F996767B7FBAF5807D977B90D49C44994E99),
    .INIT_61(256'hEDF14B05F8FDCEE9C4FFC4E4CF514491CA99D495FA98F29B7F79F190FD4C7D3A),
    .INIT_62(256'h4CF97F5EEF745099509AC69245864FF268EE7CDE6FE772EFF5E8EFEB68EBF6E2),
    .INIT_63(256'h7FFF7BF9FCF9FFFFFCF2F9287D7C6E7C1318529442994896C79649944BA054F8),
    .INIT_64(256'hFAF877FF1FFBC7FDCAEFC8EBC990C79349938685FAA3FF9EFF15798DFD7F8000),
    .INIT_65(256'h8E9F4589D298CC9749C384EFF7E7EFF4FAD875E470ED7AE5F6DCF2F377D5A316),
    .INIT_66(256'hFCF4FFFA79FD4B8DBD9FDD94C08D4B95C877CE83CC86CCA808077DE9FA87F594),
    .INIT_67(256'hFFF072FD28FFC8E2CC814A89CCADCD97BC86C8A4268B1DAEDA2300007FFDFEFD),
    .INIT_68(256'hCD7549B0C3F079E877EB6FE5F3EAF7EF74E9F5D2F5F771E6F8F702B7FEFFF4FE),
    .INIT_69(256'h79ED14FFBE7BBEC58CFACAF74CF9CBFBCB08CA86507C7C177CAEAF8B3A9BCC9A),
    .INIT_6A(256'hF7F275BC4899496DC9FBC2E6D1CC4F140A0046023FFA00007FF27CE67CF87FF0),
    .INIT_6B(256'h61E3F7DBF3EAFAEA6CE372E0F6F672ED6EE0F9DE6AE70BFDFCE6FFFF7DF9FEFE),
    .INIT_6C(256'h4FF54AF5C6F7CAFABBF441F343FBD4ED835FF4A2C3774A90CF8844944C084BEF),
    .INIT_6D(256'h40F644FC56FF4BF9C3FFD2ECC5FE57FF11FB80007EFFFEF6FAFF7DBAFE34465C),
    .INIT_6E(256'hF5E5F2E2F5ED77E8F4D369ECFBF073F27B0C5BFE7FFB7FF7F8F8FEF27FFE71F6),
    .INIT_6F(256'hFD4A7BDE7CEB7DFC84E34383BEA08B8757A1C590CD954D8DBAF7D8D7F8F1F4F1),
    .INIT_70(256'hFDFB73F5E6FD8AFC80FB01FBFDEF800079117317FC60F8D17696FF123D836290),
    .INIT_71(256'hF1E1F0F2FBEA76DE70F76FE2F3F47EF473F97FFFFCFAFFF979FFDEF3CCFBB6F6),
    .INIT_72(256'h7AA17989FD97F61DAF85D1A1BB8EC8A4449C4A0004DC77F371DFEDE8F5E175ED),
    .INIT_73(256'h7FFA76F27FFF7FF3FDFD80007FECFBF87FFF5DFF9AF5AEFAFAFF7AF6FB087DA2),
    .INIT_74(256'hE9E3F6F1F8D7F94586FFFFFAFDFE7BFD7CF5F9FCFFF67BFF7BFAFEFC7FF27CFE),
    .INIT_75(256'hF1B4C1975089C39ED08F4887CA90C6137BF0EBEE78E178E7F2E9F1E8F6E774E5),
    .INIT_76(256'hFDF1FDFFF7F9800008FF0BFBB0F5E8FECBFF09E6C1F948F8A5FA6FE475FF7EBF),
    .INIT_77(256'hFB22F10E7AF57AF8FCF57FFBFDFFFCF6FFFE79FD7DF6FBFE7DFC7AF77EFBFEFF),
    .INIT_78(256'h429BD085C79ED2934E938090EEEB79EAEFE474E870E876E170F1F9E8F5DF6FEF),
    .INIT_79(256'hFEFF800076FAFCFD7FFBFFFFFAF1FDFFFFF8FBFA04F851FB50FBC4FECBEC0E83),
    .INIT_7A(256'hFFFEFDFA7FF07EFC7AFF7EEEFBFE7FF47DFF7EFFF9FFFFFFFDFFF9FFFFFFF9FF),
    .INIT_7B(256'hC791C38CC8A60986788E77E970D0F3DC74EC74E973E0F2F0710678A26B9D2243),
    .INIT_7C(256'h7FFFFDFCFAFA7FF77FFEF3F77CF8FCF67DFF72FDFFEDDFFFDA55CB8FC48DCF97),
    .INIT_7D(256'hFAFF7DF6FFF67BFF7FFFFEFFFBF9FFFFFEFFFBFFFDFFFFFFF8FFFFFFFCFF8000),
    .INIT_7E(256'h4994C88F7594F596725B745DF4BBF076F81074956F92F7891198879F7AF7FCFE),
    .INIT_7F(256'hFDFCFFFB78FFFFFFFCFBFDFFFCFAFDF87DFF7FFEF606419A4D97428DCF9AC999),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[16:9],dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,dina[17],dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:16],ram_douta[16:9],ram_douta[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:2],ram_douta[17],ram_douta[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\addra[11] ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized0
   (DOADO,
    DOBDO,
    DOPADOP,
    DOPBDOP,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [31:0]DOADO;
  output [31:0]DOBDO;
  output [3:0]DOPADOP;
  output [3:0]DOPBDOP;
  input clka;
  input [0:0]ena_array;
  input [8:0]addra;
  input [71:0]dina;
  input [0:0]wea;

  wire [31:0]DOADO;
  wire [31:0]DOBDO;
  wire [3:0]DOPADOP;
  wire [3:0]DOPBDOP;
  wire [8:0]addra;
  wire clka;
  wire [71:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h868F8C1878E50E4892828799ACBAF6F2FBFCEEFEF7FFFDFFFFFFFFFFFFDEB8FF),
    .INITP_01(256'hFDFFFDFDFBFFFFFFFFFFFFDEB9FEFEFFFAF7FEF6FBF5FFE7DF578F8F9D9C8A84),
    .INITP_02(256'hFDFFF8FCFBF0DCC69F93869F9091A4941F3D9396989F90978A9BB9BCFFFEFEF5),
    .INITP_03(256'hE35E8787B6959BBD1A78BAF5EEFEFDF8FDFFFBFFFFFFFFFFFFDEB9FFFEFFFFFB),
    .INITP_04(256'hFFFFFFFFFFFFFFDEB9FEF7FCFAFAF3F1F9F0FDFBD6DDA4889A8BB08125A0EFF8),
    .INITP_05(256'hFCD447DF8084919339BAF7FFFBEBFDFA65D3968099B19AA7BCFFF5FBFBEEFFF7),
    .INITP_06(256'hEA9B848E83A43AFCFEFEF1F7F7FDF9FFFFFFFFFFFFDEB9FEFFFDFDF3F8FCFEFF),
    .INITP_07(256'hFFFFFFDEB9FEFFFFF2FDF6FAFBDAFC5C83BF95AEA0ADF2EDF9F6FAF9FCF6FCC8),
    .INITP_08(256'h8B31ABFAFDFEF9FAFFF9F9F9F8C7D7C7829990B88939BCFBF6FBFFFFF9FFFFFF),
    .INITP_09(256'h9F9B8C8CBE96B2F2F6FFFFFFFFFFFFFFFFDEB9FFFEEDFAFED27F1BD5AB8B828D),
    .INITP_0A(256'hB9FEFFFCCE5E9E85959388839BBB923DB9FFFBFFFAFEFFFAFFFEFFF9FE5AD793),
    .INITP_0B(256'hF8FBFEFBFAFEFFFAFBFBFCCADCBB13D98BA604E234F8BFFBFDFFFFFFFFFFFFDE),
    .INITP_0C(256'h5101D0A5E5F5F1F5F5F5F5F5F5D4B9FEFEEFFACC0299999E9F84998823A9F9FC),
    .INITP_0D(256'hF5E1617014514134E0F0F0F4F4F5F1F5F5F5F5F5F5F4F4F1F1E5F5D554510570),
    .INITP_0E(256'h00000000000000000000000000000000000000000000000000000000B1F5F4F4),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hFFFFFFFFFFFFFFFFFFFC07FFFFFF8000FE03FFFFE0007DFFFFFFE7AFFFFFFEFD),
    .INIT_01(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_02(256'hFFFFCF4FDFBFFFF9F3FFFFFF3E3D7FFFFFE7FFFFFFFEFFFFFFFFFFFFFFFFFFFF),
    .INIT_03(256'hEDFFB7CEBE3D7FFEEDDBFFFFDF3BF7FAFFDBFFEF5FFF7FFFFFFFFFEFFDBE7AF6),
    .INIT_04(256'h3F63BA397366FFFAEF7FF7EF48E6FDF6FDDFFFAFDFBE78F6FFFBB70FDFBD7EED),
    .INIT_05(256'h2A429709FC238392255648695E25D195134AC529A0A44E993126FCD934A5A19B),
    .INIT_06(256'hBA6EDECA9A06F6977675B7C9FB2B748CEDEC87989D25F08F20DAAF08FD637897),
    .INIT_07(256'h1F52A46874A147AD293EB4EAB0A0F4082D51DF9011ABE819B759EE013D426EAC),
    .INIT_08(256'h1B5ED4791162488A3536CC1852E64699336AA4C93262538629667D68D126C383),
    .INIT_09(256'hFDFC37FFFD7DAA960DFAD259DFFFC78B341ABCF86A6546882F6A6CD811E2CB98),
    .INIT_0A(256'hFFEFD76F3F3CFFF7F5FFC7FFFEBEFEFAF1EBFFDF5FFDF6F7FFE3F7DFFF7E7FFF),
    .INIT_0B(256'hF7F3FF7F5FBEFFF2FFEFFFEF5EFE7BFAFFFFDF7F5FBC7CF3F7FFFF8F7EFE7BF9),
    .INIT_0C(256'hFE03FFFFE0007FFFFFFFEFFFFFFFFEFEFBFFE7CFDFFFFDFBF9F7DFAF7F3F7BFA),
    .INIT_0D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC07FFFFFF8000),
    .INIT_0E(256'hFFE7FFFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0F(256'hF5FBFFFFFEBCFFEDFFEBB7FEBFFFFFFCEDFFCFFF9FFBFCFFF3DBFF9FFFFF7FFF),
    .INIT_10(256'hEDEBB7EFFEC37FFEEDDB6FFFDFBFFBF9DBDBF76F3FFF7BF1FDB7D76F3EBEFFFF),
    .INIT_11(256'h2B4ACC9952A84C993356DC8931664F7D3767D4F7B326FB0EF56FB770D3DFFFFF),
    .INIT_12(256'h195E7B6857CD889D1F32B809AEA24A932F3E94596227C9A2255EAC2A5264C49A),
    .INIT_13(256'h11B4CC6F323CADEF322262BEF2BEAEF35866BADF6BFBDD352FB265B3AB7CBB8A),
    .INIT_14(256'h332A349933A6CAB50D661C4BB364C714071A6CF1922DCAF35B0C444F71C54BF9),
    .INIT_15(256'h175A44A8E0A4CBA2112EC47A53A3C692312254D952E84D991562CCA931644C91),
    .INIT_16(256'hF5DFBF8FBFBF7FF4EFEBFFFF9F3FFFEEFFDEB7EEDFFD03932DFE58697FBB4D8F),
    .INIT_17(256'hF5CB9FFFFFFEFDFCE7EBCFBF9FFFFFFCF3CFBFFF9FFF7DFEEFE7D7AFDFFF7CFD),
    .INIT_18(256'hFDFFDFDFDFFFFEFFF7FBD7CFFF7F7DFBF5EF97BF7F3FFFF9E5EBD7FF3FFEFFFF),
    .INIT_19(256'hFFFFFFFFFFFFFFFFFFFC07FFFFFF8000FE03FFFFE0007FFFFFFFF7FFFFFFFEFE),
    .INIT_1A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1B(256'hF9B7FF6FFFFFFCFBFFF3FF9F7EBFFFFFFFFFFFFFFF7EFFFFFFFFFFFFFFFFFFFF),
    .INIT_1C(256'hF3FB8FDFDEBD7FF8E3E7FFEF1D7F7DFCFFC76FAF9FBE7FFDDBFFE7FFBFBF7BFF),
    .INIT_1D(256'hFB6474BA93627D8B1CF7FFA873EB7BFCFE3BF76F9FA2FBF6FDFFCF6FDEBF76FE),
    .INIT_1E(256'h2776147811E84996454ED429D2E04A8D358ACC58B2A54C8A3369EC985263CDAC),
    .INIT_1F(256'hE7BCADCFE37F4BFE6BCE547FD53DC67214D6ECC752FF47A23B2A9CFA511C4B80),
    .INIT_20(256'h29D79C3FB0B856F3E653CDDF70FD84F8F3CF788F157C8CFEDFE7989FC13E56F7),
    .INIT_21(256'h258ACC88D122C588334A8CA813234C152366AC91B1A243E06B44A46E1345C1F5),
    .INIT_22(256'hDDD29FF49EFE4B9D27BA7C69BFD145951F4E14B9B2A7C48B453E948871E5CC8E),
    .INIT_23(256'hF9F3F79F1EFC7BF5FDF3EF7FBF7E7DFEFBFBA7AFDEFDFBFAE9F7777F5FBF7F44),
    .INIT_24(256'hF7FFCFAFFFFEF9FEF3EFFF2FDFBFFDF1FFE7E7AF3EBF79F0F9FFE73F1FBCFCF8),
    .INIT_25(256'hFE03FFFFE0007FFFFFFFF7FFFFFFFFF4FDFFFFEF9FFFFDFBFFFBDFBF7FBD7DFF),
    .INIT_26(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC07FFFFFF8000),
    .INIT_27(256'hFFEFFFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_28(256'hF9E3EFFF7E7F76FEFBF3FFDFDFFEFEFFFFF7DFCFFD7F7FF3F7FFFFFF7F3FFFFF),
    .INIT_29(256'hF92FB7F641A47FFDEDF3F7EFBFDA7CF3FDDBC79F7FBFF8FEF1FBE71FDF7CFFFB),
    .INIT_2A(256'h1B5A54A834A8CC921536649953A2BE9B592A5BD97364079017B3E0E90F66FF6A),
    .INIT_2B(256'hE5FA14AFE67ECEE644CA04DED1BDC995018AB439B37951A12D026D2A32E5CD89),
    .INIT_2C(256'hF1CFF79F5EFFF7F9FDE3BFFF3F7E79FBEFFBF73F7DFE9AF9FDDD915F3EFEC5F7),
    .INIT_2D(256'h2B23041FD37DDAFBC057AD5F727F0AF2EB83984F567EF9FFE7D7C73FE23C7CFA),
    .INIT_2E(256'h2B765CFA32E251911756752931E8C9A31D2E442A74A4CCF51138AC9FB2A8C8FE),
    .INIT_2F(256'hFDD7D7DC3FBEFA23F5F927427F72F78789EAEFE8FE08C9883A12AC381DA1C7A1),
    .INIT_30(256'hE3FB87FF9F7C7EFAE1C7C7CF5FFF7EFFF1C3AFCFFF3E7FF9EBE3F7EF3F3FFEC9),
    .INIT_31(256'hE9FFDFEFBFFFFFE8F7D3FFFE1FBFFDFFFFEFF7BFFFFA7CF0FDFF8F9F1FFFFFFC),
    .INIT_32(256'hFFFFFFFFFFFFFFFFFFFC07FFFFFF8000FE03FFFFE0007FFFFFFFA7FFFFFFFFFD),
    .INIT_33(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_34(256'hFFFB9FFF9F7D7DFCE7FFFFBF9FFD7FFFFFCFFFFFFFFF7FFFFFFFFFFFFFFFFFFF),
    .INIT_35(256'hE7F7F7EFDE837CF8FDCFDF8F1FBF7EF2F7FBF7CF5F3E7EF6FDEFFFDFDF3C7FF4),
    .INIT_36(256'h374A85C931A7C597216D54B9F524FEADD543EFCAB1E5FB0EFAAB9F60DF2BFFFE),
    .INIT_37(256'h2B9A0C0D74BFCB9C43564C699036C692138694D952A7459F2526DCA9F1645691),
    .INIT_38(256'hF7E7CF7FDFBFFFF5F3EFBFEFBEFF39F8EFE7332F1FBDD1FFCDDEAD2FEEBE40DB),
    .INIT_39(256'hE5EFFF5FFC3EF9F6FFCBD73FDE7FFCF8F5FFCF8F1EFD7FFDF3EBDFEFBF3E7BFE),
    .INIT_3A(256'h4747ACEFB1C644FBEB8FF48F71BD8AF5FDD7D85FB13EF0F9F7FB970F227DFAFF),
    .INIT_3B(256'h0E8E42497FAA4E99111E0CD92824CA9743228C59F366C51823861CB11265C7F5),
    .INIT_3C(256'hFFEBCF877E037A99F3FF4F593F1EFF8993E41FE83E66FDAA47263FAA5FA2A293),
    .INIT_3D(256'hFFA387FE9FFFFFFEE1FFE7EFDFF978F6F9C3D71FDFBF780EF5F3FF00DE7D7C7B),
    .INIT_3E(256'hFE03FFFFE0007FFFFFFFEFFFFFFFFAFEFBFF474FDFFFFDFFD1F7FFBFFE3F7FE4),
    .INIT_3F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC07FFFFFF8000),
    .INIT_40(256'hFFF3FFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_41(256'hE5E3B7BD5FAB7FFEEDCBA7EFDFF47FFAE9DBE7FF5FBF79FDF9D3FF3FBFFE7FFF),
    .INIT_42(256'h5B5C73A8B226FE8D1DB7F7D8ADA3F98AFC3BC7385F63FFAEF1FB97EADEE27DD2),
    .INIT_43(256'h2572FC99145949983F4A8C2911644D91237EBCB932A648992F466C0933E4B58D),
    .INIT_44(256'hF1D7FF7F5F7EF3F7FFE3DF6FFEFE4AF3B7FEE45F7CBDD066396E9516D27CC490),
    .INIT_45(256'hF1DBEFAFBFFE7CFCFBE3F79F9FBFFDF8FDF7AFBF1F7F7CF9EBFBC79F3FFE7BFA),
    .INIT_46(256'hEBEFCFEF5E7EFDFCF3D7FFBF9FBE79FBFFE7B72F7FFF7FFAEDFFC7FF5EBEFDFD),
    .INIT_47(256'h2F64C51A1122C803315FAC10746A51FFEA63DD3FF240FAF9F7D7AF5F34FFFFFA),
    .INIT_48(256'h13665699DF65918B552699387967439027AACC7904E2C48B334EBC8870E450A8),
    .INIT_49(256'hEDF877C85E027D9A1DD9DFA95F207F9DF63ACFF9BFA67C9732EE4F99FFE7E49E),
    .INIT_4A(256'hFDFFFFDF9FFFF4EAFFFB278E5F7F7FFFC9FFF7FFFD3A780AFD93B7005FFFFE82),
    .INIT_4B(256'hFFFFFFFFFFFFFFFFFFFC07FFFFFF8000FE03FFFFE0007FFFFFFFF7FFFFFFFEFC),
    .INIT_4C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4D(256'hF5FBEF4EFEA97EFBFBEBFFCF7E39FFFFFFF7FFFFFF3EFFFFFFFFFFFFFFFFFFFF),
    .INIT_4E(256'h153677E741A6FC835D2B97887F9E7977A5BBF727FF20FBA6FD4BD76ADE9DFAE7),
    .INIT_4F(256'h2362CC1773E5CB9C33466C79925ED6891B666DD832E7079B1B3650E97562FF7A),
    .INIT_50(256'hE7DD36BFFFFE4EEFCDCE84CEFBFFC997209AC429F33BCF9731428CF9F2A5C87B),
    .INIT_51(256'hF1F3CFEFFF7FFAFFF3E3D75FFFBFFCF8F5E7BF8F1E7FFFFAEFEB9FFF5F3E6DFF),
    .INIT_52(256'hF7F3D7FFFF7FFBFFF5EFEF6FFFFFFCFFFBEBE78FFEBFFEFFF9F7C7DFFF3FFFFF),
    .INIT_53(256'hFE0FCF5FC33F7DFAF3FFD7BF5E7F7AFFF5E7E75FFFFE7CFFF9EBDF9FFE7FFFFF),
    .INIT_54(256'h212E5C3855A4CC9A1742449952E24B14512C1C7193660CFC07A3F88F92C57AFE),
    .INIT_55(256'h3B6ABBB941A5CC902F76F4990FE4448F3D5E5C98F3645593177A85A97163C98A),
    .INIT_56(256'hFFA8574F5FFF7FAB15FE17EA7C3E7B09042AD7603FAA8795350AE8E9BE82BD92),
    .INIT_57(256'hFE03FFFFE0007FFFFFFFE7FFFFFFFFFDF9FF57EFBFFFFFFED5F3FFFFDFBFF2FA),
    .INIT_58(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC07FFFFFF8000),
    .INIT_59(256'hFFEFFFFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5A(256'hEF0E362935947FDF4CDF3FEDFAA4FDFFCF9BDFAFFFB7FEFDF79FFFDFBFBFFFFF),
    .INIT_5B(256'h1372DCD5534346553725D4D5B1564522F56E1CA25155D75006E9BDE511886991),
    .INIT_5C(256'h2FBEBC0F4CBF4CEE2F5DDC8ED23E4855F75EE415B33B4C0E38EE4C90D255C65A),
    .INIT_5D(256'hF1FFD7AFFF7FFBF8F5E3FF7F1FBFF9EAFFEB7F3E5EFE33FCDFFEBB6F9EFA48FA),
    .INIT_5E(256'hFFFFFFDFFFBFFEFFFFFFFFCFFF7FFCFFFFFFFF8FFF3FFCFFFFFFC79FFF3FFDFF),
    .INIT_5F(256'hFFEBFFAFFF7F7EFFFFFFFFCFFFBFFDFFFFFFFFBFFF3FFDFFFFFFFFAFFFFFFEFF),
    .INIT_60(256'h296BE58EB1FE01F9F853F03F3539FFFCFDF3D7FF80FEFCFCF5FBFF9F9FFF7DFF),
    .INIT_61(256'h1F429CE192D64554273E54B5938748F9154ED40F31D545FA3528A4BF523ED4E5),
    .INIT_62(256'h13AEAC2701BACD392A2694A3309C4E7E255684D7D38ECB5A214A7C75535F4F1C),
    .INIT_63(256'hFBFFF7CFFFFFF5FAFDF7D7AF5F3FFFF9F5FA5FFF3DBE05EB57E848AE7FFEC170),
    .INIT_64(256'hFFFFFFF01FC07F00FFFC07F01FC00000FE03FFFFE0007FFFFFFFEFFFFFFFFEFF),
    .INIT_65(256'hFFFFFFF01FC07F00FFFFFFF01FC07F00FFFFFFF01FC07F00FFFFFFF01FC07F00),
    .INIT_66(256'hFF7FEF7014807D00FBFFFFB01CC07F00FFF7FFF01FC07F00FFFFFFF01FC07F00),
    .INIT_67(256'h445583A013C04100A08A8C300F803B002243FB7010C05300BF47FD600EC07300),
    .INIT_68(256'hABB873B012C04E001C55D4C00FC04400B439AC9013004D00AA6814B011403D00),
    .INIT_69(256'hD5E3E7F01F807700F9ABD7F01FC04B00F5F374701DC04B00DDE9AC7012C03D00),
    .INIT_6A(256'hFFFFFFF01FC07F00FFFFFFF01FC07C00FFFFC7801FC07D00F1FF57A01F007F00),
    .INIT_6B(256'hFFFFFFF01FC07F00FFFFFFF01FC07F00FFFFFFF01FC07F00FFFFFFF01FC07F00),
    .INIT_6C(256'hF9E7E7E01F007D00F9F3FFA01F807F00FFF3FFF01F807F00FFFFFFF01FC07F00),
    .INIT_6D(256'hF253D4A012C04D00F5E72CA011800A00CBEBC84013807E00F397E7C002007F00),
    .INIT_6E(256'hFCE5D42012404800B4F8E400128047003869A4F012004900A873CC3011C04500),
    .INIT_6F(256'hF3EB5FA01F805500D7E585B01F800400E1ACC89015C04A0072C1F45001404900),
    .INIT_70(256'hFE03FFF000007F00FFFFFFF01FC07E00FFFFD7D01FC07F00F5FFCFE01F407D00),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({dina[34:27],dina[25:18],dina[16:9],dina[7:0]}),
        .DIBDI({dina[70:63],dina[61:54],dina[52:45],dina[43:36]}),
        .DIPADIP({dina[35],dina[26],dina[17],dina[8]}),
        .DIPBDIP({dina[71],dina[62],dina[53],dina[44]}),
        .DOADO(DOADO),
        .DOBDO(DOBDO),
        .DOPADOP(DOPADOP),
        .DOPBDOP(DOPBDOP),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(ena_array),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,wea,wea,wea,wea}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized1
   (\douta[34] ,
    \douta[35] ,
    clka,
    \addra[11] ,
    addra,
    dina,
    wea);
  output [15:0]\douta[34] ;
  output [1:0]\douta[35] ;
  input clka;
  input \addra[11] ;
  input [10:0]addra;
  input [17:0]dina;
  input [0:0]wea;

  wire [10:0]addra;
  wire \addra[11] ;
  wire clka;
  wire [17:0]dina;
  wire [15:0]\douta[34] ;
  wire [1:0]\douta[35] ;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:16]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hF92E843F2EFFFFBE63C3679F5EB2A376BFCFFFFAAA8220A88288082AA8A2AAAA),
    .INITP_01(256'hFFFBE2F905C7F777F3B5236AFFFFBFD6511855DC58FD58FCBFFFFBEFE7E21409),
    .INITP_02(256'hED5D0424792C3BDF7B77C06C688CAB7452A738FFFFBFFFCF1B09EE08D4F2AEBB),
    .INITP_03(256'h94FFF8B79FC210862715CA72798E7BFB7BE49BB3C21CB9CE877EFFF7BFFBF71F),
    .INITP_04(256'h74FF98894FFDC7D7FDCFBF7AB8B7D711F01999F2AFEEBBEF7159795C5646A05F),
    .INITP_05(256'h3A260A77FBFEFB219FEFBA1CC35DE3DDFFB6FE3DB44FAC93142E632EF9DBFFED),
    .INITP_06(256'hFFF66EC21391B54180F2FF3BFEBBFEB7BCF8B4CE1EAB6B1DBFBEEF910693EE2D),
    .INITP_07(256'hAC2E1CFEBFF6BFFFFFE7DEAF90CA037372DFCBFFFFDFBF82260F682C36F7DFBF),
    .INITP_08(256'h7BFFFFCF7F4D6288EC0A3F3CBFBFFFFF9C9905EA9C90FE3BE6FBFFFFECBE7EF8),
    .INITP_09(256'h7F43A755359D7C6BFF7FF67B46E19709251BED9BBDFFFFADB7EC8BC77F2EADDE),
    .INITP_0A(256'h7FF7B72B2D4FFA9EE89DDC46DE7FBBEE8EC597EE0FEB400FC77E7FBFF6986BFA),
    .INITP_0B(256'h98FC8B99234FD5C9B7B7E2D065BF1E9E69B0AE8C36ABE36FDBE5A799F1667A83),
    .INITP_0C(256'hCF0B02CBDBB211886E4876357FFC11DEBF9AB744E9E138FB13B066F68BFD6D0E),
    .INITP_0D(256'h3B81548403987F734AFFB37CD5D6E4769BD1DCDB9EA317863A73B72BC0E7F003),
    .INITP_0E(256'h9CDB2CB3DAA9A6A392B05D2C412F98FDE77BFCF74C96633882D17FB333FA1105),
    .INITP_0F(256'hBBBAA9CBC82E00F9E4FFFFBBAE772BDF1D29B8527CFF7BBAEBEDEFAA7656CE1A),
    .INIT_00(256'hA00AA03F803F003F4038E03E003FE03CE03FE03FE03FE03FE03FE03FE03FE03F),
    .INIT_01(256'h003C403E803CE03DC03F603FE03C603F003C803C003D403A4004C02400230026),
    .INIT_02(256'h003FC03EE03BE03F003F803E803DC03D603F40282006601C800CA01B603B603E),
    .INIT_03(256'hDEFFFF3B5F7F7D7EFFB6DFFFFF3DFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000E03F),
    .INIT_04(256'h9FFFBEFD7FB9BF3E9FFF5FFB5FFE9FDCFE7FDFBFBE1FA1658D6362E11E66DF84),
    .INIT_05(256'hFFFF9F3D3EFFFF7CFFFF1F7FFF807FA9DE621F695FA2FF289FE79F439E3DFFBF),
    .INIT_06(256'h5C3F3FBC5FFEFE3EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000FFFFFFFFFFBF),
    .INIT_07(256'hBFFDBFBBFEFFBFC3DECD5E01FE1A7D1BC2829283F199331D45203F649F7EDF3F),
    .INIT_08(256'hBFFF3F3FFE3E5E2D5F82F4EEA3B3AE6906F3ED10BD61BFE1FEE99F15FEBDBE3F),
    .INIT_09(256'h9BFC7FFFFEBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000FFFF5FFF5F3E5DBEDFFE),
    .INIT_0A(256'h1F601D181F808E829F019FD30FA7F262D161302933E402223F8CBDBE3FFF5FBE),
    .INIT_0B(256'h1FFFDFC0803134F5D1F034B1D12C74AF33F42118FE28BF295FE19E3E1C655FCE),
    .INIT_0C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000FFFFBFFFFFFFBFFFBEFFBF3DFE7D),
    .INIT_0D(256'hE663809F4DA7ADE4A1DF61A70C262EC8705492A89F435F3D9FBE3EBD5F7EFFBE),
    .INIT_0E(256'h01B1D7B019ED94745971082E70F070707462CAE25E277FE41E425D68BF6281E9),
    .INIT_0F(256'hFFFFFFFFFFFFFFFFFFFFFFFFE000FFFFBFFFDFBBDFBFFFB95FBF3F7E7F7EB6F6),
    .INIT_10(256'h4004E9261301F124F0E554A7D262516106069F7E7F535F7EBEBE1F3FFFFEFFFF),
    .INIT_11(256'hB87298B1B671D7AF7AF38C70D46994E3F0659F9F922B672370A2CC202005211E),
    .INIT_12(256'hFFFFFFFFFFFFFFFFE000FFFFFFFFFF7FFFFF1F7FFE769E7FBFFB802FD8B13A2F),
    .INIT_13(256'h4F45F36833E124246A6694E2A12B9E21BF8FDE3D5F7FDFBEFFFDFFFFFFFFFFFF),
    .INIT_14(256'hF83017B1982E98EF71F171D253A452A681E4F42331A73466D1262FE5B316B2A1),
    .INIT_15(256'hDFFFFFFDE000FFFFDFFF7D7DBFBEFCBD7FFFFFBE7F7D1BF09870183196B21A2F),
    .INIT_16(256'h92E173E551A6D0A2A3A55F1DE9267FC33FBC9F7C7F3FDFFE9FFF5FFFBFFCFFFF),
    .INIT_17(256'h59AEB8F2542F11827224EFE895211127D1E4F0E1E2A9AF614245738040EAF224),
    .INIT_18(256'hE000FFFFFFFF1FFFDFFAFFFFFB3FFFF77D3F376E582E57B0D96E587118303772),
    .INIT_19(256'hD36391E7B5013079A71EFE617F93BFBEDEBFDFFFFFFFFFFFFFFF7FFF3FFEBFFC),
    .INIT_1A(256'hB82F89DB52E5B3A4B2A3F12553E593667365F2866B7B707E627474A270E8F266),
    .INIT_1B(256'h5FFFFEBCDFFF9E7FFFFF3FFF9EFEF8C5B831182FF934D72BF83358EF9732F731),
    .INIT_1C(256'hB2BB0E7973B221E67EC4FE7EFF3D9FFF7FBBDF3C3EBF7F7EFFFEFEBFE000FFFF),
    .INIT_1D(256'hD22274E9F0E2F321D22330A534E410CCE27C60BF95FC32A3F0E67221D3E2B1A5),
    .INIT_1E(256'h9D3F7FBF3FFC5BFEBFFE57C7776C58B0D7AAD8B5D8B1B92DF771F9AF97716189),
    .INIT_1F(256'h8F7BD06389CDFFFDFF7D9FBFFFBFFFFF3FFFBFFEFFFFFE7FE000FFFFBFFFFFFD),
    .INIT_20(256'h71687264B2E4D3A93223E3E89DFDDFFDFAFFD1FFD4E393E511E9D3A8E03DFC7F),
    .INIT_21(256'h7F3FFFFCBF7FA239F8F197715A31D5EEB9ADF7F5F9AB582B97E46D65522012A2),
    .INIT_22(256'h4242DFFE7EFFFFFABD3F7EFFFFBEBF7F9FFF9FFFE000FFFFFFFFBEBFFFFFDFBF),
    .INIT_23(256'hB1E432A3D26646659E24DFFD1EFD113E3340D0E671E1F2A27D7D5C7AD93E13E5),
    .INIT_24(256'hDFBEE37FB68758EFF5B0DAAF78B3D6B4186BD7D2F8E1040D11E694A831E110E4),
    .INIT_25(256'hFEFFBFFF9F3FFFFBDFFDFF7FFF7DFFFFE000FFFF7FFFDE7EBFFBFF3D7EFF7F7E),
    .INIT_26(256'hB1A4D4651EE1FE3E7FBF7FC2B1A6B2A7F425D423FEA99FC11DFF312AE6B8DE3D),
    .INIT_27(256'h587418D8982E17B1D6B0BA6BB5F3B5F37293D22A90E511A3F42852E732E45466),
    .INIT_28(256'hBFFFFF7FDFFFBFFF9F7DDF3FE000FFFFFFFFFFFF7F7FBFFEFFBF3EFFFFFE5C7F),
    .INIT_29(256'h72AABE18BEB17F01C014536530A251E61ED2FDC05FBF72A4413E7FBC1FBEFDFA),
    .INIT_2A(256'hB8AC37EFF9B21AF135B0E92C708106E2B3263423F022D2635225F166536132A8),
    .INIT_2B(256'hFEFCFFBFFEFF7FFFE000FFFFFFFF7FFDFDBEDE7F5FFFDFFE7FFFFFBCE3FF577F),
    .INIT_2C(256'h3FF9A1C253D17364B266F1E534A120C67F0415229C7E9EFD1FBF7FCEFF743D3F),
    .INIT_2D(256'h982C95AFD975596F894ED5E712A39126941F33C73286735ED2A6926530A1BF16),
    .INIT_2E(256'hFE7EFF3FE000FFFF9FFFFFFF1FFF1FFEFF7E5FFFFF7EDFFFBABBECB9373F782C),
    .INIT_2F(256'h2AFD52B8D182535F698600385FFA92A4DFCF5E915FFCDD3EBFFFFF7DDFFF7FBD),
    .INIT_30(256'h5829767000F051E8D3265167F16451E5F2A213A790E254A3F566ACC5B877C07B),
    .INIT_31(256'hE000FFFFFFFFFEFFFFFFFFFFFFBFFFBFFFBFFEFF7FFF9FFE76BF977E5959B8F0),
    .INIT_32(256'h53EEB24070C5637AA27AD1E73F1BBE16DF0BA70DFAEFFFFFBE7FFFFDFFFD5FFF),
    .INIT_33(256'h67AE530271A673264F20C326235F2F4613C4B286B0038B415C59417E287412BA),
    .INIT_34(256'hFFFFFF3FFFFFFF3FFF3FFFFFFFBFFFFF9DBFFC7FBFFB567FF6FEB723BA3357B1),
    .INIT_35(256'hA3BD1CF7DD04F2A5872108A73EBEBFBCFFBFBE7F9FFF9EBB7FEBFFFCE000FFFF),
    .INIT_36(256'h538EB3A4F2A932E1B1A253DB513CF10C138122C65B623D7C7EB81C7CE1B88FB9),
    .INIT_37(256'hFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFD1F3FDFFCEC3F98BF947FF88358C11410),
    .INIT_38(256'hDDE5B3656DA76B54857AC6BF977FFFFDFFFFBE7F3EFDFFFEE000FFFFFFFFFFFF),
    .INIT_39(256'h90DF33A56FAA63400276833C414100420C06BF801A835D42F704A0BD427BDDFE),
    .INIT_3A(256'hFFFFFFFFFFFFFFFF5FFF9F3E1DFD3F7EFFBEB1FF397FF87ED7BFA1FF53BDF3D4),
    .INIT_3B(256'hD0FA533DFF3EFE7D1F7F9FFE3F7DFD3AF53FDEFFE000FFFFFFFFFFFFFFFFFFFF),
    .INIT_3C(256'h31636D625EB826BCE0F8E31F11597E86DC421EC13C3C9CF8DE37FB410227128C),
    .INIT_3D(256'hFFFFFFFFFFFF5E7FDFFEFE3F7FBF1FFCBF3E613FA0FC28BF473ED2BAF443B0E3),
    .INIT_3E(256'hFDFE9F3F7FBB7E3EFFFEFFFFBE7FFF79E000FFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3F(256'h1BC05E3A2036C1966321C0242143413A02BA7EF85D681F8292BCF2BF937F6AFF),
    .INIT_40(256'h5FFFFFBAFE3FFF3FBF7DBFFFDF7FFF7F1FFFFFBCFE7F8ABB4FFF7202154E40C2),
    .INIT_41(256'hFFFFFF3F1E3F9D7CFFFF3FFFE000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_42(256'h7C6BEFF6ACC5C30BE1FDE0BFBE017C5D7B1080BE13FF663E1D3EFEBCFFBFDEFF),
    .INIT_43(256'h5FBEDFBEFFF97EFFBF3C9F7FFEFDFF7F3F79BD8461A971E411603166FCEADE83),
    .INIT_44(256'hFFFC3FFFBFFE1C7FE000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFF),
    .INIT_45(256'h30B432FE818A3D637DA0FC24D4E561A3FE3E1F3DFFFEDF3F7FFBFFFCFD3F7FFF),
    .INIT_46(256'h9EFF7F7D9F7EFFBF3FFFFE383FE1BDE63F2121A4E7E62125E0A2BD1FFBA92B47),
    .INIT_47(256'h3F3FBFFCE000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFF9DBF7FFDFFFE),
    .INIT_48(256'hBEA3BFE580D36E63A8E6DFE1FF2B5F3BDFFEDE3FDFFBDFFFFFBDFFFF7FFDFE3E),
    .INIT_49(256'hDEFD7F777E06DFE09CE78267B463D2E310E53326956441E335A6FBE2A2E5E565),
    .INIT_4A(256'hE000FFFFFFFFBFFF9FFDBFFF7FFF5FFEFFFE5FFF3FFEBFFE7FFF1FBEFCBEFFFF),
    .INIT_4B(256'h7048D2E8F2DFB1A51FE5DEE8DF39FFFBDDBFBEFF7FFFBFFEDEFDDFFFFF7DBF7F),
    .INIT_4C(256'h1FE3BC6430E513645066D26AD35F92E571654FE2D460C3DD7A6B1F6005643122),
    .INIT_4D(256'h1FFFFFFE3FFF5FFE7FFEFFFC1FFFFFFE5FFFBF7ABE3F7FFD9FFEFE39BFFFDF1F),
    .INIT_4E(256'h13E5B06C15A39DE4FF95DFBF5DB99FBEBEBDDFFDDEFF3FFFFFFCFE7DE000FFFF),
    .INIT_4F(256'h93A2B3253123D16232A7132072683124F3A6917392F39265D1E3924969759100),
    .INIT_50(256'h1E7E5F3E9F7E7FFD3FBEFFFEBFBD9F7F7F7DFFFC9F3FFFFFFED75B9F03E250E6),
    .INIT_51(256'h72661426DCA8FD81BFFFFFBDDF7FFFFF9E7FFFBDBEBF3FFFE000FFFF9FFF1FFF),
    .INIT_52(256'h932275A58FA492A7B22331E790B6EEBB35BBF0C41209F138C47D54E12FA052E2),
    .INIT_53(256'h1FBFFEFEDFFDDF3F9FFF3DBFDF7CFE7D1FFDFC0EBFE54F6971A6F222F2677263),
    .INIT_54(256'h4A1E9FEA3CB55FBEBE3EBE7D7FBF1FBE7E7EFEFEE000FFFF5FFF3F3EFFFEDF7F),
    .INIT_55(256'h939ED0677423F2C2337579FE99381237D13864B75A3840E25220B62471657224),
    .INIT_56(256'hFFFF5F7D5EFEDF7E1E3DFEFCFFC55F23ABE68FE3B1A37327B1A2B22751553162),
    .INIT_57(256'h1FE75E7CFFFE7FBFBFFE9E3FBFFF5F7DE000FFFFFFFFFF3D5F3F5F3C3FBEBE3E),
    .INIT_58(256'hF1283377FB765D397DFC227CC4FABC3D5EFBD0A8B0ABF163B3A393E7B429A0A1),
    .INIT_59(256'h7FBAFF3E1E7D3EAA9EE2072732E69464D3A5B1DF13C311FC11C2522AB2E87323),
    .INIT_5A(256'h9FBDFE797F7F7FF87F3EFFFEE000FFFFFFFFFFBFDF7FFFFD7FBFBF3CFEFB7FBF),
    .INIT_5B(256'h9AF77F79FCFA3B379C347BBBDCF631A5B0BC12A73262F2E22FE7B5A23A25BF6A),
    .INIT_5C(256'h3EA1FE2442E3D1E433A5116AF126F37F11F73368AA6851A3CF62132711B4C1FE),
    .INIT_5D(256'hFFFDFF7F7F3F7E7CE000FFFFFFFF3EFDFFFE1EBF7FBE5F7CBF7EDEF79F899FA9),
    .INIT_5E(256'h9EB89EFDBD7BDEB9DD7BB491D5BDD17BF1CF936334255064D3647E239FA49FC3),
    .INIT_5F(256'h316633267304B27E723D8FBA6147BE222129552614A4F142F4FBBBF75B7D1CFA),
    .INIT_60(256'h5FD3BFCEE000FFFF9FFF3FFFFFFE5EBFDFFC7EE55D5E1FEEFDE01FE59EE43527),
    .INIT_61(256'h5A7A3D38BBFCB2813E7FF37A913F317933D43164B26615657E663C261FDE9CE4),
    .INIT_62(256'h12A8357ED33E9FD73BDD54265466D16451A1D3BCDA3BFF37FBB91C3B7DFA7BFA),
    .INIT_63(256'h4000FFFE3FFF3EFEFF7E5FFF1F3C9ECA9F9F1B5F84863425D026D26591E512A5),
    .INIT_64(256'hDDB50885FE7E7DBFA7BEF1FF723B127A72A471A4B2E46121DE28BFE7BFC5FEE3),
    .INIT_65(256'h9E61FDE5232711E2F4667365F2B0E13B9DF91BFD9E76BDB9BC3B9E397D37BC7C),
    .INIT_66(256'hBFFF9F3F5F7DBFFEBEBFF2A38FE7B7A5B023F2E5721DD3201361F36A2241FFFA),
    .INIT_67(256'hDF7F1D7FBFFCFC3F4A7F32783360B262F32BD3E58F617229C92267ABE000BFFF),
    .INIT_68(256'h4E26B366139D12AC10BC7EBABDBA5BB9FCFA3DFB5D3AFDF4DDFDFCB9FE7DE06D),
    .INIT_69(256'h1F7EBFFCFEBB653FAF1E4F31E33E323D737E12BED2829221F41FDF057F6B6BA2),
    .INIT_6A(256'hDFFE5F7F9DFC3DEFB22672DBD2FE907994F3138542405140C0005FBFDFFC1F79),
    .INIT_6B(256'hF30272FB78F85DF65CFA7E3A1B38DC38BD7D1C7BDB38FEF7BA79C2BFFF393FFF),
    .INIT_6C(256'h9F4DB157B3FDF23D517D927E6EFD70FCB0BEF53B40D7FD6810DD122493E21165),
    .INIT_6D(256'hDFFFDCBD907DF17F357FF2FE90BFD43BF1FF75BFA000FFFDDF7FFF7D5E3F9FAE),
    .INIT_6E(256'h3E3CBD3C5DF9BC781DBB7DFA9D741ABB5EFC9CBCDEC376FFFFFE1FBD5E3EDF7C),
    .INIT_6F(256'h0FE05864DF927EF79F7A7FFF613810A0EF2822E115A8B1E4B3E5F3A3EE7D3635),
    .INIT_70(256'hD37E6D7DBFFEBCBD993F623F603EE0BE40003FBCFE841C853F18DE345D657FC4),
    .INIT_71(256'hBDB83DBB5CF85C3CDEBAFD775C3D9BB89CFD3F7DFCBE5FFF3F7EFFBE7EBF773C),
    .INIT_72(256'h5EC23FA83E28FEE2BFE5BD472BE1D4A88EE39229112792006137FDFC1CF73BFA),
    .INIT_73(256'hDFFC5F7F5FFEFD3C7FBFBFFCE0009E7F1FFBFEBEFFFFB7BF463DEB3EDE7F1E7D),
    .INIT_74(256'hBD797D393AF8FD3CBE35FE91413FDFBEBFFFBEFF9F3DDEBFFFBD5EBF9EBE5F3F),
    .INIT_75(256'hFDFF9F2FFCED30E5D422F0E7F463122172641144DEFC3AFBFE783E791C7AFCBA),
    .INIT_76(256'hFF7E3F3FFFFC3FFF0000FEBE627FA2FECC3DFA7FD2BF22B910FE523E89BEFBB9),
    .INIT_77(256'hFDB75BBBDEC8BC831E3DBE3E7F7DFFFEDFBFDF7DBFFFDEFFDFFD9EBFFFFF7E7D),
    .INIT_78(256'h72FB6360B066D46171A77424132460245B3A9EFA1BF91D3A3C7A3D781C7CFEBA),
    .INIT_79(256'hFFFFFEFFE0005FFFBD3E7F3FFFFE3FFFFE7C1FBF5FFE1EBE613E74BED47E917F),
    .INIT_7A(256'h7AE7C8505FFF1FBE9FBCFF7FDE7FDF3B9EBFFFFDFFBFFF3FFEBFFFBFFFBFFEBF),
    .INIT_7B(256'hF16333A591E4D0E3D229C2E13E231DBA9C749CF73D7B1D3A1CF8DC7C5CC1BE68),
    .INIT_7C(256'hE000FF3F9FFF5FFFFE7EDFBDFFFF1CBDDF7EFF3DBFBFBC3FFFFBB7FFF615B2E3),
    .INIT_7D(256'hDE7DFF3FDE7FDFFDFFFDFEBFFFBF3F7FFEBEFFBFFF3FFEFFFFFFFFFFFE7FFFFF),
    .INIT_7E(256'h33A692E6F2E59223DDE57DA5BC167D17DD2E1C5DBE445D253BE41DE2E4A6E1A7),
    .INIT_7F(256'hBFBF9F7F7FFFFFFEFE7F7FFFFF3E5FBF1F3EFFFEDFFFDFBF5D01F0E6B3E55063),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[16:9],dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,dina[17],dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:16],\douta[34] }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:2],\douta[35] }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\addra[11] ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized2
   (\douta[52] ,
    \douta[53] ,
    clka,
    \addra[11] ,
    addra,
    dina,
    wea);
  output [15:0]\douta[52] ;
  output [1:0]\douta[53] ;
  input clka;
  input \addra[11] ;
  input [10:0]addra;
  input [17:0]dina;
  input [0:0]wea;

  wire [10:0]addra;
  wire \addra[11] ;
  wire clka;
  wire [17:0]dina;
  wire [15:0]\douta[52] ;
  wire [1:0]\douta[53] ;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:16]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFFF944FE7FFFFDFFFFF7FFFFFFFF50FFFBFFFFDAAAAAAAAAAAAAA88AAAAAAAA8),
    .INITP_01(256'hFFDFFFD44A2A77310024FFFFFFFDFFFF62019FED9F5E1FBFFFFFDFEFF7370FFF),
    .INITP_02(256'h0140156549EFFFFFDFB3F616483C02555127FFFFFDFFFD0C350076209233FFFF),
    .INITP_03(256'h2FFFFDFEFD7321B1050B0C53D3FFFFDFFDF8849C351D590521FFFFFDFFFC460E),
    .INITP_04(256'h25C360503F44BC3FFFFDFFFF52CE40827FF1AE8FFEFFDFFFDCD2633457ED04E1),
    .INITP_05(256'h441FF3FFDFFFFFB0201057E51509AFFBFDFEFF7C64258517D449BEFBFFDFFFF2),
    .INITP_06(256'hFFFFC0815C41F3878DBFFFDFFFFEBDD7455546A76D9FFFFDFFFFFFE2C1834081),
    .INITP_07(256'hE90B47FEFFFDFFFFFFFFA9C834446B54FFFADFFFFFEF819C7F42FB904EFFFDFF),
    .INITP_08(256'hDFFFFFBFFFD91896E22BFFEFF9FFFFFFFFFF882446B9BEFFFBDFFFFFFFFFF54B),
    .INITP_09(256'h695394E92BEFFFDFFFFFFFD5045445405BFEFFFDFFFFFFEFF444687944FFFFFF),
    .INITP_0A(256'hFFFDFFFFFFF74441078E914DEFFFDFFFFFBF34551D0430352BFFFDFFFFFFFF51),
    .INITP_0B(256'h776C0279648043FFFDFFFFFF512679C3EEE85D3FFFDFFFFFF55110D478C901E3),
    .INITP_0C(256'hBB55D4DFFFF455FD9078FAE8BB15197DFFDF4047B580DFAF9FC111BBDFFFCE50),
    .INITP_0D(256'hBFE3C17DAAADBFFF2A408FFF9EF0885BEAF8BFFFE1D279FFD15D765556E6A21B),
    .INITP_0E(256'h5BFFFFFFFCFEFE6C422537EA9BEFFFFFFBD5D555FD994CAEA3A6EFFFBAE9FBCF),
    .INITP_0F(256'hFFFFF411D60AB30BFFFFFFFDFFFBFBD441FAAA2DBFFFFFFFDEFFFEA9401BFAAE),
    .INIT_00(256'h980FE00FE80F680EF00FD80FE00FF80FF80FF80FF80FF80FF80FF80FF80F000F),
    .INIT_01(256'hF80FB80FF00FC00FD80FF80FD80FD80F880FD00F800E68016809B808A809D002),
    .INIT_02(256'hF80FC00E980FE80FF80FC80FD00FF00FA80AC801F007E003D806E80EA00FF00F),
    .INIT_03(256'h07CED7DFFFDF87EDFFBFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFF07FFF80FD00F),
    .INIT_04(256'hFF7FF7EE9F8FFFBF9FFE87BFA7B7471F97AF970770D9C3D84078EF59EFA1E73F),
    .INIT_05(256'hFF8FC73FA7DFA7FFF79F1FA0D7EA8F589F9A67E86FCADFB99FD0C74F97EFA7FF),
    .INIT_06(256'hDFAFFFFFB70FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF07FFFFFFC7FF77AFFFFF),
    .INIT_07(256'hEFEE673FD7F09733E700FF46F786A8206C2024E6DC878188F7D977DFFFCFD70F),
    .INIT_08(256'hFF8FFF4F074B3FE05D3B30AC431A113CFBC467D8A7B8E73AFF85A72F2F4FDFFF),
    .INIT_09(256'hFFFFFF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFF07FFFFFFFFFFFF8FBFEFE7FF8FFF),
    .INIT_0A(256'hAFC637A053207FC05FF473E92458BCD80C4A94B9C808E7E3F7EF97FFCFAFD6BF),
    .INIT_0B(256'h57F0D00C7D7D2CBC6D6C048B3D2B2CFD28C6BF4AA7CAFFF8AF4F6F59EFB37FD8),
    .INIT_0C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFF07FFFFFFD7FFD7FFD7FFF77FEFCFCF1FBFFF),
    .INIT_0D(256'h206763A9E3F940B738E933498B724C15842ACF90EFCFCFEF972FE79FDFAFFFFF),
    .INIT_0E(256'h0DAC36FB8D5DF6DC9A0B0C7C0C5C3D582A78D749A7F9C75017DA07D800FA4158),
    .INIT_0F(256'hFFFFFFFFFFFFFFFFFFFF07FFFFFFEFFFFFAEEFAFAFAEAFEFFFDF079F357DA0AC),
    .INIT_10(256'hEAC9ECC0DC8904798D691C186498A101D79FA7D4CF9FD72FFFCFFFBFFFFFFFFF),
    .INIT_11(256'h266CD51C05EB1E3C5B1C5D1AF57894595FA7044A51882C286308F801E0879041),
    .INIT_12(256'hFFFFFFFFFFFF07FFFFFF6FFFF7DF37FFFFDFD75DCF5FDFFE280B066CB64B861C),
    .INIT_13(256'hBCDAFCB851093219D538C0CA6748DFA3D74FEF9FC7AFFFFFFFFFFFFFFFFFFFFF),
    .INIT_14(256'h75AC1E0B263B74BCA4B4FCE9642960B95D081CA9B559CCC98BF9D4C53C2883D1),
    .INIT_15(256'hFFFF07FFFFFFFFFFFFDFFFEFC76FFFFF67AFEF9F26BCF65C4E0C2D6C260BEE4C),
    .INIT_16(256'hCCF95CA9646828A9E787AAC9F7B0D7AFB7DFFF8FFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_17(256'h263C5D4B9CE0D44993FA65C8FCC9CCB9CC38B06ACB982811ACA0107A3C098C78),
    .INIT_18(256'hFFFFB7FFDFFFAFFEFFFFDE8FBFFD1FCF05DB264B45ECE69B065C3E4CC5DCE6EB),
    .INIT_19(256'hB4B9ADC0D45E79C79F588FE4E7AFDF6FF7FFE7FF97FFEFFFFFFFB7FFFFFF07FF),
    .INIT_1A(256'h82B61C393CA9E42884C934F93C993C99AC61129E5C5F905D3D28A47ADC195498),
    .INIT_1B(256'h476FF7BFFF5FFFFFFFBFDF7FCE31160CD64B368D15CA460CCE7B558CEDCC564B),
    .INIT_1C(256'hCB5E2CAC78F9DF31EF1FF7CFF7BFFFEEFFCFFF2FDFDF8FFFEF6F07FFFFFFFFFF),
    .INIT_1D(256'h6D3AAC78BCC8D408A469DD797C73D85F982F5DBF1C28DC797C48F4B824A92C6E),
    .INIT_1E(256'hE7EFFFFFCEFFA7FF3DB1ED9B862C7DAA766DFE2C568B259CFEAB6DDCA0A29408),
    .INIT_1F(256'h8C58DAF3BFBFFFDF67EF9FEFF7FFCFFFDFFFFFBFFF1F07DFFFFF97FFFFFFF78F),
    .INIT_20(256'h7C59B4798CAA8C4880BAFFFF9FBF663FCCBF3D385CB9B4FA6CEA284F475FDB9E),
    .INIT_21(256'hD7FFEF9F904E1E7C55DCB60C35FBB6EB2DFDFEAA3E4A25F95BD934485C283CDA),
    .INIT_22(256'hBFBFFF7FE7FEFFCFFF3FCFEFEF9FFFBFBFFF07FFFFFFAFFFFF2FE7FF9FEFCFCF),
    .INIT_23(256'h74680C19B919A709F7FFFF3F74CFB490247904B8B468FFDF7F5E668FB4B9A010),
    .INIT_24(256'h28DF3D21263BD5ACB66BAE6C7D6D7E5A95F4A678194354B9056A9CB89C792CF9),
    .INIT_25(256'hFFFFEFCFDFFEFFFFEF9FE7DFE7FF077FFFFFFFFFEF5FFFFEF7CF9F3FFF9F2FAF),
    .INIT_26(256'h9519A778B74FC7EF07F0CCE934695D49BD085F6AD7F0B7FF44CAD16EF74F5F7F),
    .INIT_27(256'h1676FE4B75AC9D6C765A45FC35FCBC24C44A043924A88D0A84396C39CD59B4E9),
    .INIT_28(256'hBFDFF7BFBFFFFFDFFFCF07CFFFFFDFFF77FFAFDFFFFFDFEFDF3FF7FFFF5FEE5D),
    .INIT_29(256'hFF465F6CDF80E805AC997C6834B93F74E7B047AF0C69B88FF7AFFFEFEFBE67FF),
    .INIT_2A(256'h05FB76EC6E3C6DEC6A8B5C60B17864890508FC489418CC0994D9AC98346AC42A),
    .INIT_2B(256'hAFEFE77FB7FF07FFFFFFFFFFFFBFDFEFEF5FFFFFCFBFFFBF97EF10FFC5DF262B),
    .INIT_2C(256'h98B0B4B454D9CC5954F90568F87197C1DD88971FDF7F47EFFFF3EFDDFFCFF77F),
    .INIT_2D(256'h05EB8EDD3EDB5AD3C5B96C684CC97D07B4F1D4213C9714294C591C682F852FFE),
    .INIT_2E(256'hDFCF076FFFFFBFFFDFFFFFFFF7BFD7DFF7FF9F9FFFFFFE2E932EED8F4E4B3E0B),
    .INIT_2F(256'hDC6EACA03C97CAA1880E5FFEC429A7B3E724C7BF9F8FFFFF8FDFFFFFFFEFFF5F),
    .INIT_30(256'hD51CE07C74BAC489E4D9E499CCF9CC68DCA9B4782528CD992B314E5D285E923F),
    .INIT_31(256'hFFFFE7FFFF7FC7BFC7FFFFEFD7AFFFEF773F2FFFFFFF8D2F9DDFE696A67CF60A),
    .INIT_32(256'hD4501C71409E901EE4B937869745D7C2F183AE3BFFFFB71FDFFFFFFFFFFF07BF),
    .INIT_33(256'hD4C0F4E99489BBC850C9F897439164B1D461BC40EA906F56B09F0A5D542EF4BB),
    .INIT_34(256'hFFCFFFFFFF8FFF8FFFFFFFAFFFFFDFEFE75FDFFE251F153F2DC8164C1DEC01AB),
    .INIT_35(256'h5F3DEF817429C9C86A69B72FEFAFFFEFFF5FAFFFBF6EFFBA97FF07FFFFFFFFFF),
    .INIT_36(256'h1CE9D42AF478CCA88CF6C48F6CC32CA02071D6D897DF4F6EC71F10AEABEE58AF),
    .INIT_37(256'hFFFFFFFFFFFFFFFFFFFFE7FF7FBFEFCFD7BF7B4F6E2F2D5FD6205E30D504DCA3),
    .INIT_38(256'h3CD9E3E9C29589DEE96FFDDFEFFF67FF675F9F7FFFFF072FFFFFFFFFFFFFFFFF),
    .INIT_39(256'h4CA96BEA9090901D388FC0D0485093410FA09E2007903D81A02FE85E87BFB7B9),
    .INIT_3A(256'hFFFFFFFFFFFFAFFFFFCF87FFF7DFFFAFE4FF66DF3E5F15AFC0BF94AF2CB53C37),
    .INIT_3B(256'h5CCFE78FF71FA7DFFFFFFFDFAFCECDCFFF3F07FFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3C(256'hDBD8872E212F507EC08704966F2147109730BF0F6F7ED74DB6D0B009EC639C7E),
    .INIT_3D(256'hFFFFD7FFA75FC7FFCF0FFFEFEFFFCFCFF8CFF07FAA2F918FFC2EA5504C781C98),
    .INIT_3E(256'hFFCFC7EEA74F4FFFFFFFFF5FB79E07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3F(256'h0F0EF84D38A5C088580930D0808E082EE77E37DAFFA0846F446FB4DFD23FBFBF),
    .INIT_40(256'hD7AEF74FFF8F9F9FC7FFEFDF9F9FEFFFCFEF575F722E7BFF6C404D93183096B0),
    .INIT_41(256'hDF8FFF4FFF9F2FFFFFFF076FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_42(256'h33FD9B71708248BF506F07001F1756C4806FE4FFF90FE78FDF6FFFAF677FDFFF),
    .INIT_43(256'hBFEFEFFEEF3FF78FFFDF873FFFDF7F9EE7A150EADCF944D81499473AD720CF1A),
    .INIT_44(256'hE7FFFFFFCF5F07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF57FFFFFFFFAF),
    .INIT_45(256'hB43FF8E23F98AFA81F09DD39E0A8C70FDFCF87FFFFCFFFBEF7FFFFCFFFBF87BF),
    .INIT_46(256'h9FDFEFDFA7EFFFFF3F0E8FF82FF99FC818A9C1B9488978287787DEAABA916C6D),
    .INIT_47(256'hC7FF079FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFAFD7FF37FFFF7F),
    .INIT_48(256'h0FF99874BB587239DFB8BFCAC78EFFBF770F9FFEFFFFFFEF9FFFFFFFCF0FEFCF),
    .INIT_49(256'hFFDD0F413FF8CF7928198D58CC38BC394C89FD9928F8FDE98EB8C87949D96768),
    .INIT_4A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFA7FFDFBFFFAFA76FDFFFE73F),
    .INIT_4B(256'hDC3A2C7774E97FB9D77AF78E77FEF7EFB73FFFFFBFFFDF3FFFFF8F9FEFDF078F),
    .INIT_4C(256'hF719E47964996C59B41AC4978C796499D3F84D58B8F7AE1A7F98A9996CC86412),
    .INIT_4D(256'hAFFFE7FFEFFFDFFFD7FFFFFFD7FFCFFFEFDEDF4FC7BFFFFFBF4EF7BFDFC71FF8),
    .INIT_4E(256'hAC5B05E837F977A5FFEFF7EEEFEFDF6FAFFFF77FB7BFFFFFEF1F07DFFFFFFFFF),
    .INIT_4F(256'hC4C954C8F4D8B469A4885C1A14C9B4A9749C1C7C845944F80C521ADDF4C0BCB9),
    .INIT_50(256'hD7CF9FDFFFBFC7AFFFFF57AFEF9FAFDFDFBF278FFFFFEF7576E780B8AC398CE8),
    .INIT_51(256'hA509FF6A37E0D7FFA7EFAFDFF7BFF75F8FEFBF6FFFFF07DFFFFFC7FFFFFFCF5F),
    .INIT_52(256'hF5A90BE904699C48CCB97C2D636EA5EE64313402A48E191FA53883E86C788459),
    .INIT_53(256'hDF3FCFFFBF8FEFFFA7AF9FDFFF5FE7BFFF43FFF953DAC4E95408A4596C184C88),
    .INIT_54(256'hFFFAAF6DFFAFF74FFF5FA7EFFFEFEF1FCF7F07FFFFFFE7FFC78FC7FFD79FA7AF),
    .INIT_55(256'h6419ED08CC30649D7EFF8ECE3C4D04CEB96D364E10384C48D509DCD904093247),
    .INIT_56(256'hF79FE77F8FDFB74FBF3FC7F1BFC82AF9D3F85CA8FC897CA85C49A4D59C98E4E7),
    .INIT_57(256'hD75FAFFFEFEFDFFFC74FDFFFFFDF079FFFFFD7FFCFCFFF8FF78FC7AFBF4FF7BF),
    .INIT_58(256'hBCDDCE9D1FCEE7FF001FF17E1F0F577E146A942AAC989CA8DCB9550AA068CFF9),
    .INIT_59(256'hB7CF871FBF6A7F78D1896C796559ECA95CB7ECF0ACFF54B0CC4AE43A74C85CCA),
    .INIT_5A(256'hDF5EEFDFE7BEAF8FD7BF07FFFFFFBFFFFFAF979FD7FFCFEFEF8FBF7ED7EFD7EE),
    .INIT_5B(256'h979E9F3E4ECDB70D6EEE173D74A96C2F7C29EC5824382BB9EDA88649D79AFFAF),
    .INIT_5C(256'h4F09E078C4F98CA9A4DAF4C96CDF84BD44DA425A14A86B981CC9FCEDC8BF3E7D),
    .INIT_5D(256'hDFDFDFCFFF5F07AFFFFFFFFFFF7FB7FFFF2F9FAF6F9FFFDF5F7DDFA2BFAA4768),
    .INIT_5E(256'h8F3F679EDF6EB7DE8D24EDEF44DE4CF3FCD84D49AC594CD9AF0827A9FFF01FBF),
    .INIT_5F(256'hB4C94C81C41FFC4FFBEE00D10F08688A5589F52984D0C53EF6FD269F5F7EFF2E),
    .INIT_60(256'hDFB307FBFFFFBFFFCFFFFFFFC76F9FFFD739EFD737FB27B827B98F797D899499),
    .INIT_61(256'h77CE36BFAC60771FF4DE7C8FA49E8CF5949974599D996759A749FFF7FF399FB4),
    .INIT_62(256'hAD9F5C8FE7F55EF72D09CD1994D944A87CEFFE0EAF8D56EE074EA7BE66FE2E1E),
    .INIT_63(256'hFFFFE7FFCF7FFF9F97FFB78FDF32D7A706D7B9618549E449CC19CCF98C29DC6A),
    .INIT_64(256'hEA614F5FFFEF21EF8CFF8C4ECC1EAC29C4E9DC39C8C8874A67F9D7F1AF3807B7),
    .INIT_65(256'hA7B9C8C9D4B895593499942C708EF7FE3EFF7F5D47AE5F0E5F4E17CD8F5F2FED),
    .INIT_66(256'hCFCFFF9F97FF472FE468E3B9C5A9A408CC79B407B4C8A498049AC010CFBEF758),
    .INIT_67(256'hDF9FEFFF7F4F5A1F841E9C989C582C8A1CB9F398AC0A6AC8F9AA0552FFFFCFFF),
    .INIT_68(256'hC499BCA71C2B7C6F3F2EA7EEC6EE277E6FFE2F8EE7BD9FBFAF2EB71FC05BFFDF),
    .INIT_69(256'hEFFF6F2EF98FA3C76BCCA88FBC4F1C9F346F44603C484D073F81A79AFAE84B49),
    .INIT_6A(256'hFFDF17FF0FBB4C096C36BC3F345E253C5CE170501CD003FFEFAFEFFFA79ED79F),
    .INIT_6B(256'h847E463E5FFD2F7E574E7E8E4F4E97DFBF5E36CEBF3DBE5EF86FF78E87FFEFBF),
    .INIT_6C(256'hDCD52CFFD44FBCDFCC5FDB7F443F346FE58EB875779A5C77DC49D4F8AC998480),
    .INIT_6D(256'hCF2F6C1FDC9F35DF647FA46F054E14BFD5EF013F97FF37DFC7DF874F6FABFFD3),
    .INIT_6E(256'h578F57BE1F5E07AEB7FE6F9D062EF77F3F6FEF70357FFFFFCFEFF70F97DFE7FF),
    .INIT_6F(256'hBE59D7A4A77D9F9EDFBF688EFC6813CAB87885EA44B9A4B944A87B5F1D0DDF0F),
    .INIT_70(256'hFBDFCFBFFF6F66CFF04FF80FD82F07AEFFEFB721FF61D786A70DE7D9AFF1ABB8),
    .INIT_71(256'h6FAE473E9F0F676E87DD970F66EEF77FDFDFBF6FC7FF979FF7EFB72FB5CFE49F),
    .INIT_72(256'h5FAAE74A1F381FB907D13AF80D2A8378AC0A6C89BC40B88D8FFF8F3D2EBE17AE),
    .INIT_73(256'hEF9FE7FFDFCFDFEF7FFF07BF8F5FBFFE076F8FFFB5AF914F1ACF875F575FF770),
    .INIT_74(256'h578EF63EBFCF170DA724A0CFCFEFFFBFD77FCF8FFF2F9FEFDF6FB76FDFCFAFFF),
    .INIT_75(256'hBFCBEF3B2C390D0874792518E4080459E4D19F7FFE7E471E0F1E6F5E0F2E97DE),
    .INIT_76(256'hFFCF9FBFEFBF07FF672FC01FF87FFB0FAE1FD46FF82EB43F440F12AF0EEE4FBF),
    .INIT_77(256'hBEEE2F72FF20D74FF74FEF9FAFFFE7AFB79FFFFFD73FE7BF976FF7BFD75F97DF),
    .INIT_78(256'h48D8F4597D183CE985499CC9800976CE0F3E3EFE4F8E471E3FDE2F1F1F2E8FAD),
    .INIT_79(256'hCF3F07DFFFFFDFCFAF8FF7FFFFFF375FCFAFC7FFD76F208FFD2FFD1FA49FBC7E),
    .INIT_7A(256'hAA54C7FFAFAFDFEFFFDFB75FF7CEEF6FB7FFF7AFE7CFBF2FDFEFFFAF8F2FFFFF),
    .INIT_7B(256'hF4E99CF99C78840A5838570827EE471D477D0F9E8F8E477EFF5F7F30171A7679),
    .INIT_7C(256'hD78FEFFFDFBFFF5F8FEFFFFFC76FD79FC78FDFAFDF4FF7FE65FF1D45DC782C98),
    .INIT_7D(256'h878FE75FFFBF77FFF76FA7EFFFDFFF6FFFEFFFCFFF7FFFBFFFFFFF1FFFFF079F),
    .INIT_7E(256'h3439343974084FB987A9E74567854F8B07178711378916F9EFF81929F0E9D75F),
    .INIT_7F(256'hD7DFBFBFF7FFBF1FC7FFB78FFFAFEF8F6FBFFFBFAFEF7FC06C39BCB98C5864E9),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[16:9],dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,dina[17],dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:16],\douta[52] }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:2],\douta[53] }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\addra[11] ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized3
   (\douta[70] ,
    \douta[71] ,
    clka,
    \addra[11] ,
    addra,
    dina,
    wea);
  output [15:0]\douta[70] ;
  output [1:0]\douta[71] ;
  input clka;
  input \addra[11] ;
  input [10:0]addra;
  input [17:0]dina;
  input [0:0]wea;

  wire [10:0]addra;
  wire \addra[11] ;
  wire clka;
  wire [17:0]dina;
  wire [15:0]\douta[70] ;
  wire [1:0]\douta[71] ;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:16]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFF7DEA2FFFFFFFBFFFFC13FFFFFFDA8BFFFFFFFBFFFFFFFFFFFFFF46FFFFFFFF),
    .INITP_01(256'hFFFBFFF6FFA7AB2103AA8BFFFFFFBFFFCAE7A3FF40507AFFFFFFFBFFFDAAA2FF),
    .INITP_02(256'hA7AAA8CAAA8BFFFFFBFFFEEFEFA3A818AA89FFFFFFBFFFFFBEFA8AA38E0CBFFF),
    .INITP_03(256'hCBFFFFBFFF6EEEF3AAA2FEA89CFFFFFBFFFEBBFB2AAA82AAA32FFFFFBFFFFFEF),
    .INITP_04(256'hAEF32AAAABDAAFCBFFFFBFFFFFEBAAAAAAFFAAFCBFFFFBFFF6BBEE6AAA2FEAAF),
    .INITP_05(256'hEA0AF6FFFBFFFFFAFCAAAAA34E86EFFFFFBFFFF7BEDEAAAAB6AA2EFFFFFBFFFD),
    .INITP_06(256'hFFFFFEF2A8400FF0BC52BFFBFFFFFDFBEAAAA2FD1BC3FFFFBFFFFFEACA843A34),
    .INITP_07(256'hF542F62FFFFFBFFFFFFFFF5E2D000BFA3FFFFBFFFFFFF41AA342BFFDAAFFFBBF),
    .INITP_08(256'hFBFFFFFFFFF6AA292D1FFFFFFFBFFFFFFFFFF40B78BF2FFFFFFBFFFFFFFFFDAA),
    .INITP_09(256'hA8EA3A88EAFFFFFBFFFFFFFDAAAAAAA8EABFFFFFBFFFFFFFFFAAA32DAAAFFFFF),
    .INITP_0A(256'hFFFFBFFFFFF6AAAAAAF4BEAA2FFFFBFFFFFFD7AAAAABE26A8FFFFFBFFFFFFF7A),
    .INITP_0B(256'hAABEAAFFFFEEAAAFFFBFFFFFEAA19AABFFFEAAABFFFBFFFFFDAAA8CE2FFFEA8E),
    .INITP_0C(256'hFFFAA88BFF45AAAB5EABFFFF6FDEA8C6BFFCEAA8BDAA2FFFF7DAAA2FFBFFFDAA),
    .INITP_0D(256'hFFFDCE8BFFFFFFFFE3F42BFFDFFD86A8EFFFFFEFFFAAA8BFFEA8E8BAAAFFFFF6),
    .INITP_0E(256'hF7FFFFFFFFBFFFDAA2AA2FFFFFFFFFFFFFF90F28FFEAAAFFFFFDBFFFFFFFBFC3),
    .INITP_0F(256'hFFFFFDEAAABFFDA3FFFFFFFFBFFFFFFEAAAFFFFD2FFFFFFFFBFFFFFEAAA2FFFF),
    .INIT_00(256'hF5D7E7EBF9CFFBF3DBF7FDB7F7FBF9EFFFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFC),
    .INIT_01(256'hFDD3FFFBEFFFFDDFF1FBF7E3FFEFF7FFF7EFE3EFF5C7E1E81BC1DA342EB7EA5F),
    .INIT_02(256'hF5FFFFEBF1FFE7E3FBCFFFF7F3FFF5E7FDEBEBFBF3D7FDE7F9FBF7F3FBEFE9F7),
    .INIT_03(256'hF9F7C1F3F583FFEBE1FFFFC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFE03FFFF),
    .INIT_04(256'hE9CBFFD3FDFFE7FBFFCFE7FFE1CFE9C3D1D025A2244A1D4A31385163FAA3FBF7),
    .INIT_05(256'hFFBBFFFFF1FFE9E3E9D3FDD247F8358DE26866C5D8CFDAB3F7B7E7EFF1CFE5E3),
    .INIT_06(256'hF5FFB7EBFF6FEDFFFFDBFFFFFFFFFFFFFFFFFFFFFFFFFFFCFE03FFFFF1FFDDE3),
    .INIT_07(256'hF797FBEFD9F7F5B1E5EBF8CBFFF1FDFE2AFA1B5609363710216FFC43DDFBFFBB),
    .INIT_08(256'hE3F3FFC7FFFC01FE4E02179E4D2E119A45223F88197FE833F9D3FFF3E9FFCBD3),
    .INIT_09(256'hF5E7FFEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFE03FFFFFFFFFFFFEFFFF9DF),
    .INIT_0A(256'h1FF46A3C0CD5D419DEA816BC1C2DC839EE9202DE2507F34BF9E7FDF3E5FBF3CB),
    .INIT_0B(256'h6FE415DE742B9FEA4B3F9B9581360E020B1E4B15AF97E85FFFD3EBFFDBD7FBB4),
    .INIT_0C(256'hFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFE03FFFFF5FFF5EBF5EBFDEBFBFBF3F6),
    .INIT_0D(256'h100008219812383211720F224D1E239A13446127F2C3FBE7F3F7E5E7F9CBF7F3),
    .INIT_0E(256'hA91B83538D06631A7DC7A7F9C34E42864F860B9FF51629E8715204E1C1080080),
    .INIT_0F(256'hFFFFFFFFFFFFFFFFFFFFFFFCFE03FFFFFBFFFFF7FBFFEBF7EBD7FFD401FF8C03),
    .INIT_10(256'h2571FB4A3AF63774416DA2824644198FE833F5D3E9EBF3D3F5E7FFEBFFFFFFFF),
    .INIT_11(256'hA1DB8942751381EB8702170E172E3D2E2578174A402E15824B2A1995FF3238FE),
    .INIT_12(256'hFFFFFFFFFFFFFFFCFE03FFFFDBFFFDB7CDFBFF9BF5FFF3EBB7E78B6F81166D03),
    .INIT_13(256'h201E2F423F5E157E0D28351BF06999E3F633F5EFFBEBF1F7FFE3FFFFFFFFFFFF),
    .INIT_14(256'h7B139DF7873A490E1D922939FF5258FE19B21732072C2D0DF25822E634440F6A),
    .INIT_15(256'hFFFFFFFCFE03FFFFFFFFFFFFFFFFB1FFFF63D9FE7BB389F67D1393FB8B278916),
    .INIT_16(256'h231E33461766592E0BB07917EAF3FDD7F5FBEDEBFFDBFFFFFFFFFFFFFFFFFFFF),
    .INIT_17(256'h79E389F19712262E354E256A194A3F32337E33662D65B35A0A642B1644560F8A),
    .INIT_18(256'hFE03FFFFEDFFF7DBEBEFFFD7F7FFEFEF87DF810F89039112792381F38F02711E),
    .INIT_19(256'h156E2D29EB5A34D41F6BE63FE3CFF9C7F7F3FDEFF9FBE5F3FBCBFFF7EDFFFFD8),
    .INIT_1A(256'h15F6202A47420F8E391E21720D424F1A0F9C2B1C0456560A25AE0F4A291E3752),
    .INIT_1B(256'hFFFFD1FFFDA3FFFBBFFFFF7E77FE73EF85E6750B8DEB851B910A732395E67B28),
    .INIT_1C(256'hCA11F3960AE59F17F63FFBEFFDF7FDFBFFFBFFFFFFFFF7FFE3EFFBC4FE03FFFF),
    .INIT_1D(256'h25521B4A2B362F56355E29683753DE6FF7BFA7EE174E472E378E1F6E3D3C097B),
    .INIT_1E(256'hFDFFF9FBFFF3F3FC29E78E527B1FA1F65F439DBE7F3B95FF892A7F11DBFE28B6),
    .INIT_1F(256'h3720236FF647EFEFFFDFD9FFE7B3FDCFF3FBF7E7FFEFFFFCFE03FFFFE5FFFFCB),
    .INIT_20(256'h0F2E1F1E2D3E23586347E0C7FFC3E7FE19CE33320F66171E2D2FDB5BCBB79196),
    .INIT_21(256'hF3CFF5E43BEA647787CA550FADAB8D5A6D1B8BDA7F178FFC491E16924D2E179A),
    .INIT_22(256'hE8DBEFD3FFDFF9FFFFF3FFFFF3FFFBE7FFF7EFFCFE03FFFFEBFFFFD7F9FFE7F3),
    .INIT_23(256'h4B4E1D96433BEF87E9DFFDD3FFFA1DFE2D3A495A4193ED83FFDBDFFE19BC6D33),
    .INIT_24(256'hCBFF8B978F17891E75126DEBABDA5F565FBE25BE294A0752150E412A2782274E),
    .INIT_25(256'hD7FBFFAFFBFFF7F7FFEFFBFFF9F7F9F0FE03FFFFFFFFFBFFFFF7FDFFE7FBFFCF),
    .INIT_26(256'h2D66255BE94BEDD3F1D801E232020D66171BEF2FD7DFF5AE2DE8115BF423FDEB),
    .INIT_27(256'h7A7F85F67F0B9DFFA73A5D4D91BA0C206F1A30DE41620982231221461B423336),
    .INIT_28(256'hD9F7EFB3FDDFEFFBFFDFFFFCFE03FFFFF7FFDDEFEBBBFFD7F7FFF7EFFDEC3FFA),
    .INIT_29(256'hF11BFFE017FE362E3B6E2B761F564D3C0F9BF81E51F3C3A3EF87FDDFFFFBFBFF),
    .INIT_2A(256'h89E381125D039BBB9B359B3656362DAE195A41323F82257E334A25662B4A0D57),
    .INIT_2B(256'hFDFFEBFBF9D7EDF0FE03FFFFFFFFFFFFF7FFFBEFFFF7F3FFFFE7A5FDC54A708B),
    .INIT_2C(256'h0B15A6162C4E155A33299564002BFE0225FFF74BE5EFF7CBD1EFFFA3FBFFFFF7),
    .INIT_2D(256'h8F27811E63000FC6161E312E1B6213361F262D3E355A0F6A451E5389C7A78A8C),
    .INIT_2E(256'hFFFFF7FCFE03FFFFEFFFF7DFFFEFFDFFF5FBFDEBE7FBFFCFFFFE65FE7BCB93F7),
    .INIT_2F(256'h2416374A2B6E0F54331C22661647F12FE9E3F9D071F3A6E3FF4FE3FFFFC7FFFF),
    .INIT_30(256'h7D5075FA38EA1D723139F96038F03271F26636E62D6E0959B313CA6413958A26),
    .INIT_31(256'hFE03FFFFF9FFFFF3F1FFF1E3FFE3F5FFFFEBDDFFCBBBFF9663FE67C679CFA9F2),
    .INIT_32(256'hFC2834FBC66BD18E25A079498CF3E41BF5CBFDEBEBFBFFD7EDFFF7DBFFEFFFFC),
    .INIT_33(256'h410E35823D6A257A2F4A155E3F2A117E192235302F6BBA5FDB77EDB7C3D81585),
    .INIT_34(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFF9EFF7F1C9EF84924B0B8597870A),
    .INIT_35(256'hD657D7AE3BADDD75B2B85A646CB67ADBFFF7FFFFEBFFEFD7FFDFE5FCFE03FFFF),
    .INIT_36(256'h376A076E350DFD6832F8226430441A600A35C817F493A5EBD34A71A405E02A0B),
    .INIT_37(256'hFFFFFFFFFFFFFFFFFFFFFFFFF9FFDFF3FBBFF5F61FEB9B3F8B36751417EA342E),
    .INIT_38(256'h2C420F5A391FF173E3E3FBC7FFF7FBFFD9F659B3E7B3FFCCFE03FFFFFFFFFFFF),
    .INIT_39(256'h0F96131DDB27E4B465C80EC8301E1263E527C3CBE787C1CFCF83E99FBBD02176),
    .INIT_3A(256'hFFFFFFFFFFFFFFFFEBFFFFD7E1FFFDC3FFFBF9FC19F00E31841C700A24E24B4A),
    .INIT_3B(256'hA777D64FF9AFFDF3E9FBFFD3FFFFEBFFF3D7FFE4FE03FFFFFFFFFFFFFFFFFFFF),
    .INIT_3C(256'h07A7B60FE16C09C01410302800601A0010342423EE4BDBDFF5B62DEA2D5A3B59),
    .INIT_3D(256'hFFFFFFFFF5FFE9EBF1D3F3E3FFE7FBFFF3F7FFE7FDFFEBF9A5D5FE4A28FE5350),
    .INIT_3E(256'hEFEBFFDFF1FFE9E3D3D3FFA7FFFFEDFCFE03FFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3F(256'hE58FC3C9FF85CEFC309C16600C2FE01BC3C3B9840D723E18617FD0C3EDA3F5DB),
    .INIT_40(256'hFFFFF5FFFDEBFFFBE7FFF1CFFBE3E7F7FBCFF3F7D5E41DAA1E3A1B3E1337C727),
    .INIT_41(256'hF7B3F7EFFFEFFFFFCBFFFF94FE03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_42(256'hB36A0C6627181D4FD23BD5A7C1AA4780158FE02BF9C3FFF3F9FFF7F3FFEFD9FF),
    .INIT_43(256'hFFFFEFFFFBDFFBF7FDF7FFFBE1FFFFC3DFFFF9BC15F0762810EC0423D00BB5A1),
    .INIT_44(256'hE1FFF9C3FFF3F3FCFE03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5FFFFAB),
    .INIT_45(256'h5A5FECB7FFD80FFDEA1D86D7F60FF9EFF1F3F7E3E1EFFFC3FFFFFDFFFFFBFFFF),
    .INIT_46(256'hFF9BE7FFFBCFE9F7FFD3CFFC239E4A462796074E310E53601FA65C3FB7B82F6C),
    .INIT_47(256'hFBE7F1F4FE03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFF5EFCDEB),
    .INIT_48(256'h18A6033227062F4E1D5FF73BEFEFF1DFFFE3DDFFE7BBFFCFFFFFE7FFFFCFF3FF),
    .INIT_49(256'hF9EFFFF3C3FE0F86331E0B66231633462F66135DFF264AFC3F97A27FF34453E6),
    .INIT_4A(256'hFE03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFE9F7F7D3FFEFE9FFF7D3),
    .INIT_4B(256'h183637320B6E5D17DFBBF5BFFDEBDDFBFDBBEDFBFFDBEFFFF7DFFFEFE3FFFBC4),
    .INIT_4C(256'h066E3D0E397A19721B322D36315A236219463532136A2F262B5E1F562B3D9B56),
    .INIT_4D(256'hFFFFEBFFF9D7FBF3F7F7F5EFFFEBF5FFF3EBFBE7F7F7F1EFFFE3EFFFBDDC377A),
    .INIT_4E(256'h2EFA2B5E4157CD83DD9BFFBBFDFFFBFBF7F7EBEFFDD7EDFBFFDBFBFCFE03FFFF),
    .INIT_4F(256'h235631465561FDAA2CFA295A1752052DED0A5CDA07BA210E114043224685FD8E),
    .INIT_50(256'hF3FFF5E7E7EBFFCFF1FFFFE3D5FFFBABEBF7F7D7C9EFFF91FBFE1CF6213A2B42),
    .INIT_51(256'h2135A943FE53CDFFF59BE9EBEBD3FDD7FDFBE3FBEFC7FFDCFE03FFFFF1FFFFE3),
    .INIT_52(256'h13363D26037A41062782334F9F67993E293219504D33A8980752280E61521BC2),
    .INIT_53(256'hE9EBF7D3F3EFEFE7FBDFE9F7E7D3FFCFF9FDBFF1FE7E14FE312A1562292A1B52),
    .INIT_54(256'h0D83FE1BEBFFFFD7FDFFFFFBE9FFFFD3FBFFF3F4FE03FFFFF9FFF1F3F1E3F5E3),
    .INIT_55(256'h394E19723B33B377D967DFB023BC4E47C09FEF820DDE051A130A3526376A416C),
    .INIT_56(256'hFDDFFDFBF9FBE3F3EDC7EFD871DE2EE24B5E3596176A3F2E1F7E173E292E2752),
    .INIT_57(256'hF353F5E7EBEBFBD7F7F7F1EFF7E3FFECFE03FFFFF5FFF3EBFFE7FDFFF1FBEFE3),
    .INIT_58(256'h173BAE2FF35FC7E7B98FC173BD83C77A158E052A250A2B4A2755F74E54EFA9AB),
    .INIT_59(256'hF5EBEDEBE1D82FC21E5E353E1B6A19363B3217763B2DAB761455F32A38E61D70),
    .INIT_5A(256'hFFEBF7FFFBEFF9F7EBF3F5D4FE03FFFFEFFFFFDFE5FFF5CBF3EBFBE7EFF7F5DF),
    .INIT_5B(256'hCF67E59FE7CBD3CFEDA7DBDA45B65D8A1BBA1F363B3E49760B923B17E177F5C3),
    .INIT_5C(256'h51DE13A23926317223622945FD501AFBE03411C2502245A21B8A4737BF8FB37F),
    .INIT_5D(256'hC7FFF78FF7EFFFECFE03FFFFFFFFFFFFEDFFFFDBE7FFDBCFFFB7D7FFF7AFEFEE),
    .INIT_5E(256'hBFAFA37FD947B7B22D6FE35A3BC6117613223F26137E2B265357EBA7C9D7FF93),
    .INIT_5F(256'h253E2D4A535A31A7FF63BFFE417E43821B8615363D2BA17BF143BDE3C97BD793),
    .INIT_60(256'hE7FFF7CCFE03FFFFEFFFF3DFFFE7F1FFE7E3F5CFBBE84D76489A099223121F46),
    .INIT_61(256'hCBB3DD958DBBEA1BDDD47DBA1EFA293E235225461D4A2738194FE833FFD3FFFF),
    .INIT_62(256'hF647EBEFD7D439AE16724B2E33962564114BDE23BFBFEB7FD5D7C1ABE983D9D3),
    .INIT_63(256'hFE03FFFFF9FFF3F3FFE7E5FE2DC9F75A74EE01EA2F02215E3942337233642367),
    .INIT_64(256'h0BC7FA17D3F7FFA7C9FDA392224633462B6631563761F36E20E5994074326AE8),
    .INIT_65(256'hBDE5E87A32D23566256A0D4BE51BDDCBBDBBCF7BDF9FD1BFD7A3D7AFC5AFE388),
    .INIT_66(256'hF3FFF3E7FFE7E5FC51C9F8A1F8F030F2286233522D662D5A295A4153F183F3E1),
    .INIT_67(256'hFFE3F7FFFBEFDFF7D7BE21AE2742274E0B4E47163D8C2B7A1A55FF34F403FFEB),
    .INIT_68(256'h137E31262F63875FDF0FCFBFE99FB1D3C963DB93CBB7B997E773ABCC2D57F05B),
    .INIT_69(256'hF5D3FBEA1BF63F36297E1B522B35EF5606DE0D0E51180FA3D21E0FA6291E3F52),
    .INIT_6A(256'hFBC3FFF7C5FE038A13065B262FB60D5E491A17925D2C47B8FE03FBFFFBF7E9F7),
    .INIT_6B(256'h60D7E1C3D1C3D7A3CBAFD597DFABD3BFA5A7EF4BCDDFEF9A6FDFFFDFFDFFE1FB),
    .INIT_6C(256'hFFB5F7FF8AEFF517EFEBF3DFF7E411EE0C21F9182EF25C5E17BA372E356DEB6A),
    .INIT_6D(256'h79CA33F1DB67F6B7CDEF9998293000500403F408FC03E5FBCDCBF19BE1E3DBC3),
    .INIT_6E(256'hB78FD56FD5ABC7ABC18FED83DBDBC1B7BD83CF7BFB9FCDF7FF9BF3FFFDE7E5FA),
    .INIT_6F(256'hEBD7EFD7F5DFE9EBE7D3F7CFDBEDBFB6447DEF8A20DE114229201153DE23C7BF),
    .INIT_70(256'hF9DBFFF3F3FFFFE7D9FFFDB3FFFBF7FCEA03FFD7EDFFFFDA75FC69E9B8D3EA73),
    .INIT_71(256'hC597DB8BD1B7A7A3D94FE1B3E5C019CBFC33F7FBEFEFF1DFE5E3FDCBEDFBEDDB),
    .INIT_72(256'hBC2BD77BF9AFC7F2078E410E0F82431E21862B421B57EF37AFDFE35FE3C7CBC7),
    .INIT_73(256'hEBEFFBD7F9F7F7F3F7EFDFECE40023C82E45C05FA2822D44255A064A210D9543),
    .INIT_74(256'hE587D5CBBDABEF7BC5DFE98BE9D3F3D3FFE7F5FFF3EBFFE7E7FFF7CFEDEFF7DB),
    .INIT_75(256'h13862F243B5E0A7643161D86493A39900173B803E773BFCFD17FC3A3DB87C3B7),
    .INIT_76(256'hE5EBFFCBE7FFFBCCFE03D9FFF1B3FFE3FFFFEBFFF5D7FFEBEDFC11DA4422438A),
    .INIT_77(256'hE38FAFC58B5FFE17F5FFFDEBFBFBEBF7F9D7EDF3FFDBF5FFF9EBE5F3FDCBF5FB),
    .INIT_78(256'h2FD2135E3D261F7A0F3E211C2743E04FDDC3C3BBCF87D39FD1A7CFA3CB9FC797),
    .INIT_79(256'hFFC7F3FCF003FFE3F7FFEBEFFDD7FFFBCDFFF39BF1E7F5E3C9EBFF927FFE69FE),
    .INIT_7A(256'h1C8BEA3BF1D7EBE3F7D7FFEFEDFFFDDBFBFBEDF7FDDBF9FBEFF3F7DFFFEFE3FF),
    .INIT_7B(256'h0B6E3D16277A274E214FD743D5AFC9ABD193D1A3C3A3E387D1C7BFA3DF7C45BC),
    .INIT_7C(256'hFE03F5FFFBEBF7F7FFEFE3FFFFC7F1FFF5E3F1EBF7E3F7EFFDEFD9FA07B2370E),
    .INIT_7D(256'hF5FBE1EBF9C3FFF3DDFFFDBBE9FBFFD3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC),
    .INIT_7E(256'h19464D320D9A1D1BD33BA1A7B943D973D3B3C1A7E1800DC2441A3B898777FC0F),
    .INIT_7F(256'hF9FFF5F3EFEBFDDFEFFBF1DFEDE3FFDBFBFFDBF7FFB5ABFE1E561B3E2F36235E),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[16:9],dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,dina[17],dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:16],\douta[70] }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:2],\douta[71] }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\addra[11] ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top
   (douta,
    clka,
    addra,
    dina,
    wea);
  output [71:0]douta;
  input clka;
  input [11:0]addra;
  input [71:0]dina;
  input [0:0]wea;

  wire [11:0]addra;
  wire clka;
  wire [71:0]dina;
  wire [71:0]douta;
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
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "0" *) 
(* C_COUNT_36K_BRAM = "5" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     10.162489 mW" *) 
(* C_FAMILY = "artix7" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "0" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "image.mem" *) 
(* C_INIT_FILE_NAME = "image.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "0" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "2500" *) (* C_READ_DEPTH_B = "2500" *) (* C_READ_WIDTH_A = "72" *) 
(* C_READ_WIDTH_B = "72" *) (* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) 
(* C_RST_PRIORITY_A = "CE" *) (* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) 
(* C_USE_BRAM_BLOCK = "0" *) (* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) 
(* C_USE_DEFAULT_DATA = "0" *) (* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) 
(* C_USE_URAM = "0" *) (* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) 
(* C_WRITE_DEPTH_A = "2500" *) (* C_WRITE_DEPTH_B = "2500" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
(* C_WRITE_MODE_B = "WRITE_FIRST" *) (* C_WRITE_WIDTH_A = "72" *) (* C_WRITE_WIDTH_B = "72" *) 
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
  input [71:0]dina;
  output [71:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [11:0]addrb;
  input [71:0]dinb;
  output [71:0]doutb;
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
  input [71:0]s_axi_wdata;
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
  output [71:0]s_axi_rdata;
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
  wire [71:0]dina;
  wire [71:0]douta;
  wire [0:0]wea;

  assign dbiterr = \<const0> ;
  assign doutb[71] = \<const0> ;
  assign doutb[70] = \<const0> ;
  assign doutb[69] = \<const0> ;
  assign doutb[68] = \<const0> ;
  assign doutb[67] = \<const0> ;
  assign doutb[66] = \<const0> ;
  assign doutb[65] = \<const0> ;
  assign doutb[64] = \<const0> ;
  assign doutb[63] = \<const0> ;
  assign doutb[62] = \<const0> ;
  assign doutb[61] = \<const0> ;
  assign doutb[60] = \<const0> ;
  assign doutb[59] = \<const0> ;
  assign doutb[58] = \<const0> ;
  assign doutb[57] = \<const0> ;
  assign doutb[56] = \<const0> ;
  assign doutb[55] = \<const0> ;
  assign doutb[54] = \<const0> ;
  assign doutb[53] = \<const0> ;
  assign doutb[52] = \<const0> ;
  assign doutb[51] = \<const0> ;
  assign doutb[50] = \<const0> ;
  assign doutb[49] = \<const0> ;
  assign doutb[48] = \<const0> ;
  assign doutb[47] = \<const0> ;
  assign doutb[46] = \<const0> ;
  assign doutb[45] = \<const0> ;
  assign doutb[44] = \<const0> ;
  assign doutb[43] = \<const0> ;
  assign doutb[42] = \<const0> ;
  assign doutb[41] = \<const0> ;
  assign doutb[40] = \<const0> ;
  assign doutb[39] = \<const0> ;
  assign doutb[38] = \<const0> ;
  assign doutb[37] = \<const0> ;
  assign doutb[36] = \<const0> ;
  assign doutb[35] = \<const0> ;
  assign doutb[34] = \<const0> ;
  assign doutb[33] = \<const0> ;
  assign doutb[32] = \<const0> ;
  assign doutb[31] = \<const0> ;
  assign doutb[30] = \<const0> ;
  assign doutb[29] = \<const0> ;
  assign doutb[28] = \<const0> ;
  assign doutb[27] = \<const0> ;
  assign doutb[26] = \<const0> ;
  assign doutb[25] = \<const0> ;
  assign doutb[24] = \<const0> ;
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
  assign s_axi_rdata[71] = \<const0> ;
  assign s_axi_rdata[70] = \<const0> ;
  assign s_axi_rdata[69] = \<const0> ;
  assign s_axi_rdata[68] = \<const0> ;
  assign s_axi_rdata[67] = \<const0> ;
  assign s_axi_rdata[66] = \<const0> ;
  assign s_axi_rdata[65] = \<const0> ;
  assign s_axi_rdata[64] = \<const0> ;
  assign s_axi_rdata[63] = \<const0> ;
  assign s_axi_rdata[62] = \<const0> ;
  assign s_axi_rdata[61] = \<const0> ;
  assign s_axi_rdata[60] = \<const0> ;
  assign s_axi_rdata[59] = \<const0> ;
  assign s_axi_rdata[58] = \<const0> ;
  assign s_axi_rdata[57] = \<const0> ;
  assign s_axi_rdata[56] = \<const0> ;
  assign s_axi_rdata[55] = \<const0> ;
  assign s_axi_rdata[54] = \<const0> ;
  assign s_axi_rdata[53] = \<const0> ;
  assign s_axi_rdata[52] = \<const0> ;
  assign s_axi_rdata[51] = \<const0> ;
  assign s_axi_rdata[50] = \<const0> ;
  assign s_axi_rdata[49] = \<const0> ;
  assign s_axi_rdata[48] = \<const0> ;
  assign s_axi_rdata[47] = \<const0> ;
  assign s_axi_rdata[46] = \<const0> ;
  assign s_axi_rdata[45] = \<const0> ;
  assign s_axi_rdata[44] = \<const0> ;
  assign s_axi_rdata[43] = \<const0> ;
  assign s_axi_rdata[42] = \<const0> ;
  assign s_axi_rdata[41] = \<const0> ;
  assign s_axi_rdata[40] = \<const0> ;
  assign s_axi_rdata[39] = \<const0> ;
  assign s_axi_rdata[38] = \<const0> ;
  assign s_axi_rdata[37] = \<const0> ;
  assign s_axi_rdata[36] = \<const0> ;
  assign s_axi_rdata[35] = \<const0> ;
  assign s_axi_rdata[34] = \<const0> ;
  assign s_axi_rdata[33] = \<const0> ;
  assign s_axi_rdata[32] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
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
  output [71:0]douta;
  input clka;
  input [11:0]addra;
  input [71:0]dina;
  input [0:0]wea;

  wire [11:0]addra;
  wire clka;
  wire [71:0]dina;
  wire [71:0]douta;
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
