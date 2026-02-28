`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.01.2026 19:32:56
// Design Name: 
// Module Name: ripple_adder
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


module ripple_adder(
input [3:0] a,
input [3:0] b,
input cin,
output c,
output [3:0] s
    );
    wire [4:0] carry;
    assign carry[0] = cin;
    full_adder d0  (.sum(s[0]), .cout(carry[1]), .x(a[0]), .y(b[0]), .z(carry[0]));
    full_adder d1  (.sum(s[1]), .cout(carry[2]), .x(a[1]), .y(b[1]), .z(carry[1]));
    full_adder d2  (.sum(s[2]), .cout(carry[3]), .x(a[2]), .y(b[2]), .z(carry[2]));
    full_adder d3  (.sum(s[3]), .cout(carry[4]), .x(a[3]), .y(b[3]), .z(carry[3]));
    
    assign c = carry[4];
    
endmodule

module full_adder(
input x,
input y,
input z,
output sum,
output cout
    );
    wire s1,s2,s3;
    xor x1 (s1,x,y);
    and a1 (s2,x,y);
    xor x2 (sum,z,s1);
    and a2 (s3,s1,z);
    or  c0 (cout,s2,s3);
endmodule

