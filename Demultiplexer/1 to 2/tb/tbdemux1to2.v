`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.02.2026 22:06:26
// Design Name: 
// Module Name: tbdemux2to1
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


module tbdemux2to1();
reg i,sel;
wire y0,y1;
integer k;

demux1to2 d0 (.i(i),.sel(sel),.y0(y0),.y1(y1));

initial begin
for(k=0;k<8;k=k+1) begin
{i,sel} = k;
#10;
end
$finish;

end
endmodule
