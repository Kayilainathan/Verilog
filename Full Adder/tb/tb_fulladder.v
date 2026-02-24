`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.01.2026 21:19:33
// Design Name: 
// Module Name: tb_fulladder
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


module tb_fulladder();
reg a,b,cin;
wire sum,cout;
full_adder d0 (a,b,cin,sum,cout);
initial begin
#10 a = 0; b = 0; cin = 0;
#10 a = 0; b = 0; cin = 1;
#10 a = 0; b = 1; cin = 0;
#10 a = 0; b = 1; cin = 1;
#10 a = 1; b = 0; cin = 0;
#10 a = 1; b = 0; cin = 1;
#10 a = 1; b = 1; cin = 0;
#10 a = 1; b = 1; cin = 1;
end
endmodule
