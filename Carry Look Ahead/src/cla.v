`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.01.2026 19:45:10
// Design Name: 
// Module Name: cla
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


module cla(
input [3:0] a,
input [3:0] b,
input cin,
output [3:0] sum,
output cout
    );
    wire [3:0] p;
    wire [3:0] g;
    wire [3:0] c;
    assign p = a ^ b;
    assign g = a & b;
    assign c[0] = cin;
    assign c[1] = g[0] | (p[0] & c[0]);
    assign c[2] = g[1] | (p[1] & c[1]);
    assign c[3] = g[2] | (p[2] & c[2]);
    assign cout = g[3] | (p[3] & c[3]);
    
    assign sum = p^c[3:0];
endmodule
