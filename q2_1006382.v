`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: SUTD
// Engineer: Michelle Chua
// 
// Create Date: 13.03.2024 14:11:42
// Design Name: DSL Q2
// Module Name: multiplexer
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
//////////////////////////////////////////////////////////////////////////////////

//!DO NOT EDIT MODULE NAME AND PORT NAME!
module multiplexer(
    input [1:0]A,
    input [1:0]B,
    input [1:0]C,
    input [1:0]D,
    input [1:0]SEL,
    output reg [1:0]X
);

//YOUR CODE HERE
//TIPS: IN THE VERILOG CASE STATEMENT, YOU HAVE TO LIST ALL CONDITION TO AVIOD ANY AMBIGUOUS STATEMENT;

    always@(A or B or C or D or SEL) begin
        case(SEL)
            2'b00 : X = A; //When SEL = 1, Out = A
            2'b01 : X = B; //When SEL = 2, Out = B
            2'b10 : X = C; //When SEL = 3, Out = C
            2'b11 : X = D; //When SEL = 4, Out = D
        endcase
    end
    
endmodule