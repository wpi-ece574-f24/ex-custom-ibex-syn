`timescale 1ns / 1ps

module tb;

   reg clk;
   reg rst_n;

   reg [8:0] gpio_in;
   wire [8:0] gpio_out;

   top_rtl dut(.clk(clk), 
	       .rst_n(rst_n), 
	       .gpio_in(gpio_in), 
	       .gpio_out(gpio_out));

   always begin
      clk = 1'b0;
      #5 clk = 1'b1;
      #5;
   end
   
   initial begin
      rst_n = 1'b0;
      repeat (10) @(negedge clk);
      $readmemh("memory.hex", tb.dut.u_ibex_demo_system.u_ram.u_ram.gen_generic.u_impl_generic.mem);
      rst_n = 1'b1;
   end

endmodule
