`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.02.2024 13:47:31
// Design Name: 
// Module Name: e1_tb_module
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


module e1_tb_module();
wire q,qb;
reg r,s;

e1_module dut1(q,qb,r,s);

initial begin
$monitor("s:%b,r:%b,q:%b,qb:%b",s,r,q,qb);
end

initial begin
s=0;r=1;
#10 s=0; r=0;
#10 s=1; r=1;
#10 s=1; r=0;
#10 $finish;
end
    
endmodule
