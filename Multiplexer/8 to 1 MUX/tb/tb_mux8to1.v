`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.01.2026 16:34:22
// Design Name: 
// Module Name: tb_mux8to1
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


module tb_mux8to1();
reg [7:0] i;
reg [2:0] sel;
wire y;
reg [11:0] k;
mux8to1 d0 (i,sel,y);
initial begin
i = 8'b11010100;
for(k=0; k<8; k=k+1) begin
    sel = k;
    #10;
end
end
initial begin
  $monitor("time=%0t sel=%b i=%b y=%b", $time, sel, i, y);
end
endmodule
