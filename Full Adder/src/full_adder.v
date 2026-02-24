`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.01.2026 20:47:49
// Design Name: 
// Module Name: full_adder
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


module full_adder(
input a,
input b,
input cin,
output sum,
output cout
    );
    wire s1,s2,s3;
    xor x1 (s1,a,b);
    and a1 (s2,a,b);
    xor x2 (sum,cin,s1);
    and a2 (s3,s1,cin);
    or  c0 (cout,s2,s3);
endmodule
