`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.11.2023 13:22:26
// Design Name: 
// Module Name: drawcon
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


module drawcon #(
    parameter PADDLE_WIDTH = 360,
    PADDLE_HEIGHT = 180,
    BRICK_WIDTH = 48,
    BRICK_HEIGHT = 16,
    BRICKS_PER_LAYER = 15,
    BRICK_LAYERS = 5,
    BORDER_SIZE = 15,
    INFOBAR_SIZE = 100,
    GAME_TITLE_WIDTH = 223,
    GAME_TITLE_HEIGHT = 100,
    ID_WIDTH = 267,
    ID_HEIGHT = 100,
    HEART_WIDTH = 79,
    HEART_HEIGHT = 100,
    LIVES_WIDTH = 239,
    LIVES_HEIGHT = 100,
    SCREEN_WIDTH = 1440,
    SCREEN_HEIGHT = 900,
    BALL_RADIUS_SQD = 400
) (
    input clk,

    input [11:0] paddle_x,
    paddle_y,
    ball_x,
    ball_y,
    draw_x,
    draw_y,
    input [BRICKS_PER_LAYER*BRICK_LAYERS:0] brick_vector,
    input heart1_vector,
    input heart2_vector,
    input heart3_vector,
    input disp_enabled,
    output [3:0] r,
    g,
    b
);

  reg [3:0] bg_r;
  reg [3:0] bg_g;
  reg [3:0] bg_b;


  always @* begin

    if (draw_x < BORDER_SIZE || draw_x >= (SCREEN_WIDTH - BORDER_SIZE) || draw_y < BORDER_SIZE + INFOBAR_SIZE || draw_y > (SCREEN_HEIGHT-BORDER_SIZE)) begin
      // draw the border
      bg_r = 4'd3;
      bg_g = 4'd3;
      bg_b = 4'd3;
    end else begin
      // draw the background
      bg_r = 4'd0;
      bg_g = 4'd0;
      bg_b = 4'd0;
    end
  end


  reg  [11:0] delta_x;
  reg  [11:0] delta_y;
  //   reg  [11:0] i;
  //   reg  [11:0] j;

  reg  [ 3:0] obj_r;
  reg  [ 3:0] obj_g;
  reg  [ 3:0] obj_b;

  reg  [15:0] paddle_addr = 0;
  wire [11:0] paddle_pxl;

  reg  [15:0] brick_addr = 0;  // sprite address
  wire [11:0] brick_pxl;  // pixel value at address

  reg  [11:0] brick_x = 0;  // x into brick (pixels)
  reg  [11:0] brick_y = 0;  // y into brick (pixels)
  reg  [11:0] brick_ix = 0;  // i'th brick along (brick index x)
  reg  [11:0] brick_iy = 0;  // i'th brick down (brick index y)
  
  reg  [14:0] title_addr;
  wire [11:0] title_pxl;
  
  reg  [14:0] id_addr;
  wire [11:0] id_pxl;
  
  reg  [14:0] lives_addr;
  wire [11:0] lives_pxl;
  
  reg  [12:0] heart3_addr;
  wire [11:0] heart3_pxl;
  
  reg  [12:0] heart2_addr;
  wire [11:0] heart2_pxl;
  
  reg  [12:0] heart1_addr;
  wire [11:0] heart1_pxl;

  reg [14:0] title_pos_x = BORDER_SIZE;
  reg [14:0] title_pos_y = BORDER_SIZE ;
  
  reg [14:0] id_pos_x = 1158;
  reg [14:0] id_pos_y = 12;
  
  reg [14:0] heart3_pos_x = 1079;
  reg [14:0] heart3_pos_y = 12;

  reg [14:0] heart2_pos_x = 1000;
  reg [14:0] heart2_pos_y = 12;
  
  reg [14:0] heart1_pos_x = 921;
  reg [14:0] heart1_pos_y = 12;
  
  reg [14:0] lives_pos_x = 682;
  reg [14:0] lives_pos_y = 12;


   reg draw_paddle, draw_ball, draw_brick, draw_title, draw_id, draw_heart3, draw_heart2, draw_heart1, draw_lives;

  paddle_sprite paddle_sprite0 (
      .clka(clk),  // input wire clka
      .addra(paddle_addr),  // input wire [13 : 0] addra
      .douta(paddle_pxl)  // output wire [11 : 0] douta
  );

  brick_sprite brick_sprite0 (
      .clka(clk),  // input wire clka
      .addra(brick_addr),  // input wire [13 : 0] addra
      .douta(brick_pxl)  // output wire [11 : 0] douta
  );

 title_sprite title_sprite0 (
      .clka(clk),  // input wire clka
      .addra(title_addr),  // input wire [13 : 0] addra
      .douta(title_pxl)  // output wire [11 : 0] douta
  );
  
 id_sprite id_sprite0 (
      .clka(clk),  // input wire clka
      .addra(id_addr),  // input wire [13 : 0] addra
      .douta(id_pxl)  // output wire [11 : 0] douta
  );
  
  heart_sprite heart_sprite0 (
      .clka(clk),  // input wire clka
      .addra(heart3_addr),  // input wire [13 : 0] addra
      .douta(heart3_pxl)  // output wire [11 : 0] douta
  );
  
  heart_sprite heart_sprite1 (
      .clka(clk),  // input wire clka
      .addra(heart2_addr),  // input wire [13 : 0] addra
      .douta(heart2_pxl)  // output wire [11 : 0] douta
  );
  
  heart_sprite heart_sprite2 (
      .clka(clk),  // input wire clka
      .addra(heart1_addr),  // input wire [13 : 0] addra
      .douta(heart1_pxl)  // output wire [11 : 0] douta
  );
  
  lives_sprite lives_sprite0 (
      .clka(clk),  // input wire clka
      .addra(lives_addr),  // input wire [13 : 0] addra
      .douta(lives_pxl)  // output wire [11 : 0] douta
  );
  always @(posedge clk) begin
    obj_r <= 0;
    obj_g <= 0;
    obj_b <= 0;

    draw_paddle <= 0;
    draw_ball <= 0;
    draw_brick <= 0;
    draw_title <= 0;
    draw_id <= 0;
    draw_heart3 <= 0;
    draw_heart2 <= 0;
    draw_heart1 <= 0;
    draw_lives <= 0;

    if (draw_x > ball_x) delta_x <= draw_x - ball_x;
    else delta_x <= ball_x - draw_x;

    if (draw_y > ball_y) delta_y <= draw_y - ball_y;
    else delta_y <= ball_y - draw_y;

    if (draw_x >= paddle_x && draw_x < paddle_x+PADDLE_WIDTH && 
              draw_y >= paddle_y && draw_y < paddle_y+PADDLE_HEIGHT) begin

      obj_r <= paddle_pxl[11:8];
      obj_g <= paddle_pxl[7:4];
      obj_b <= paddle_pxl[3:0];
      draw_paddle <= 1;


      if (paddle_addr == (PADDLE_WIDTH * PADDLE_HEIGHT) - 1) begin
        paddle_addr <= 0;
      end else begin
        paddle_addr <= paddle_addr + 1;
      end
    end 
     else  if (draw_x >= title_pos_x && draw_x < title_pos_x + GAME_TITLE_WIDTH &&
        draw_y >= title_pos_y && draw_y < title_pos_y + GAME_TITLE_HEIGHT) begin

      title_addr <= (draw_x - title_pos_x) + GAME_TITLE_WIDTH * (draw_y - title_pos_y);

      obj_r <= title_pxl[11:8];
      obj_g <= title_pxl[7:4];
      obj_b <= title_pxl[3:0];
      draw_title <= 1;
    end
    
 else if (draw_x >= id_pos_x && draw_x < id_pos_x + ID_WIDTH &&
        draw_y >= id_pos_y  && draw_y < id_pos_y + ID_HEIGHT) begin
        
      id_addr <= (draw_x - id_pos_x) + ID_WIDTH * (draw_y - id_pos_y);
        
       obj_r <= id_pxl[11:8];
       obj_g <= id_pxl[7:4];
       obj_b <= id_pxl[3:0];
       draw_id <= 1;
    end
   
   else if (draw_x >= heart3_pos_x && draw_x < heart3_pos_x + HEART_WIDTH &&
        draw_y >= heart3_pos_y  && draw_y < heart3_pos_y + HEART_HEIGHT) begin
        if(heart3_vector) begin
      heart3_addr <= (draw_x - heart3_pos_x) + HEART_WIDTH * (draw_y - heart3_pos_y);
        
       obj_r <= heart3_pxl[11:8];
       obj_g <= heart3_pxl[7:4];
       obj_b <= heart3_pxl[3:0];
       draw_heart3 <= 1;
    end 
 end 
   else if (draw_x >= heart2_pos_x && draw_x < heart2_pos_x + HEART_WIDTH &&
        draw_y >= heart2_pos_y  && draw_y < heart2_pos_y + HEART_HEIGHT) begin
         if(heart2_vector) begin
      heart2_addr <= (draw_x - heart2_pos_x) + HEART_WIDTH * (draw_y - heart2_pos_y);
        
       obj_r <= heart2_pxl[11:8];
       obj_g <= heart2_pxl[7:4];
       obj_b <= heart2_pxl[3:0];
       draw_heart2 <= 1;
    end   
end
    else if (draw_x >= heart1_pos_x && draw_x < heart1_pos_x + HEART_WIDTH &&
        draw_y >= heart1_pos_y  && draw_y < heart1_pos_y + HEART_HEIGHT) begin
         if(heart1_vector) begin
      heart1_addr <= (draw_x - heart1_pos_x) + HEART_WIDTH * (draw_y - heart1_pos_y);
        
       obj_r <= heart1_pxl[11:8];
       obj_g <= heart1_pxl[7:4];
       obj_b <= heart1_pxl[3:0];
       draw_heart1 <= 1;
    end   
 end   
    else if (draw_x >= lives_pos_x && draw_x < lives_pos_x + LIVES_WIDTH &&
        draw_y >= lives_pos_y  && draw_y < lives_pos_y + LIVES_HEIGHT) begin
        
      lives_addr <= (draw_x - lives_pos_x) + LIVES_WIDTH * (draw_y - lives_pos_y);
        
       obj_r <= lives_pxl[11:8];
       obj_g <= lives_pxl[7:4];
       obj_b <= lives_pxl[3:0];
       draw_lives <= 1;
    end      
 
    
    else if (((delta_x * delta_x) + (delta_y * delta_y)) < BALL_RADIUS_SQD) begin
      // ball 
      obj_r <= 15;
      obj_g <= 0;
      obj_b <= 0;
      draw_ball <= 1;

      // bricks
    end else if (draw_x >= BORDER_SIZE && draw_x < (BRICKS_PER_LAYER * BRICK_WIDTH) + BORDER_SIZE && 
                draw_y >= BORDER_SIZE + INFOBAR_SIZE && draw_y < (BRICK_LAYERS * BRICK_HEIGHT) + BORDER_SIZE + INFOBAR_SIZE) begin
      // within the area containing bricks
      if (brick_vector[brick_ix+(brick_iy*BRICKS_PER_LAYER)]) begin  // brick isn't broken
        obj_r <= brick_pxl[11:8];
        obj_g <= brick_pxl[7:4];
        obj_b <= brick_pxl[3:0];
        draw_brick <= 1;
      end

    end

    if (draw_x >= BORDER_SIZE && draw_x < (BRICKS_PER_LAYER * BRICK_WIDTH) + BORDER_SIZE && 
                draw_y >= BORDER_SIZE + INFOBAR_SIZE && draw_y < (BRICK_LAYERS * BRICK_HEIGHT) + BORDER_SIZE + INFOBAR_SIZE) begin
      if (brick_x == BRICK_WIDTH - 1) begin
        brick_x <= 0;

        if (brick_ix == BRICKS_PER_LAYER - 1) begin
          brick_ix <= 0;

          if (brick_y == BRICK_HEIGHT - 1) begin
            brick_y <= 0;
            if (brick_iy == BRICK_LAYERS - 1) begin
              brick_iy <= 0;
            end else begin
              brick_iy <= brick_iy + 1;
            end
          end else begin
            brick_y <= brick_y + 1;
          end

        end else begin
          brick_ix <= brick_ix + 1;
        end

      end else begin
        brick_x <= brick_x + 1;
      end

      brick_addr <= brick_x + (brick_y * BRICK_WIDTH);
    end

  end

  wire obj_drawn = draw_paddle || draw_ball || draw_brick || draw_title || draw_id || draw_heart3 || draw_heart2 || draw_heart1 || draw_lives;

  assign r = disp_enabled ? (obj_drawn ? obj_r : bg_r) : 0;
  assign g = disp_enabled ? (obj_drawn ? obj_g : bg_g) : 0;
  assign b = disp_enabled ? (obj_drawn ? obj_b : bg_b) : 0;

endmodule
