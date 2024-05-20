//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
//Date        : Mon May 20 14:18:50 2024
//Host        : shahlarious-ub running 64-bit Ubuntu 22.04.4 LTS
//Command     : generate_target bd_0_wrapper.bd
//Design      : bd_0_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_0_wrapper
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
  input ap_clk;
  input ap_rst_n;
  output interrupt;
  output [63:0]m_axi_hostmem_araddr;
  output [1:0]m_axi_hostmem_arburst;
  output [3:0]m_axi_hostmem_arcache;
  output [0:0]m_axi_hostmem_arid;
  output [7:0]m_axi_hostmem_arlen;
  output [1:0]m_axi_hostmem_arlock;
  output [2:0]m_axi_hostmem_arprot;
  output [3:0]m_axi_hostmem_arqos;
  input m_axi_hostmem_arready;
  output [3:0]m_axi_hostmem_arregion;
  output [2:0]m_axi_hostmem_arsize;
  output m_axi_hostmem_arvalid;
  output [63:0]m_axi_hostmem_awaddr;
  output [1:0]m_axi_hostmem_awburst;
  output [3:0]m_axi_hostmem_awcache;
  output [0:0]m_axi_hostmem_awid;
  output [7:0]m_axi_hostmem_awlen;
  output [1:0]m_axi_hostmem_awlock;
  output [2:0]m_axi_hostmem_awprot;
  output [3:0]m_axi_hostmem_awqos;
  input m_axi_hostmem_awready;
  output [3:0]m_axi_hostmem_awregion;
  output [2:0]m_axi_hostmem_awsize;
  output m_axi_hostmem_awvalid;
  input [0:0]m_axi_hostmem_bid;
  output m_axi_hostmem_bready;
  input [1:0]m_axi_hostmem_bresp;
  input m_axi_hostmem_bvalid;
  input [31:0]m_axi_hostmem_rdata;
  input [0:0]m_axi_hostmem_rid;
  input m_axi_hostmem_rlast;
  output m_axi_hostmem_rready;
  input [1:0]m_axi_hostmem_rresp;
  input m_axi_hostmem_rvalid;
  output [31:0]m_axi_hostmem_wdata;
  output [0:0]m_axi_hostmem_wid;
  output m_axi_hostmem_wlast;
  input m_axi_hostmem_wready;
  output [3:0]m_axi_hostmem_wstrb;
  output m_axi_hostmem_wvalid;
  input [5:0]s_axi_CONTROL_BUS_araddr;
  output s_axi_CONTROL_BUS_arready;
  input s_axi_CONTROL_BUS_arvalid;
  input [5:0]s_axi_CONTROL_BUS_awaddr;
  output s_axi_CONTROL_BUS_awready;
  input s_axi_CONTROL_BUS_awvalid;
  input s_axi_CONTROL_BUS_bready;
  output [1:0]s_axi_CONTROL_BUS_bresp;
  output s_axi_CONTROL_BUS_bvalid;
  output [31:0]s_axi_CONTROL_BUS_rdata;
  input s_axi_CONTROL_BUS_rready;
  output [1:0]s_axi_CONTROL_BUS_rresp;
  output s_axi_CONTROL_BUS_rvalid;
  input [31:0]s_axi_CONTROL_BUS_wdata;
  output s_axi_CONTROL_BUS_wready;
  input [3:0]s_axi_CONTROL_BUS_wstrb;
  input s_axi_CONTROL_BUS_wvalid;

  wire ap_clk;
  wire ap_rst_n;
  wire interrupt;
  wire [63:0]m_axi_hostmem_araddr;
  wire [1:0]m_axi_hostmem_arburst;
  wire [3:0]m_axi_hostmem_arcache;
  wire [0:0]m_axi_hostmem_arid;
  wire [7:0]m_axi_hostmem_arlen;
  wire [1:0]m_axi_hostmem_arlock;
  wire [2:0]m_axi_hostmem_arprot;
  wire [3:0]m_axi_hostmem_arqos;
  wire m_axi_hostmem_arready;
  wire [3:0]m_axi_hostmem_arregion;
  wire [2:0]m_axi_hostmem_arsize;
  wire m_axi_hostmem_arvalid;
  wire [63:0]m_axi_hostmem_awaddr;
  wire [1:0]m_axi_hostmem_awburst;
  wire [3:0]m_axi_hostmem_awcache;
  wire [0:0]m_axi_hostmem_awid;
  wire [7:0]m_axi_hostmem_awlen;
  wire [1:0]m_axi_hostmem_awlock;
  wire [2:0]m_axi_hostmem_awprot;
  wire [3:0]m_axi_hostmem_awqos;
  wire m_axi_hostmem_awready;
  wire [3:0]m_axi_hostmem_awregion;
  wire [2:0]m_axi_hostmem_awsize;
  wire m_axi_hostmem_awvalid;
  wire [0:0]m_axi_hostmem_bid;
  wire m_axi_hostmem_bready;
  wire [1:0]m_axi_hostmem_bresp;
  wire m_axi_hostmem_bvalid;
  wire [31:0]m_axi_hostmem_rdata;
  wire [0:0]m_axi_hostmem_rid;
  wire m_axi_hostmem_rlast;
  wire m_axi_hostmem_rready;
  wire [1:0]m_axi_hostmem_rresp;
  wire m_axi_hostmem_rvalid;
  wire [31:0]m_axi_hostmem_wdata;
  wire [0:0]m_axi_hostmem_wid;
  wire m_axi_hostmem_wlast;
  wire m_axi_hostmem_wready;
  wire [3:0]m_axi_hostmem_wstrb;
  wire m_axi_hostmem_wvalid;
  wire [5:0]s_axi_CONTROL_BUS_araddr;
  wire s_axi_CONTROL_BUS_arready;
  wire s_axi_CONTROL_BUS_arvalid;
  wire [5:0]s_axi_CONTROL_BUS_awaddr;
  wire s_axi_CONTROL_BUS_awready;
  wire s_axi_CONTROL_BUS_awvalid;
  wire s_axi_CONTROL_BUS_bready;
  wire [1:0]s_axi_CONTROL_BUS_bresp;
  wire s_axi_CONTROL_BUS_bvalid;
  wire [31:0]s_axi_CONTROL_BUS_rdata;
  wire s_axi_CONTROL_BUS_rready;
  wire [1:0]s_axi_CONTROL_BUS_rresp;
  wire s_axi_CONTROL_BUS_rvalid;
  wire [31:0]s_axi_CONTROL_BUS_wdata;
  wire s_axi_CONTROL_BUS_wready;
  wire [3:0]s_axi_CONTROL_BUS_wstrb;
  wire s_axi_CONTROL_BUS_wvalid;

  bd_0 bd_0_i
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .interrupt(interrupt),
        .m_axi_hostmem_araddr(m_axi_hostmem_araddr),
        .m_axi_hostmem_arburst(m_axi_hostmem_arburst),
        .m_axi_hostmem_arcache(m_axi_hostmem_arcache),
        .m_axi_hostmem_arid(m_axi_hostmem_arid),
        .m_axi_hostmem_arlen(m_axi_hostmem_arlen),
        .m_axi_hostmem_arlock(m_axi_hostmem_arlock),
        .m_axi_hostmem_arprot(m_axi_hostmem_arprot),
        .m_axi_hostmem_arqos(m_axi_hostmem_arqos),
        .m_axi_hostmem_arready(m_axi_hostmem_arready),
        .m_axi_hostmem_arregion(m_axi_hostmem_arregion),
        .m_axi_hostmem_arsize(m_axi_hostmem_arsize),
        .m_axi_hostmem_arvalid(m_axi_hostmem_arvalid),
        .m_axi_hostmem_awaddr(m_axi_hostmem_awaddr),
        .m_axi_hostmem_awburst(m_axi_hostmem_awburst),
        .m_axi_hostmem_awcache(m_axi_hostmem_awcache),
        .m_axi_hostmem_awid(m_axi_hostmem_awid),
        .m_axi_hostmem_awlen(m_axi_hostmem_awlen),
        .m_axi_hostmem_awlock(m_axi_hostmem_awlock),
        .m_axi_hostmem_awprot(m_axi_hostmem_awprot),
        .m_axi_hostmem_awqos(m_axi_hostmem_awqos),
        .m_axi_hostmem_awready(m_axi_hostmem_awready),
        .m_axi_hostmem_awregion(m_axi_hostmem_awregion),
        .m_axi_hostmem_awsize(m_axi_hostmem_awsize),
        .m_axi_hostmem_awvalid(m_axi_hostmem_awvalid),
        .m_axi_hostmem_bid(m_axi_hostmem_bid),
        .m_axi_hostmem_bready(m_axi_hostmem_bready),
        .m_axi_hostmem_bresp(m_axi_hostmem_bresp),
        .m_axi_hostmem_bvalid(m_axi_hostmem_bvalid),
        .m_axi_hostmem_rdata(m_axi_hostmem_rdata),
        .m_axi_hostmem_rid(m_axi_hostmem_rid),
        .m_axi_hostmem_rlast(m_axi_hostmem_rlast),
        .m_axi_hostmem_rready(m_axi_hostmem_rready),
        .m_axi_hostmem_rresp(m_axi_hostmem_rresp),
        .m_axi_hostmem_rvalid(m_axi_hostmem_rvalid),
        .m_axi_hostmem_wdata(m_axi_hostmem_wdata),
        .m_axi_hostmem_wid(m_axi_hostmem_wid),
        .m_axi_hostmem_wlast(m_axi_hostmem_wlast),
        .m_axi_hostmem_wready(m_axi_hostmem_wready),
        .m_axi_hostmem_wstrb(m_axi_hostmem_wstrb),
        .m_axi_hostmem_wvalid(m_axi_hostmem_wvalid),
        .s_axi_CONTROL_BUS_araddr(s_axi_CONTROL_BUS_araddr),
        .s_axi_CONTROL_BUS_arready(s_axi_CONTROL_BUS_arready),
        .s_axi_CONTROL_BUS_arvalid(s_axi_CONTROL_BUS_arvalid),
        .s_axi_CONTROL_BUS_awaddr(s_axi_CONTROL_BUS_awaddr),
        .s_axi_CONTROL_BUS_awready(s_axi_CONTROL_BUS_awready),
        .s_axi_CONTROL_BUS_awvalid(s_axi_CONTROL_BUS_awvalid),
        .s_axi_CONTROL_BUS_bready(s_axi_CONTROL_BUS_bready),
        .s_axi_CONTROL_BUS_bresp(s_axi_CONTROL_BUS_bresp),
        .s_axi_CONTROL_BUS_bvalid(s_axi_CONTROL_BUS_bvalid),
        .s_axi_CONTROL_BUS_rdata(s_axi_CONTROL_BUS_rdata),
        .s_axi_CONTROL_BUS_rready(s_axi_CONTROL_BUS_rready),
        .s_axi_CONTROL_BUS_rresp(s_axi_CONTROL_BUS_rresp),
        .s_axi_CONTROL_BUS_rvalid(s_axi_CONTROL_BUS_rvalid),
        .s_axi_CONTROL_BUS_wdata(s_axi_CONTROL_BUS_wdata),
        .s_axi_CONTROL_BUS_wready(s_axi_CONTROL_BUS_wready),
        .s_axi_CONTROL_BUS_wstrb(s_axi_CONTROL_BUS_wstrb),
        .s_axi_CONTROL_BUS_wvalid(s_axi_CONTROL_BUS_wvalid));
endmodule
