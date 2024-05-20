//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
//Date        : Mon May 20 14:18:50 2024
//Host        : shahlarious-ub running 64-bit Ubuntu 22.04.4 LTS
//Command     : generate_target bd_0.bd
//Design      : bd_0
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_0,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_0,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "bd_0.hwdef" *) 
module bd_0
   (ap_clk,
    ap_rst_n,
    interrupt,
    m_axi_hostmem_araddr,
    m_axi_hostmem_arburst,
    m_axi_hostmem_arcache,
    m_axi_hostmem_arid,
    m_axi_hostmem_arlen,
    m_axi_hostmem_arlock,
    m_axi_hostmem_arprot,
    m_axi_hostmem_arqos,
    m_axi_hostmem_arready,
    m_axi_hostmem_arregion,
    m_axi_hostmem_arsize,
    m_axi_hostmem_arvalid,
    m_axi_hostmem_awaddr,
    m_axi_hostmem_awburst,
    m_axi_hostmem_awcache,
    m_axi_hostmem_awid,
    m_axi_hostmem_awlen,
    m_axi_hostmem_awlock,
    m_axi_hostmem_awprot,
    m_axi_hostmem_awqos,
    m_axi_hostmem_awready,
    m_axi_hostmem_awregion,
    m_axi_hostmem_awsize,
    m_axi_hostmem_awvalid,
    m_axi_hostmem_bid,
    m_axi_hostmem_bready,
    m_axi_hostmem_bresp,
    m_axi_hostmem_bvalid,
    m_axi_hostmem_rdata,
    m_axi_hostmem_rid,
    m_axi_hostmem_rlast,
    m_axi_hostmem_rready,
    m_axi_hostmem_rresp,
    m_axi_hostmem_rvalid,
    m_axi_hostmem_wdata,
    m_axi_hostmem_wid,
    m_axi_hostmem_wlast,
    m_axi_hostmem_wready,
    m_axi_hostmem_wstrb,
    m_axi_hostmem_wvalid,
    s_axi_CONTROL_BUS_araddr,
    s_axi_CONTROL_BUS_arready,
    s_axi_CONTROL_BUS_arvalid,
    s_axi_CONTROL_BUS_awaddr,
    s_axi_CONTROL_BUS_awready,
    s_axi_CONTROL_BUS_awvalid,
    s_axi_CONTROL_BUS_bready,
    s_axi_CONTROL_BUS_bresp,
    s_axi_CONTROL_BUS_bvalid,
    s_axi_CONTROL_BUS_rdata,
    s_axi_CONTROL_BUS_rready,
    s_axi_CONTROL_BUS_rresp,
    s_axi_CONTROL_BUS_rvalid,
    s_axi_CONTROL_BUS_wdata,
    s_axi_CONTROL_BUS_wready,
    s_axi_CONTROL_BUS_wstrb,
    s_axi_CONTROL_BUS_wvalid);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AP_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AP_CLK, ASSOCIATED_BUSIF m_axi_hostmem:s_axi_CONTROL_BUS, ASSOCIATED_RESET ap_rst_n, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 100000000.0, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AP_RST_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AP_RST_N, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.INTERRUPT INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.INTERRUPT, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output interrupt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_hostmem, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN bd_0_ap_clk_0, DATA_WIDTH 32, FREQ_HZ 100000000.0, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 1, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE WRITE_ONLY, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [63:0]m_axi_hostmem_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem " *) output [1:0]m_axi_hostmem_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem " *) output [3:0]m_axi_hostmem_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem " *) output [0:0]m_axi_hostmem_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem " *) output [7:0]m_axi_hostmem_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem " *) output [1:0]m_axi_hostmem_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem " *) output [2:0]m_axi_hostmem_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem " *) output [3:0]m_axi_hostmem_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem " *) input m_axi_hostmem_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem " *) output [3:0]m_axi_hostmem_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem " *) output [2:0]m_axi_hostmem_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem " *) output m_axi_hostmem_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem " *) output [63:0]m_axi_hostmem_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem " *) output [1:0]m_axi_hostmem_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem " *) output [3:0]m_axi_hostmem_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem " *) output [0:0]m_axi_hostmem_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem " *) output [7:0]m_axi_hostmem_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem " *) output [1:0]m_axi_hostmem_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem " *) output [2:0]m_axi_hostmem_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem " *) output [3:0]m_axi_hostmem_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem " *) input m_axi_hostmem_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem " *) output [3:0]m_axi_hostmem_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem " *) output [2:0]m_axi_hostmem_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem " *) output m_axi_hostmem_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem " *) input [0:0]m_axi_hostmem_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem " *) output m_axi_hostmem_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem " *) input [1:0]m_axi_hostmem_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem " *) input m_axi_hostmem_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem " *) input [31:0]m_axi_hostmem_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem " *) input [0:0]m_axi_hostmem_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem " *) input m_axi_hostmem_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem " *) output m_axi_hostmem_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem " *) input [1:0]m_axi_hostmem_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem " *) input m_axi_hostmem_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem " *) output [31:0]m_axi_hostmem_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem " *) output [0:0]m_axi_hostmem_wid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem " *) output m_axi_hostmem_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem " *) input m_axi_hostmem_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem " *) output [3:0]m_axi_hostmem_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem " *) output m_axi_hostmem_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_CONTROL_BUS, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN bd_0_ap_clk_0, DATA_WIDTH 32, FREQ_HZ 100000000.0, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [5:0]s_axi_CONTROL_BUS_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS " *) output s_axi_CONTROL_BUS_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS " *) input s_axi_CONTROL_BUS_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS " *) input [5:0]s_axi_CONTROL_BUS_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS " *) output s_axi_CONTROL_BUS_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS " *) input s_axi_CONTROL_BUS_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS " *) input s_axi_CONTROL_BUS_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS " *) output [1:0]s_axi_CONTROL_BUS_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS " *) output s_axi_CONTROL_BUS_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS " *) output [31:0]s_axi_CONTROL_BUS_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS " *) input s_axi_CONTROL_BUS_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS " *) output [1:0]s_axi_CONTROL_BUS_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS " *) output s_axi_CONTROL_BUS_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS " *) input [31:0]s_axi_CONTROL_BUS_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS " *) output s_axi_CONTROL_BUS_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS " *) input [3:0]s_axi_CONTROL_BUS_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS " *) input s_axi_CONTROL_BUS_wvalid;

  wire ap_clk_0_1;
  wire ap_rst_n_0_1;
  wire hls_inst_interrupt;
  wire [63:0]hls_inst_m_axi_hostmem_ARADDR;
  wire [1:0]hls_inst_m_axi_hostmem_ARBURST;
  wire [3:0]hls_inst_m_axi_hostmem_ARCACHE;
  wire [0:0]hls_inst_m_axi_hostmem_ARID;
  wire [7:0]hls_inst_m_axi_hostmem_ARLEN;
  wire [1:0]hls_inst_m_axi_hostmem_ARLOCK;
  wire [2:0]hls_inst_m_axi_hostmem_ARPROT;
  wire [3:0]hls_inst_m_axi_hostmem_ARQOS;
  wire hls_inst_m_axi_hostmem_ARREADY;
  wire [3:0]hls_inst_m_axi_hostmem_ARREGION;
  wire [2:0]hls_inst_m_axi_hostmem_ARSIZE;
  wire hls_inst_m_axi_hostmem_ARVALID;
  wire [63:0]hls_inst_m_axi_hostmem_AWADDR;
  wire [1:0]hls_inst_m_axi_hostmem_AWBURST;
  wire [3:0]hls_inst_m_axi_hostmem_AWCACHE;
  wire [0:0]hls_inst_m_axi_hostmem_AWID;
  wire [7:0]hls_inst_m_axi_hostmem_AWLEN;
  wire [1:0]hls_inst_m_axi_hostmem_AWLOCK;
  wire [2:0]hls_inst_m_axi_hostmem_AWPROT;
  wire [3:0]hls_inst_m_axi_hostmem_AWQOS;
  wire hls_inst_m_axi_hostmem_AWREADY;
  wire [3:0]hls_inst_m_axi_hostmem_AWREGION;
  wire [2:0]hls_inst_m_axi_hostmem_AWSIZE;
  wire hls_inst_m_axi_hostmem_AWVALID;
  wire [0:0]hls_inst_m_axi_hostmem_BID;
  wire hls_inst_m_axi_hostmem_BREADY;
  wire [1:0]hls_inst_m_axi_hostmem_BRESP;
  wire hls_inst_m_axi_hostmem_BVALID;
  wire [31:0]hls_inst_m_axi_hostmem_RDATA;
  wire [0:0]hls_inst_m_axi_hostmem_RID;
  wire hls_inst_m_axi_hostmem_RLAST;
  wire hls_inst_m_axi_hostmem_RREADY;
  wire [1:0]hls_inst_m_axi_hostmem_RRESP;
  wire hls_inst_m_axi_hostmem_RVALID;
  wire [31:0]hls_inst_m_axi_hostmem_WDATA;
  wire [0:0]hls_inst_m_axi_hostmem_WID;
  wire hls_inst_m_axi_hostmem_WLAST;
  wire hls_inst_m_axi_hostmem_WREADY;
  wire [3:0]hls_inst_m_axi_hostmem_WSTRB;
  wire hls_inst_m_axi_hostmem_WVALID;
  wire [5:0]s_axi_CONTROL_BUS_0_1_ARADDR;
  wire s_axi_CONTROL_BUS_0_1_ARREADY;
  wire s_axi_CONTROL_BUS_0_1_ARVALID;
  wire [5:0]s_axi_CONTROL_BUS_0_1_AWADDR;
  wire s_axi_CONTROL_BUS_0_1_AWREADY;
  wire s_axi_CONTROL_BUS_0_1_AWVALID;
  wire s_axi_CONTROL_BUS_0_1_BREADY;
  wire [1:0]s_axi_CONTROL_BUS_0_1_BRESP;
  wire s_axi_CONTROL_BUS_0_1_BVALID;
  wire [31:0]s_axi_CONTROL_BUS_0_1_RDATA;
  wire s_axi_CONTROL_BUS_0_1_RREADY;
  wire [1:0]s_axi_CONTROL_BUS_0_1_RRESP;
  wire s_axi_CONTROL_BUS_0_1_RVALID;
  wire [31:0]s_axi_CONTROL_BUS_0_1_WDATA;
  wire s_axi_CONTROL_BUS_0_1_WREADY;
  wire [3:0]s_axi_CONTROL_BUS_0_1_WSTRB;
  wire s_axi_CONTROL_BUS_0_1_WVALID;

  assign ap_clk_0_1 = ap_clk;
  assign ap_rst_n_0_1 = ap_rst_n;
  assign hls_inst_m_axi_hostmem_ARREADY = m_axi_hostmem_arready;
  assign hls_inst_m_axi_hostmem_AWREADY = m_axi_hostmem_awready;
  assign hls_inst_m_axi_hostmem_BID = m_axi_hostmem_bid[0];
  assign hls_inst_m_axi_hostmem_BRESP = m_axi_hostmem_bresp[1:0];
  assign hls_inst_m_axi_hostmem_BVALID = m_axi_hostmem_bvalid;
  assign hls_inst_m_axi_hostmem_RDATA = m_axi_hostmem_rdata[31:0];
  assign hls_inst_m_axi_hostmem_RID = m_axi_hostmem_rid[0];
  assign hls_inst_m_axi_hostmem_RLAST = m_axi_hostmem_rlast;
  assign hls_inst_m_axi_hostmem_RRESP = m_axi_hostmem_rresp[1:0];
  assign hls_inst_m_axi_hostmem_RVALID = m_axi_hostmem_rvalid;
  assign hls_inst_m_axi_hostmem_WREADY = m_axi_hostmem_wready;
  assign interrupt = hls_inst_interrupt;
  assign m_axi_hostmem_araddr[63:0] = hls_inst_m_axi_hostmem_ARADDR;
  assign m_axi_hostmem_arburst[1:0] = hls_inst_m_axi_hostmem_ARBURST;
  assign m_axi_hostmem_arcache[3:0] = hls_inst_m_axi_hostmem_ARCACHE;
  assign m_axi_hostmem_arid[0] = hls_inst_m_axi_hostmem_ARID;
  assign m_axi_hostmem_arlen[7:0] = hls_inst_m_axi_hostmem_ARLEN;
  assign m_axi_hostmem_arlock[1:0] = hls_inst_m_axi_hostmem_ARLOCK;
  assign m_axi_hostmem_arprot[2:0] = hls_inst_m_axi_hostmem_ARPROT;
  assign m_axi_hostmem_arqos[3:0] = hls_inst_m_axi_hostmem_ARQOS;
  assign m_axi_hostmem_arregion[3:0] = hls_inst_m_axi_hostmem_ARREGION;
  assign m_axi_hostmem_arsize[2:0] = hls_inst_m_axi_hostmem_ARSIZE;
  assign m_axi_hostmem_arvalid = hls_inst_m_axi_hostmem_ARVALID;
  assign m_axi_hostmem_awaddr[63:0] = hls_inst_m_axi_hostmem_AWADDR;
  assign m_axi_hostmem_awburst[1:0] = hls_inst_m_axi_hostmem_AWBURST;
  assign m_axi_hostmem_awcache[3:0] = hls_inst_m_axi_hostmem_AWCACHE;
  assign m_axi_hostmem_awid[0] = hls_inst_m_axi_hostmem_AWID;
  assign m_axi_hostmem_awlen[7:0] = hls_inst_m_axi_hostmem_AWLEN;
  assign m_axi_hostmem_awlock[1:0] = hls_inst_m_axi_hostmem_AWLOCK;
  assign m_axi_hostmem_awprot[2:0] = hls_inst_m_axi_hostmem_AWPROT;
  assign m_axi_hostmem_awqos[3:0] = hls_inst_m_axi_hostmem_AWQOS;
  assign m_axi_hostmem_awregion[3:0] = hls_inst_m_axi_hostmem_AWREGION;
  assign m_axi_hostmem_awsize[2:0] = hls_inst_m_axi_hostmem_AWSIZE;
  assign m_axi_hostmem_awvalid = hls_inst_m_axi_hostmem_AWVALID;
  assign m_axi_hostmem_bready = hls_inst_m_axi_hostmem_BREADY;
  assign m_axi_hostmem_rready = hls_inst_m_axi_hostmem_RREADY;
  assign m_axi_hostmem_wdata[31:0] = hls_inst_m_axi_hostmem_WDATA;
  assign m_axi_hostmem_wid[0] = hls_inst_m_axi_hostmem_WID;
  assign m_axi_hostmem_wlast = hls_inst_m_axi_hostmem_WLAST;
  assign m_axi_hostmem_wstrb[3:0] = hls_inst_m_axi_hostmem_WSTRB;
  assign m_axi_hostmem_wvalid = hls_inst_m_axi_hostmem_WVALID;
  assign s_axi_CONTROL_BUS_0_1_ARADDR = s_axi_CONTROL_BUS_araddr[5:0];
  assign s_axi_CONTROL_BUS_0_1_ARVALID = s_axi_CONTROL_BUS_arvalid;
  assign s_axi_CONTROL_BUS_0_1_AWADDR = s_axi_CONTROL_BUS_awaddr[5:0];
  assign s_axi_CONTROL_BUS_0_1_AWVALID = s_axi_CONTROL_BUS_awvalid;
  assign s_axi_CONTROL_BUS_0_1_BREADY = s_axi_CONTROL_BUS_bready;
  assign s_axi_CONTROL_BUS_0_1_RREADY = s_axi_CONTROL_BUS_rready;
  assign s_axi_CONTROL_BUS_0_1_WDATA = s_axi_CONTROL_BUS_wdata[31:0];
  assign s_axi_CONTROL_BUS_0_1_WSTRB = s_axi_CONTROL_BUS_wstrb[3:0];
  assign s_axi_CONTROL_BUS_0_1_WVALID = s_axi_CONTROL_BUS_wvalid;
  assign s_axi_CONTROL_BUS_arready = s_axi_CONTROL_BUS_0_1_ARREADY;
  assign s_axi_CONTROL_BUS_awready = s_axi_CONTROL_BUS_0_1_AWREADY;
  assign s_axi_CONTROL_BUS_bresp[1:0] = s_axi_CONTROL_BUS_0_1_BRESP;
  assign s_axi_CONTROL_BUS_bvalid = s_axi_CONTROL_BUS_0_1_BVALID;
  assign s_axi_CONTROL_BUS_rdata[31:0] = s_axi_CONTROL_BUS_0_1_RDATA;
  assign s_axi_CONTROL_BUS_rresp[1:0] = s_axi_CONTROL_BUS_0_1_RRESP;
  assign s_axi_CONTROL_BUS_rvalid = s_axi_CONTROL_BUS_0_1_RVALID;
  assign s_axi_CONTROL_BUS_wready = s_axi_CONTROL_BUS_0_1_WREADY;
  bd_0_hls_inst_0 hls_inst
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .interrupt(hls_inst_interrupt),
        .m_axi_hostmem_ARADDR(hls_inst_m_axi_hostmem_ARADDR),
        .m_axi_hostmem_ARBURST(hls_inst_m_axi_hostmem_ARBURST),
        .m_axi_hostmem_ARCACHE(hls_inst_m_axi_hostmem_ARCACHE),
        .m_axi_hostmem_ARID(hls_inst_m_axi_hostmem_ARID),
        .m_axi_hostmem_ARLEN(hls_inst_m_axi_hostmem_ARLEN),
        .m_axi_hostmem_ARLOCK(hls_inst_m_axi_hostmem_ARLOCK),
        .m_axi_hostmem_ARPROT(hls_inst_m_axi_hostmem_ARPROT),
        .m_axi_hostmem_ARQOS(hls_inst_m_axi_hostmem_ARQOS),
        .m_axi_hostmem_ARREADY(hls_inst_m_axi_hostmem_ARREADY),
        .m_axi_hostmem_ARREGION(hls_inst_m_axi_hostmem_ARREGION),
        .m_axi_hostmem_ARSIZE(hls_inst_m_axi_hostmem_ARSIZE),
        .m_axi_hostmem_ARVALID(hls_inst_m_axi_hostmem_ARVALID),
        .m_axi_hostmem_AWADDR(hls_inst_m_axi_hostmem_AWADDR),
        .m_axi_hostmem_AWBURST(hls_inst_m_axi_hostmem_AWBURST),
        .m_axi_hostmem_AWCACHE(hls_inst_m_axi_hostmem_AWCACHE),
        .m_axi_hostmem_AWID(hls_inst_m_axi_hostmem_AWID),
        .m_axi_hostmem_AWLEN(hls_inst_m_axi_hostmem_AWLEN),
        .m_axi_hostmem_AWLOCK(hls_inst_m_axi_hostmem_AWLOCK),
        .m_axi_hostmem_AWPROT(hls_inst_m_axi_hostmem_AWPROT),
        .m_axi_hostmem_AWQOS(hls_inst_m_axi_hostmem_AWQOS),
        .m_axi_hostmem_AWREADY(hls_inst_m_axi_hostmem_AWREADY),
        .m_axi_hostmem_AWREGION(hls_inst_m_axi_hostmem_AWREGION),
        .m_axi_hostmem_AWSIZE(hls_inst_m_axi_hostmem_AWSIZE),
        .m_axi_hostmem_AWVALID(hls_inst_m_axi_hostmem_AWVALID),
        .m_axi_hostmem_BID(hls_inst_m_axi_hostmem_BID),
        .m_axi_hostmem_BREADY(hls_inst_m_axi_hostmem_BREADY),
        .m_axi_hostmem_BRESP(hls_inst_m_axi_hostmem_BRESP),
        .m_axi_hostmem_BVALID(hls_inst_m_axi_hostmem_BVALID),
        .m_axi_hostmem_RDATA(hls_inst_m_axi_hostmem_RDATA),
        .m_axi_hostmem_RID(hls_inst_m_axi_hostmem_RID),
        .m_axi_hostmem_RLAST(hls_inst_m_axi_hostmem_RLAST),
        .m_axi_hostmem_RREADY(hls_inst_m_axi_hostmem_RREADY),
        .m_axi_hostmem_RRESP(hls_inst_m_axi_hostmem_RRESP),
        .m_axi_hostmem_RVALID(hls_inst_m_axi_hostmem_RVALID),
        .m_axi_hostmem_WDATA(hls_inst_m_axi_hostmem_WDATA),
        .m_axi_hostmem_WID(hls_inst_m_axi_hostmem_WID),
        .m_axi_hostmem_WLAST(hls_inst_m_axi_hostmem_WLAST),
        .m_axi_hostmem_WREADY(hls_inst_m_axi_hostmem_WREADY),
        .m_axi_hostmem_WSTRB(hls_inst_m_axi_hostmem_WSTRB),
        .m_axi_hostmem_WVALID(hls_inst_m_axi_hostmem_WVALID),
        .s_axi_CONTROL_BUS_ARADDR(s_axi_CONTROL_BUS_0_1_ARADDR),
        .s_axi_CONTROL_BUS_ARREADY(s_axi_CONTROL_BUS_0_1_ARREADY),
        .s_axi_CONTROL_BUS_ARVALID(s_axi_CONTROL_BUS_0_1_ARVALID),
        .s_axi_CONTROL_BUS_AWADDR(s_axi_CONTROL_BUS_0_1_AWADDR),
        .s_axi_CONTROL_BUS_AWREADY(s_axi_CONTROL_BUS_0_1_AWREADY),
        .s_axi_CONTROL_BUS_AWVALID(s_axi_CONTROL_BUS_0_1_AWVALID),
        .s_axi_CONTROL_BUS_BREADY(s_axi_CONTROL_BUS_0_1_BREADY),
        .s_axi_CONTROL_BUS_BRESP(s_axi_CONTROL_BUS_0_1_BRESP),
        .s_axi_CONTROL_BUS_BVALID(s_axi_CONTROL_BUS_0_1_BVALID),
        .s_axi_CONTROL_BUS_RDATA(s_axi_CONTROL_BUS_0_1_RDATA),
        .s_axi_CONTROL_BUS_RREADY(s_axi_CONTROL_BUS_0_1_RREADY),
        .s_axi_CONTROL_BUS_RRESP(s_axi_CONTROL_BUS_0_1_RRESP),
        .s_axi_CONTROL_BUS_RVALID(s_axi_CONTROL_BUS_0_1_RVALID),
        .s_axi_CONTROL_BUS_WDATA(s_axi_CONTROL_BUS_0_1_WDATA),
        .s_axi_CONTROL_BUS_WREADY(s_axi_CONTROL_BUS_0_1_WREADY),
        .s_axi_CONTROL_BUS_WSTRB(s_axi_CONTROL_BUS_0_1_WSTRB),
        .s_axi_CONTROL_BUS_WVALID(s_axi_CONTROL_BUS_0_1_WVALID));
endmodule
