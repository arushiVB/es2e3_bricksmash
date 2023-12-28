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

module game_top (
    input clk,
    input [2:0] sw,
    input btnl,
    btnr,
    output [3:0] r,
    output [3:0] g,
    output [3:0] b,
    output hsync,
    output vsync,
    output ssa,
    output ssb,
    output ssc,
    output ssd,
    output sse,
    output ssf,
    output ssg,
    output[7:0] an
);

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
              BALL_RADIUS_SQD = BALL_RADIUS*BALL_RADIUS;

  wire disp_enabled;
  wire [11:0] draw_x, draw_y, ball_x, ball_y;
  wire [11:0] paddle_x, paddle_y;

  wire [BRICKS_PER_LAYER*BRICK_LAYERS:0] brick_vector;
  wire heart1_vector;
  wire heart2_vector;
  wire heart3_vector;
  wire lives;

  wire pxl_clk;

  clk_wiz_0 CLK1 (
      // Clock out ports
      .clk_out1(pxl_clk),  // output clk_out1
      // Clock in ports
      .clk_in1 (clk)       // input clk_in1
  );


  vga_out V1 (
      pxl_clk,
      draw_x,
      draw_y,
      hsync,
      vsync,
      disp_enabled

  );

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
  ) D1 (
      pxl_clk,
      paddle_x,
      paddle_y,
      ball_x,
      ball_y,
      draw_x,
      draw_y,
      brick_vector,
      heart1_vector,
      heart2_vector,
      heart3_vector,
      disp_enabled,
      r,
      g,
      b
  );

  game_logic #(PADDLE_WIDTH,
  PADDLE_HEIGHT,
  BRICK_WIDTH,
  BRICK_HEIGHT,
  BRICKS_PER_LAYER,
  BRICK_LAYERS,
  BORDER_SIZE,
  INFOBAR_SIZE,
  SCREEN_WIDTH,
  SCREEN_HEIGHT,
  MOVE_DISTANCE,
  BALL_RADIUS
  ) G1 (
      pxl_clk,
      vsync,
      btnl,
      btnr,
      paddle_x,
      paddle_y,
      ball_x,
      ball_y,
      brick_vector,
      heart1_vector,
      heart2_vector,
      heart3_vector
//      lives
  );

  wire [3:0] digit0;
    wire [3:0] digit1;
    wire [3:0] digit2 ;
    wire [3:0] digit3 ;
    wire [3:0] digit4 ;
    wire [3:0] digit5 ;
    wire [3:0] digit6 ;
    wire [3:0] digit7 ;
  
    seginterface inst1 (.clk(clk), .digit7(digit7), .digit6(digit6), .digit5(digit5), .digit4(digit4), .digit3(digit3), .digit2(digit2), .digit1(digit1), .digit0(digit0),.div_clk(div_clk),.ssa(ssa), .ssb(ssb), .ssc(ssc), .ssd(ssd), .sse(sse), .ssf(ssf), .ssg(ssg), .an(an));

   assign digit7= 4'h8;
   assign digit6= 4'hA;
   assign digit5= 4'h1;
   assign digit4= 4'hC;
   assign digit3= 4'h5;
   assign digit2= 4'hA;
   assign digit1= 4'h5;
   assign digit0= 4'hA;

endmodule
