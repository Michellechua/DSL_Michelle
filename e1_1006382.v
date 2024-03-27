`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.02.2024 13:42:28
// Design Name: 
// Module Name: e1_module
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


module e1_module(q,qb,r,s);
output q, qb;
input r,s;

nor #1 g1(q,qb,r);
nor #1 g2(qb,s,q);


endmodule
