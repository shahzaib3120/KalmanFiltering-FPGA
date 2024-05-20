-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Mon May 20 17:55:48 2024
-- Host        : shahlarious-ub running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_kalman_filter_top_0_0_stub.vhdl
-- Design      : design_1_kalman_filter_top_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    s_axi_CONTROL_BUS_AWADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_CONTROL_BUS_AWVALID : in STD_LOGIC;
    s_axi_CONTROL_BUS_AWREADY : out STD_LOGIC;
    s_axi_CONTROL_BUS_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CONTROL_BUS_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CONTROL_BUS_WVALID : in STD_LOGIC;
    s_axi_CONTROL_BUS_WREADY : out STD_LOGIC;
    s_axi_CONTROL_BUS_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CONTROL_BUS_BVALID : out STD_LOGIC;
    s_axi_CONTROL_BUS_BREADY : in STD_LOGIC;
    s_axi_CONTROL_BUS_ARADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_CONTROL_BUS_ARVALID : in STD_LOGIC;
    s_axi_CONTROL_BUS_ARREADY : out STD_LOGIC;
    s_axi_CONTROL_BUS_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CONTROL_BUS_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CONTROL_BUS_RVALID : out STD_LOGIC;
    s_axi_CONTROL_BUS_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    m_axi_hostmem_AWID : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_hostmem_AWADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_hostmem_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_hostmem_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_hostmem_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_hostmem_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_hostmem_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_hostmem_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_hostmem_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_hostmem_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_hostmem_AWVALID : out STD_LOGIC;
    m_axi_hostmem_AWREADY : in STD_LOGIC;
    m_axi_hostmem_WID : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_hostmem_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_hostmem_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_hostmem_WLAST : out STD_LOGIC;
    m_axi_hostmem_WVALID : out STD_LOGIC;
    m_axi_hostmem_WREADY : in STD_LOGIC;
    m_axi_hostmem_BID : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_hostmem_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_hostmem_BVALID : in STD_LOGIC;
    m_axi_hostmem_BREADY : out STD_LOGIC;
    m_axi_hostmem_ARID : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_hostmem_ARADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_hostmem_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_hostmem_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_hostmem_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_hostmem_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_hostmem_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_hostmem_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_hostmem_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_hostmem_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_hostmem_ARVALID : out STD_LOGIC;
    m_axi_hostmem_ARREADY : in STD_LOGIC;
    m_axi_hostmem_RID : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_hostmem_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_hostmem_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_hostmem_RLAST : in STD_LOGIC;
    m_axi_hostmem_RVALID : in STD_LOGIC;
    m_axi_hostmem_RREADY : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_CONTROL_BUS_AWADDR[5:0],s_axi_CONTROL_BUS_AWVALID,s_axi_CONTROL_BUS_AWREADY,s_axi_CONTROL_BUS_WDATA[31:0],s_axi_CONTROL_BUS_WSTRB[3:0],s_axi_CONTROL_BUS_WVALID,s_axi_CONTROL_BUS_WREADY,s_axi_CONTROL_BUS_BRESP[1:0],s_axi_CONTROL_BUS_BVALID,s_axi_CONTROL_BUS_BREADY,s_axi_CONTROL_BUS_ARADDR[5:0],s_axi_CONTROL_BUS_ARVALID,s_axi_CONTROL_BUS_ARREADY,s_axi_CONTROL_BUS_RDATA[31:0],s_axi_CONTROL_BUS_RRESP[1:0],s_axi_CONTROL_BUS_RVALID,s_axi_CONTROL_BUS_RREADY,ap_clk,ap_rst_n,interrupt,m_axi_hostmem_AWID[0:0],m_axi_hostmem_AWADDR[63:0],m_axi_hostmem_AWLEN[7:0],m_axi_hostmem_AWSIZE[2:0],m_axi_hostmem_AWBURST[1:0],m_axi_hostmem_AWLOCK[1:0],m_axi_hostmem_AWREGION[3:0],m_axi_hostmem_AWCACHE[3:0],m_axi_hostmem_AWPROT[2:0],m_axi_hostmem_AWQOS[3:0],m_axi_hostmem_AWVALID,m_axi_hostmem_AWREADY,m_axi_hostmem_WID[0:0],m_axi_hostmem_WDATA[31:0],m_axi_hostmem_WSTRB[3:0],m_axi_hostmem_WLAST,m_axi_hostmem_WVALID,m_axi_hostmem_WREADY,m_axi_hostmem_BID[0:0],m_axi_hostmem_BRESP[1:0],m_axi_hostmem_BVALID,m_axi_hostmem_BREADY,m_axi_hostmem_ARID[0:0],m_axi_hostmem_ARADDR[63:0],m_axi_hostmem_ARLEN[7:0],m_axi_hostmem_ARSIZE[2:0],m_axi_hostmem_ARBURST[1:0],m_axi_hostmem_ARLOCK[1:0],m_axi_hostmem_ARREGION[3:0],m_axi_hostmem_ARCACHE[3:0],m_axi_hostmem_ARPROT[2:0],m_axi_hostmem_ARQOS[3:0],m_axi_hostmem_ARVALID,m_axi_hostmem_ARREADY,m_axi_hostmem_RID[0:0],m_axi_hostmem_RDATA[31:0],m_axi_hostmem_RRESP[1:0],m_axi_hostmem_RLAST,m_axi_hostmem_RVALID,m_axi_hostmem_RREADY";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "kalman_filter_top,Vivado 2022.2";
begin
end;
