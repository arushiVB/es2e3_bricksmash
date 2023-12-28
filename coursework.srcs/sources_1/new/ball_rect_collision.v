`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.12.2023 19:29:22
// Design Name: 
// Module Name: ball_rect_collision
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


module ball_rect_collision (
    input [15:0] ball_x,
    ball_y,
    ball_radius_sqd,
    rect_x,
    rect_y,
    rect_width,
    rect_height,
    output collision
);

  // need more bits since going to get squared
  reg [31:0] test_x, test_y;  // position on rect to test against
  reg [31:0] delta_x, delta_y;
  reg [31:0] abs_delta_x, abs_delta_y;

  reg rcollision;

  assign collision = rcollision;

  always @* begin

    // get the correct edge to test against
    if (ball_x < rect_x) test_x = rect_x;  // left edge
    else if (ball_x > rect_x + rect_width) test_x = rect_x + rect_width;  // right edge
    else test_x = ball_x;

    if (ball_y < rect_y) test_y = rect_y;  // top edge
    else if (ball_y > rect_y + rect_height) test_y = rect_y + rect_height;  // bottom edge
    else test_y = ball_y;

    // calculate distance vector
    delta_x = ball_x - test_x;
    delta_y = ball_y - test_y;

    // take abs
    if (delta_x[31] == 1'b1) abs_delta_x = -delta_x;
    else abs_delta_x = delta_x;
    if (delta_y[31] == 1'b1) abs_delta_y = -delta_y;
    else abs_delta_y = delta_y;

    rcollision = 0;

    if (((abs_delta_x * abs_delta_x) + (abs_delta_y * abs_delta_y)) < ball_radius_sqd) begin
      rcollision = 1;
      // collision occured
      //   if (ball_x < rect_x) rcollision[0] = 1;  // left edge bounce left
      //   if (ball_x > rect_x + rect_width) rcollision[1] = 1;  // right edge bounce right
      //   if (ball_y < rect_y) rcollision[2] = 1;  // top edge bounce up
      //   if (ball_y > rect_y + rect_height) rcollision[3] = 1;  // bottom edge bounce down
    end
  end
endmodule
