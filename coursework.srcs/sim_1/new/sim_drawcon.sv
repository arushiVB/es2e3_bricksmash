`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.12.2023 00:54:07
// Design Name: 
// Module Name: sim_drawcon
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


module sim_drawcon ();
  parameter SCREEN_WIDTH = 1440,
              SCREEN_HEIGHT = 900,
              
              BORDER_SIZE = 10,
              INFOBAR_SIZE = 100,
              
              PADDLE_WIDTH = 116,
              PADDLE_HEIGHT = 36,
              
              BRICK_WIDTH = 71,
              BRICK_HEIGHT = 32,
              BRICKS_PER_LAYER = 20, 
              BRICK_LAYERS = 5,
              
              MOVE_DISTANCE = 4,
              
              BALL_RADIUS = 20,
              BALL_RADIUS_SQD = 400;

  reg clk;
  reg rst;

  reg [11:0] paddle_x, paddle_y;
  reg [11:0] ball_x, ball_y;
  reg [11:0] draw_x, draw_y;

  reg [BRICKS_PER_LAYER*BRICK_LAYERS:0] brick_vector = ~0;

  wire [3:0] r, g, b;

  initial begin
    #1 clk = 0;
    rst = 0;
    paddle_x = SCREEN_WIDTH / 2;
    paddle_y = SCREEN_HEIGHT - PADDLE_HEIGHT - 50;
    // paddle_y = 15;
    ball_x = SCREEN_WIDTH / 2;
    ball_y = SCREEN_HEIGHT - PADDLE_HEIGHT - BALL_RADIUS - 50 - 25;
    draw_x = 0;
    draw_y = 0;
    #10 rst = 1;
  end

  always begin
    #1 clk = ~clk;
  end

  always @(posedge clk) begin
    if (draw_x < SCREEN_WIDTH - 1) begin
      draw_x <= draw_x + 1;
    end else begin
      draw_x <= 0;

      if (draw_y < SCREEN_HEIGHT - 1) begin
        draw_y <= draw_y + 1;
      end else begin
        draw_y <= 0;
      end
    end

  end

  drawcon #(
      .PADDLE_WIDTH(PADDLE_WIDTH),
      .PADDLE_HEIGHT(PADDLE_HEIGHT),
      .BRICK_WIDTH(BRICK_WIDTH),
      .BRICK_HEIGHT(BRICK_HEIGHT),
      .BRICKS_PER_LAYER(BRICKS_PER_LAYER),
      .BRICK_LAYERS(BRICK_LAYERS),
      .BORDER_SIZE(BORDER_SIZE),
      .INFOBAR_SIZE(INFOBAR_SIZE),
      .SCREEN_WIDTH(SCREEN_WIDTH),
      .SCREEN_HEIGHT(SCREEN_HEIGHT),
      .BALL_RADIUS_SQD(BALL_RADIUS_SQD)
  ) U1 (
      clk,
      paddle_x,
      paddle_y,
      ball_x,
      ball_y,
      draw_x,
      draw_y,
      brick_vector,
      r,
      g,
      b
  );

endmodule
