`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: SUTD
// Engineer: Michelle Chua
// 
// Create Date: 13.03.2024 14:29:41
// Design Name: DSL q3
// Module Name: demultiplexer_tb
// Project Name: DSL HW demultiplexer
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


module demultiplexer_tb();

reg [1:0]A;
reg [1:0]SEL;
wire [1:0]W;
wire [1:0]X;
wire [1:0]Y;
wire [1:0]Z;

demultiplexer demultiplexer_u0(
    .A(A),
    .SEL(SEL),
    .W(W),
    .X(X),
    .Y(Y),
    .Z(Z)
);

initial begin
    SEL <= 0; //Set SEL = 0 initially, generate random A for W
    A <= $random;
    
    #10 SEL = 1; //When SEL = 1, generate random A for X
    A <= $random;
    
    #10 SEL = 2; //When SEL = 2, generate random A for Y
    A <= $random;
    
    #10 SEL = 3; //When SEL = 3, generate random A for Z
    A <= $random;

    
    #10 $finish;
end
endmodule
