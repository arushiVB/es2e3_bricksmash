`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.12.2023 22:14:04
// Design Name: 
// Module Name: sim_vga
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module sim_vga ();
  reg clk;
  reg rst;

  wire [11:0] curr_x, curr_y;
  wire hsync, vsync, disp_enabled;

  initial begin
    #1 clk = 0;
    rst = 0;
    #10 rst = 1;
  end

  always begin
    #1 clk = ~clk;
  end

  vga_out V1 (
      clk,
      curr_x,
      curr_y,
      hsync,
      vsync,
      disp_enabled
  );

endmodule
