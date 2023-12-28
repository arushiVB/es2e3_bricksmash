`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.10.2023 12:35:04
// Design Name: 
// Module Name: vga_out
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


module vga_out #(
    parameter H_VISIBLE = 1440,
    H_FRONT_PORCH = 80,
    H_SYNC_PULSE = 152,
    H_BACK_PORCH = 232,
    H_TOTAL = H_VISIBLE + H_BACK_PORCH + H_FRONT_PORCH + H_SYNC_PULSE - 1,

    V_VISIBLE = 900,
    V_FRONT_PORCH = 1,
    V_SYNC_PULSE = 3,
    V_BACK_PORCH = 28,
    V_TOTAL = V_VISIBLE + V_BACK_PORCH + V_FRONT_PORCH + V_SYNC_PULSE - 1

) (
    input clk,
    output [11:0] curr_x,
    curr_y,
    output hsync,
    vsync,
    disp_enabled
);

  reg [10:0] hcount;
  reg [ 9:0] vcount;

  initial hcount <= 11'd0;
  initial vcount <= 10'd0;

  always @(posedge clk) begin
    if (hcount >= H_TOTAL) hcount <= 0;
    else hcount <= hcount + 1;
  end

  always @(posedge clk) begin
    if (hcount == H_TOTAL) begin
      if (vcount >= V_TOTAL) vcount <= 0;
      else vcount <= vcount + 1;
    end

  end

  assign hsync = (hcount >= 0) && (hcount <= H_SYNC_PULSE - 1);
  assign vsync = (vcount >= 0) && (vcount <= V_SYNC_PULSE - 1);

  wire visible_x = hcount >= H_SYNC_PULSE + H_BACK_PORCH && hcount <= H_TOTAL - H_FRONT_PORCH;
  wire visible_y = vcount >= V_SYNC_PULSE + V_BACK_PORCH && vcount <= V_TOTAL - V_FRONT_PORCH;

  assign disp_enabled = visible_x && visible_y;

  assign curr_x = (disp_enabled) ? (hcount - (H_SYNC_PULSE + H_BACK_PORCH)) : 0;
  assign curr_y = (disp_enabled) ? (vcount - (V_SYNC_PULSE + V_BACK_PORCH)) : 0;

endmodule
