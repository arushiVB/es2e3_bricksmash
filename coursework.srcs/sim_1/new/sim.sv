`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.12.2023 11:48:32
// Design Name: 
// Module Name: sim
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

module sim(

    );
    localparam CLK_PERIOD = 10;
    localparam EN_PERIOD = 100;
    
    reg clk;
    initial clk =1'b0;
    
    always #(CLK_PERIOD/2.0)
        clk = ~clk;
        
    reg [2:0] sw;
    reg btnl, btnr;
    reg [3:0] r, g, b;
    reg hsync, vsync;
    
    initial begin 
        #10 sw <= 0; 
        #10 btnl <= 0; 
        #10 btnr <= 0; 
        #10 r <= 0; 
        #10 g <= 0; 
        #10 b <= 0; 
        #10 hsync <= 0;
        #10 vsync <= 0;
    end
    
    game_top M1(
    clk,
     sw,
    btnl, btnr,
    r,
    g,
    b,
    hsync,
    vsync
    );
    

endmodule
