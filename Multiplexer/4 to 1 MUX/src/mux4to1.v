`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.01.2026 13:17:41
// Design Name: 
// Module Name: mux4to1
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


module mux4to1(
input a,
input b,
input c,
input d,
input [1:0] sel,
output reg y
    );
    always@(*) begin
        case(sel)
            2'b00 : y =a;
            2'b01 : y =b;
            2'b10 : y =c;
            2'b11 : y =d;
         default : y = 0;
        endcase
        end
endmodule
