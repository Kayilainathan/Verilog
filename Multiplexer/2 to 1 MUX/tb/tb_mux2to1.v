`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.01.2026 13:10:23
// Design Name: 
// Module Name: tb_mux2to1
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


module tb_mux2to1();
reg a,b;
reg sel;
wire y;
mux2to1 ln (a,b,sel,y);
integer i;
initial begin
    for(i=0;i<8;i=i+1)
    begin
    {sel,a,b} = i;
    #10;    
    end
end
endmodule
