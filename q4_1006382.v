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
    always@(posedge A or B or ctrl) begin
    if (ctrl == 1'b0) begin
        q = (A[3:0] + B[3:0]);
    end
        
    if (ctrl == 1'b1) begin
        q = (A[7:4] + B[7:4]);
    end
end

endmodule