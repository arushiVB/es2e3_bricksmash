`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.12.2023 02:30:39
// Design Name: 
// Module Name: sim_game_logic
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


module sim_game_logic ();

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

  reg clk;
  reg vsync;  // fake vsync pulses

  reg btnl, btnr;

  wire [15:0] paddle_x, paddle_y, ball_x, ball_y;
  wire [BRICKS_PER_LAYER*BRICK_LAYERS:0] brick_vector;

  initial begin
    #1 clk = 0;
    #1 vsync = 0;
    #1 btnl = 0;
    #1 btnr = 0;
  end

  always begin
    #1 clk = ~clk;
  end
  always begin
    #120 vsync = ~vsync;
  end

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
      clk,
      vsync,
      btnl,
      btnr,
      paddle_x,
      paddle_y,
      ball_x,
      ball_y,
      brick_vector
  );

endmodule
