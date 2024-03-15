`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: SUTD
// Engineer: Michelle Chua
// 
// Create Date: 13.03.2024 14:43:08
// Design Name: DSL q5
// Module Name: CCTA
// Project Name: DSL HW CCTA
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
module CCTA(
        input [3:0] A,
        input [3:0] B,
        input [3:0] C,
        input rst,
        input ctrl,
        output reg [4:0] q
);

always@(A or B or C or posedge rst or ctrl) begin
    if (rst == 1'b1) begin //When rst is active high, q = 0
        q = 1'b0;
    end 
    
    else begin
        if (ctrl == 0) begin 
            q <= A + B; //When ctrl = 0, q is the sum of A and B
         end
         
         else begin
                q <= A - C; //When ctrl = 1, q is the difference of A and C
         end
     end
     
end  
endmodule