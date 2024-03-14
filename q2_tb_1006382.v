`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: SUTD
// Engineer: Michelle Chua
// 
// Create Date: 13.03.2024 14:13:04
// Design Name: DSL Q2
// Module Name: multiplexer_tb
// Project Name: DSL HW multiplexer
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
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module multiplexer_tb();
reg [1:0]A;
reg [1:0]B;
reg [1:0]C;
reg [1:0]D;
reg [1:0]SEL;
wire [1:0]X;
integer i;

multiplexer multiplexer_u0(
 .A(A),
 .B(B),
 .C(C),
 .D(D),
 .SEL(SEL),
 .X(X)
);

initial begin
    SEL <= 0; // Set SEL = 0
    //Random values to A, B, C,D
    A <= $random; 
    B <= $random; 
    C <= $random;
    D <= $random;

    //Changes SEL value +1 every 10ns 
    for (i = 1; i < 4; i = i+1) begin
        #10 SEL <= i;
    end
    
    #10 $finish;
end

endmodule