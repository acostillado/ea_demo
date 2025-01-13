
module ea_demo(
    input            chipset_clk,
    input            mc_clk,
    input   [4:0]    pcie_gpio ,
    output           ExtArstn,
    input            mc_rstn,

       // AXI Write Address Channel Signals
    output  [5:0]    mem_axi_awid ,
    output  [63:0]   mem_axi_awaddr ,
    output  [7:0]    mem_axi_awlen ,
    output  [2:0]    mem_axi_awsize ,
    output  [1:0]    mem_axi_awburst ,
    //output           mem_axi_awlock ,
    //output  [3:0]    mem_axi_awcache ,
    //output  [2:0]    mem_axi_awprot ,
    //output  [3:0]    mem_axi_awqos ,
    //output  [3:0]    mem_axi_awregion ,
    output  [10:0]   mem_axi_awuser ,
    output           mem_axi_awvalid ,
    input            mem_axi_awready ,

    // AXI Write Data Channel Signals
    output  [255:0] mem_axi_wdata ,
    output  [63:0]  mem_axi_wstrb ,
    output          mem_axi_wlast ,
    output  [10:0]  mem_axi_wuser ,
    output          mem_axi_wvalid ,
    input           mem_axi_wready ,

    // AXI Read Address Channel Signals
    output  [5:0]   mem_axi_arid ,
    output  [63:0]  mem_axi_araddr ,
    output  [7:0]   mem_axi_arlen ,
    output  [2:0]   mem_axi_arsize ,
    output  [1:0]   mem_axi_arburst ,
    //output          mem_axi_arlock ,
    //output  [3:0]   mem_axi_arcache ,
    //output  [2:0]   mem_axi_arprot ,
    //output  [3:0]   mem_axi_arqos ,
    //output  [3:0]   mem_axi_arregion ,
    output  [10:0]  mem_axi_aruser ,
    output          mem_axi_arvalid ,
    input           mem_axi_arready ,

    // AXI Read Data Channel Signals
    input   [5:0]    mem_axi_rid ,
    input   [255:0]  mem_axi_rdata ,
    input   [1:0]    mem_axi_rresp ,
    input            mem_axi_rlast ,
    input   [10:0]   mem_axi_ruser ,
    input            mem_axi_rvalid ,
    output           mem_axi_rready ,

    // AXI Write Response Channel Signals
    input   [5:0]    mem_axi_bid ,
    input   [1:0]    mem_axi_bresp ,
    input   [10:0]   mem_axi_buser ,
    input            mem_axi_bvalid ,
    output           mem_axi_bready ,

    input mem_calib_complete
);