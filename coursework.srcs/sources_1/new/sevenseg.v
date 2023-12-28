`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/20/2023 11:01:36 PM
// Design Name: 
// Module Name: sevenseg
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


`timescale 1ns / 1ps

module sevenseg(
    input [3:0] num,
    output ssa,
    output ssb,
    output ssc,
    output ssd,
    output sse,
    output ssf,
    output ssg
    );
    
    reg [6:0] intseg;
    assign {ssa,ssb,ssc,ssd,sse,ssf,ssg} = ~intseg;
    
    always@*
    begin
        case(num)
            4'h0: intseg = 7'b1111110;
            4'h1: intseg = 7'b0110000;
            4'h2: intseg = 7'b1101101;
            4'h3: intseg = 7'b1111001;
            4'h4: intseg = 7'b0110011;
            4'h5: intseg = 7'b1011011;
            4'h6: intseg = 7'b1011111;
            4'h7: intseg = 7'b1110000;
            4'h8: intseg = 7'b1111111;
            4'h9: intseg = 7'b1111011;
            4'ha: intseg = 7'b1110111;
            4'hb: intseg = 7'b0011111;
            4'hc: intseg = 7'b1001110;
            4'hd: intseg = 7'b0111101;
            4'he: intseg = 7'b1001111;
            4'hf: intseg = 7'b1000111;
        endcase
    end
            
            
endmodule