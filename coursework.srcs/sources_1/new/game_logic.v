`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.12.2023 19:43:42
// Design Name: 
// Module Name: game_logic
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


module game_logic #(
    parameter PADDLE_WIDTH = 360,
    PADDLE_HEIGHT = 180,
    BRICK_WIDTH = 48,
    BRICK_HEIGHT = 16,
    BRICKS_PER_LAYER = 15,
    BRICK_LAYERS = 5,
    BORDER_SIZE = 15,
    INFOBAR_SIZE = 100,
    SCREEN_WIDTH = 1440,
    SCREEN_HEIGHT = 900,
    MOVE_DISTANCE = 4,
    BALL_RADIUS = 20,
    BALL_RADIUS_SQD = BALL_RADIUS * BALL_RADIUS,
    NUM_LIVES = 5
) (
    input clk,
    vsync,
    btnl,
    btnr,
    output reg [15:0] paddle_x_out,
    paddle_y_out,
    ball_x_out,
    ball_y_out,
    output reg [BRICKS_PER_LAYER*BRICK_LAYERS:0] brick_vector_out,
    output reg heart1_vector_out,
    output reg heart2_vector_out,
    output reg heart3_vector_out
);

  reg [15:0] paddle_x, paddle_y, ball_x, ball_y;
  reg [BRICKS_PER_LAYER*BRICK_LAYERS:0] brick_vector;
  reg heart1_vector;
  reg heart2_vector;
  reg heart3_vector;
//  reg lives = NUM_LIVES;

  // buffer across clock domains
  always @(posedge clk) begin
    paddle_x_out <= paddle_x;
    paddle_y_out <= paddle_y;
    ball_x_out <= ball_x;
    ball_y_out <= ball_y;
    brick_vector_out <= brick_vector;
    heart1_vector_out <= heart1_vector;
    heart2_vector_out <= heart2_vector;
    heart3_vector_out <= heart3_vector;
  end

  wire logic_clk;
  clk_wiz_1 LGC_CLK (
      // Clock out ports
      .clk_out1(logic_clk),  // output clk_out1
      // Clock in ports
      .clk_in1 (clk)         // input clk_in1
  );

  initial begin
    paddle_x = SCREEN_WIDTH / 2;
    paddle_y = SCREEN_HEIGHT - PADDLE_HEIGHT - 50;
    ball_x = SCREEN_WIDTH / 2;
    ball_y = SCREEN_HEIGHT - PADDLE_HEIGHT - BALL_RADIUS - 50 - 25;
    brick_vector = ~0;
    heart1_vector = ~0;
    heart2_vector = ~0;
    heart3_vector = ~0;
    
  end

  reg [15:0] ball_speed = 3;
  reg ball_dir_x = 1;
  reg ball_dir_y = 1;

  reg [15:0] brick_ix = 0, brick_iy = 0;  // brick x y index

  // current brick x y
  wire [15:0] brick_x = (brick_ix * BRICK_WIDTH) + BORDER_SIZE;
  wire [15:0] brick_y = (brick_iy * BRICK_HEIGHT) + BORDER_SIZE + INFOBAR_SIZE;

  reg enable = 0;  // holds true while processing, set true by vsync
  reg done = 0;

  wire ball_paddle_collision, ball_brick_collision;
  reg[12:0] j = NUM_LIVES;


  // collision modules
  ball_rect_collision paddle_collider (
      ball_x,
      ball_y,
      BALL_RADIUS_SQD,
      paddle_x,
      paddle_y,
      PADDLE_WIDTH,
      PADDLE_HEIGHT,
      ball_paddle_collision
  );

  ball_rect_collision brick_collider (
      ball_x,
      ball_y,
      BALL_RADIUS_SQD,
      brick_x,
      brick_y,
      BRICK_WIDTH,
      BRICK_HEIGHT,
      ball_brick_collision
  );

  reg last_vsync = 0;


  always @(posedge logic_clk) begin
    if (vsync && !last_vsync) begin
      // once per frame
      enable <= 1;

      // move the paddle
      if (btnl && paddle_x > BORDER_SIZE + MOVE_DISTANCE) begin
        paddle_x <= paddle_x - MOVE_DISTANCE;
      end

      if (btnr && paddle_x < (SCREEN_WIDTH - BORDER_SIZE) - PADDLE_WIDTH - MOVE_DISTANCE) begin
        paddle_x <= paddle_x + MOVE_DISTANCE;
      end

      if (paddle_x < BORDER_SIZE) paddle_x <= BORDER_SIZE;

      if (paddle_x > SCREEN_WIDTH - BORDER_SIZE - PADDLE_WIDTH)
        paddle_x <= SCREEN_WIDTH - BORDER_SIZE - PADDLE_WIDTH;

      // move the ball
      if (ball_dir_y == 0) ball_y <= ball_y - ball_speed;
      else ball_y <= ball_y + ball_speed;

      if (ball_dir_x == 0) ball_x <= ball_x - ball_speed;
      else ball_x <= ball_x + ball_speed;
    end

    if (done) begin
      enable <= 0;

    end

    if (enable) begin

      if (ball_brick_collision && brick_vector[brick_ix+(brick_iy*BRICKS_PER_LAYER)]) begin
        brick_vector[brick_ix+(brick_iy*BRICKS_PER_LAYER)] <= 0;
        if (ball_x < brick_x) ball_dir_x <= 0;  // left edge bounce left
        if (ball_x > brick_x + BRICK_WIDTH) ball_dir_x <= 1;  // right edge bounce right
        if (ball_y < brick_y) ball_dir_y <= 0;  // top edge bounce up
        if (ball_y > brick_y + BRICK_HEIGHT) ball_dir_y <= 1;  // bottom edge bounce down   
      end else if (ball_paddle_collision) begin  // ball - pddle collision
        if (ball_x < paddle_x) ball_dir_x <= 0;  // left edge bounce left
        if (ball_x > paddle_x + PADDLE_WIDTH) ball_dir_x <= 1;  // right edge bounce right
        if (ball_y < paddle_y) ball_dir_y <= 0;  // top edge bounce up
        if (ball_y > paddle_y + PADDLE_HEIGHT) ball_dir_y <= 1;  // bottom edge bounce down   
      end 
      
else if ((ball_y + BALL_RADIUS) > (SCREEN_HEIGHT - BORDER_SIZE)) begin
    ball_x <= SCREEN_WIDTH / 2;
    ball_y <= SCREEN_HEIGHT / 2;

    // Reset the paddle position
    paddle_x <= SCREEN_WIDTH / 2;
    paddle_y <= SCREEN_HEIGHT - PADDLE_HEIGHT - 50;
     
    
   // for (j = 0; j <= NUM_LIVES; j = j + 1) begin
    
    //if (j == 1) begin 
     //   heart_vector <= 0;  
       // brick_vector <= 0;  
    //end else if (j == NUM_LIVES) begin 
      //  heart_vector <= ~0;    
        //brick_vector <= ~0;  
        //j <= 0;
   // end
     
        // Other actions you might want to take when j is NUM_LIVES
     j <= j - 1;
  
   if (j == 3) begin
        heart1_vector <= 0;
    end else if (j == 2) begin
        heart2_vector <= 0;
    end  else if (j == 1) begin
        heart3_vector <= 0;
    end
    else begin
        brick_vector <= ~0;
        heart1_vector <= ~0;
        heart2_vector <= ~0;
        heart3_vector <= ~0;
    end

end
      else begin
        if ((ball_y - BALL_RADIUS) < (BORDER_SIZE + INFOBAR_SIZE)) ball_dir_y <= 1;
        if ((ball_y + BALL_RADIUS) > (SCREEN_HEIGHT - BORDER_SIZE)) ball_dir_y <= 0;
        if ((ball_x - BALL_RADIUS) < BORDER_SIZE) ball_dir_x <= 1;
        if ((ball_x + BALL_RADIUS) > (SCREEN_WIDTH - BORDER_SIZE)) ball_dir_x <= 0;
      end

    end

    last_vsync <= vsync;
  end

  always @(negedge logic_clk) begin
    done <= 0;
    if (enable) begin
      if (brick_ix < BRICKS_PER_LAYER - 1) brick_ix <= brick_ix + 1;
      else begin
        brick_ix <= 0;

        if (brick_iy < BRICK_LAYERS - 1) brick_iy <= brick_iy + 1;

        else begin
          done <= 1;

          brick_iy <= 0;
          brick_ix <= 0;
        end
      end
    end

  end
endmodule
