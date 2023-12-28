`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.12.2023 16:53:58
// Design Name: 
// Module Name: sim_collision
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


module sim_collision ();

  reg [15:0] test_x;
  reg [15:0] test_y;
  reg [15:0] delta_x;
  reg [15:0] delta_y;
  reg [15:0] delta_x_abs;
  reg [15:0] delta_y_abs;

  // Takes in a circle and rectangle position and size, and outputs where they are colliding, if at all.
  function automatic [3:0] rect_circle_collision(input [15:0] circle_x, circle_y, circle_radius_sqd,
                                                 rect_x, rect_y, rect_width, rect_height);
    begin

      // Calculate the test point, which is a point on the rectangle closest to the circle.

      if (circle_x < rect_x) test_x = rect_x;  // left edge
      else if (circle_x > rect_x + rect_width) test_x = rect_x + rect_width;  // right edge
      else test_x = circle_x;

      if (circle_y < rect_y) test_y = rect_y;  // top edge
      else if (circle_y > rect_y + rect_height) test_y = rect_y + rect_height;  // bottom edge
      else test_y = circle_y;

      // calculate distance vector
      delta_x = circle_x - test_x;
      delta_y = circle_y - test_y;

      // take abs
      if (delta_x[15] == 1'b1) delta_x_abs = -delta_x;
      else delta_x_abs = delta_x;
      if (delta_y[15] == 1'b1) delta_y_abs = -delta_y;
      else delta_y_abs = delta_y;

      if (((delta_x_abs * delta_x_abs) + (delta_y_abs * delta_y_abs)) < circle_radius_sqd) begin
        // collision occured
        if (circle_x < rect_x) rect_circle_collision[0] = 1;  // left edge of rect
        else rect_circle_collision[0] = 0;
        if (circle_x > rect_x + rect_width) rect_circle_collision[1] = 1;  // right edge of rect
        else rect_circle_collision[1] = 0;
        if (circle_y < rect_y) rect_circle_collision[2] = 1;  // top edge of rect
        else rect_circle_collision[2] = 0;
        if (circle_y > rect_y + rect_height) rect_circle_collision[3] = 1;  // bottom edge of rect
        else rect_circle_collision[3] = 0;
      end else rect_circle_collision = 0;

    end
  endfunction

  parameter 
              
              PADDLE_WIDTH = 10,
              PADDLE_HEIGHT = 5,
              
              BALL_RADIUS = 2,
              BALL_RADIUS_SQD = BALL_RADIUS*BALL_RADIUS;

  reg [15:0] ball_x = 0;
  reg [15:0] ball_y = 0;
  reg [15:0] paddle_x = 0;
  reg [15:0] paddle_y = 5;


  reg [3:0] ball_collision;

  reg clk;

  initial begin
    #1 clk = 0;
    #1 ball_collision = 0;
  end

  always begin
    #1 clk = ~clk;
  end

  always @(posedge clk) begin

    ball_collision <= rect_circle_collision(
        ball_x, ball_y, BALL_RADIUS_SQD, paddle_x, paddle_y, PADDLE_WIDTH, PADDLE_HEIGHT
    );

    ball_y <= ball_y + 1;
  end

endmodule
