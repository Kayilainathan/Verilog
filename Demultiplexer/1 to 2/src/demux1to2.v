`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.02.2026 22:04:31
// Design Name: 
// Module Name: demux1to2
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


module demux1to2(
input i,
input sel,
output y0,
output y1
    );
    assign y0 = ~sel & i;
    assign y1 = sel & i;
endmodule
