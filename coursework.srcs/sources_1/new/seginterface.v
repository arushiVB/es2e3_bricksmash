`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/20/2023 11:29:13 PM
// Design Name: 
// Module Name: seginterface
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

module seginterface(
        input clk,
        input [3:0] digit7, digit6, digit5, digit4, digit3, digit2, digit1, digit0,
        output div_clk,
        output ssa, ssb, ssc, ssd, sse, ssf, ssg,
        output [7:0] an
    );
    

    
    wire led_clk;
    reg [3:0] dig_sel;
    
    reg [28:0] clk_count = 11'd0;
    
    always @(posedge clk)
        clk_count <= clk_count + 1'b1;
    
    assign led_clk = clk_count[16];
    assign div_clk = clk_count[25];
    
    reg [7:0] led_strobe = 8'b11111110;
    always @(posedge led_clk)
        led_strobe <= {led_strobe[6:0],led_strobe[7]};
    assign an = led_strobe;
        
    reg [2:0] led_index = 3'd0;
    always @(posedge led_clk)
        led_index <= led_index + 1'b1;

    always@*    
        case (led_index)
            3'd0: dig_sel = digit0;
            3'd1: dig_sel = digit1;
            3'd2: dig_sel = digit2;
            3'd3: dig_sel = digit3;
            3'd4: dig_sel = digit4;
            3'd5: dig_sel = digit5;
            3'd6: dig_sel = digit6;
            3'd7: dig_sel = digit7;
        endcase        
    
    sevenseg M1 (.num(dig_sel), .ssa(ssa), .ssb(ssb), .ssc(ssc), .ssd(ssd), .sse(sse), .ssf(ssf), .ssg(ssg));
    
endmodule