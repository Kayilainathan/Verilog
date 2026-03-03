`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.01.2026 20:59:36
// Design Name: 
// Module Name: tb_cla
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


module tb_cla();
reg [3:0] a,b;
reg cin;
wire [3:0] sum;
wire cout;
integer i;
cla jk (a,b,cin,sum,cout);
initial begin
 cin = 0;
  for(i=0;i<16;i=i+1) begin
    a = i;
    b = i+1;
    #10;
  end 
   $finish;
end 
endmodule
