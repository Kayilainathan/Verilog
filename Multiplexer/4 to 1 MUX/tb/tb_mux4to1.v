`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.01.2026 13:23:36
// Design Name: 
// Module Name: tb_mux4to1
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


module tb_mux4to1();
reg a,b,c,d;
reg [1:0] sel;
wire y;
integer i;
mux4to1 ln (.a(a), .b(b), .c(c), .d(d), .sel(sel), .y(y));
initial begin
    for(i=0;i<64;i=i+1)
        begin
            {sel,a,b,c,d} = i;
            #10;
        end
end
    
endmodule
