`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.01.2026 19:48:12
// Design Name: 
// Module Name: tb_rippleadder
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


module tb_rippleadder();
reg [3:0] a,b;
reg cin;
wire [3:0] s;
wire c;
integer i;
ripple_adder ln (a,b,cin,c,s);
initial begin
cin = 1'b0;
 for(i=0;i<16;i=i+1) begin
  a = i;
  b = i+1;
  #10;
  end
$finish;
end
endmodule
