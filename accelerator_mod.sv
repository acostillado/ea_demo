
module ea_demo(
    input            chipset_clk,
    input            mc_clk,
    input   [4:0]    pcie_gpio ,
    output           ExtArstn,
    input            mc_rstn,

    // AXI Write Address Channel Signals
    output   [`AXI4_ID_WIDTH     -1:0]    mem_axi_awid,
    output   [`AXI4_ADDR_WIDTH   -1:0]    mem_axi_awaddr,
    output   [`AXI4_LEN_WIDTH    -1:0]    mem_axi_awlen,
    output   [`AXI4_SIZE_WIDTH   -1:0]    mem_axi_awsize,
    output   [`AXI4_BURST_WIDTH  -1:0]    mem_axi_awburst,
    output                                mem_axi_awlock,
    output   [`AXI4_CACHE_WIDTH  -1:0]    mem_axi_awcache,
    output   [`AXI4_PROT_WIDTH   -1:0]    mem_axi_awprot,
    output   [`AXI4_QOS_WIDTH    -1:0]    mem_axi_awqos,
    output   [`AXI4_REGION_WIDTH -1:0]    mem_axi_awregion,
    output   [`AXI4_USER_WIDTH   -1:0]    mem_axi_awuser,
    output                                mem_axi_awvalid,
    input                                 mem_axi_awready,

    // AXI Write Data Channel Signals
    output   [`AXI4_ID_WIDTH     -1:0]    mem_axi_wid,
    output   [`AXI4_DATA_WIDTH   -1:0]    mem_axi_wdata,
    output   [`AXI4_STRB_WIDTH   -1:0]    mem_axi_wstrb,
    output                                mem_axi_wlast,
    output   [`AXI4_USER_WIDTH   -1:0]    mem_axi_wuser,
    output                                mem_axi_wvalid,
    input                                 mem_axi_wready,

    // AXI Read Address Channel Signals
    output   [`AXI4_ID_WIDTH     -1:0]    mem_axi_arid,
    output   [`AXI4_ADDR_WIDTH   -1:0]    mem_axi_araddr,
    output   [`AXI4_LEN_WIDTH    -1:0]    mem_axi_arlen,
    output   [`AXI4_SIZE_WIDTH   -1:0]    mem_axi_arsize,
    output   [`AXI4_BURST_WIDTH  -1:0]    mem_axi_arburst,
    output                                mem_axi_arlock,
    output   [`AXI4_CACHE_WIDTH  -1:0]    mem_axi_arcache,
    output   [`AXI4_PROT_WIDTH   -1:0]    mem_axi_arprot,
    output   [`AXI4_QOS_WIDTH    -1:0]    mem_axi_arqos,
    output   [`AXI4_REGION_WIDTH -1:0]    mem_axi_arregion,
    output   [`AXI4_USER_WIDTH   -1:0]    mem_axi_aruser,
    output                                mem_axi_arvalid,
    input                                 mem_axi_arready,

    // AXI Read Data Channel Signals
    input    [`AXI4_ID_WIDTH     -1:0]    mem_axi_rid,
    input    [`AXI4_DATA_WIDTH   -1:0]    mem_axi_rdata,
    input    [`AXI4_RESP_WIDTH   -1:0]    mem_axi_rresp,
    input                                 mem_axi_rlast,
    input    [`AXI4_USER_WIDTH   -1:0]    mem_axi_ruser,
    input                                 mem_axi_rvalid,
    output                                mem_axi_rready,

    // AXI Write Response Channel Signals
    input    [`AXI4_ID_WIDTH     -1:0]    mem_axi_bid,
    input    [`AXI4_RESP_WIDTH   -1:0]    mem_axi_bresp,
    input    [`AXI4_USER_WIDTH   -1:0]    mem_axi_buser,
    input                                 mem_axi_bvalid,
    output                                mem_axi_bready,

    input mem_calib_complete
);