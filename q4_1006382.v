`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: SUTD
// Engineer: Michelle Chua
// 
// Create Date: 13.03.2024 14:35:30
// Design Name: DSL q4
// Module Name: nibbleadd
// Project Name: DSL HW nibbleadd
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

//!DO NOT MODIFY MODULE NAME AND PORT NAME!
module nibbleadd(
    input [7:0]A,
    input [7:0]B,
    input ctrl,
    output reg [4:0]q
);
    

//YOUR CODE HERE
    always@(A or B or ctrl) begin
    if (ctrl == 1'b0) begin //When ctrl = 0
        q = (A[3:0] + B[3:0]); //q = lowest 4 bits of A + B
    end
        
    if (ctrl == 1'b1) begin //When ctrl = 1
        q = (A[7:4] + B[7:4]); //q = Highest 4 bits of A + B
    end
end

endmodule