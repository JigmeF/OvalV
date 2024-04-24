`timescale 1ns / 1ps 


module oval_tb;

    //params
    parameter PERIOD = 10;  //clock period is 10 ns
    
    //signal junk
    reg clock;
    reg reset;
    //there is a bunch of inputs ports for the riscv core. They are the following: 
    // ,input           axi_i_awready_i
    // ,input           axi_i_wready_i
    // ,input           axi_i_bvalid_i
    // ,input  [  1:0]  axi_i_bresp_i
    // ,input  [  3:0]  axi_i_bid_i
    // ,input           axi_i_arready_i
    // ,input           axi_i_rvalid_i
    // ,input  [ 31:0]  axi_i_rdata_i
    // ,input  [  1:0]  axi_i_rresp_i
    // ,input  [  3:0]  axi_i_rid_i
    // ,input           axi_i_rlast_i
    // ,input           axi_d_awready_i
    // ,input           axi_d_wready_i
    // ,input           axi_d_bvalid_i
    // ,input  [  1:0]  axi_d_bresp_i
    // ,input  [  3:0]  axi_d_bid_i
    // ,input           axi_d_arready_i
    // ,input           axi_d_rvalid_i
    // ,input  [ 31:0]  axi_d_rdata_i
    // ,input  [  1:0]  axi_d_rresp_i
    // ,input  [  3:0]  axi_d_rid_i
    // ,input           axi_d_rlast_i
    // ,input           intr_i 
    // ,input  [ 31:0]  reset_vector_i !!

    // we need to understand axi, most of these input ports are related to AXI. 
    // if no width is specified, default is 1 bit 
    //https://support.xilinx.com/s/article/1053914?language=en_US

    // init core
    riscv_top
    guy (
        .clk_i(clock),
        .rst_i(reset)
    )

endmodule


// example tb
// `timescale 1ns / 1ps

// module testbench;

//   // Parameters
//   parameter CLK_PERIOD = 10; // Clock period in ns

//   // Signals
//   reg clk;
//   reg rst;
  
//   // Instantiate RISC-V Core
//   riscv_core dut (
//     .clk(clk),
//     .rst(rst),
//     // Connect other ports here
//   );

//   // Clock Generation
//   always #((CLK_PERIOD)/2) clk = ~clk;

//   // Reset Generation
//   initial begin
//     clk = 0;
//     rst = 1;
//     #100; // Reset for 100 ns
//     rst = 0;
//     #100; // Wait some cycles after reset
//     // Provide inputs and monitor outputs here
//     // Add your test scenarios here
//     // Check expected results here
//     $finish; // Finish simulation
//   end

// endmodule
