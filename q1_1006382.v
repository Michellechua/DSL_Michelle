`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: SUTD
// Engineer: Michelle Chua
// 
// Create Date: 13.03.2024 13:00:09
// Design Name: DSL Q1 
// Module Name: decade_counter
// Project Name: DSL Homework Decade Counter
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
module decade_counter(
    input clk,
    input rst,
    output reg [3:0] count,
    output reg ten
);
// need to register outputs 

always@(posedge clk, rst) begin
    if (rst==1'b1) begin // reset high
        count <= 4'h0; //count set to 0
        ten <= 1'b0; // ten set to 0
    end
    else begin
        if (count == 4'h9) begin // when count equiv to 4'b1001 or 4'h9
            count <= 4'h0; //restart count from 0
            ten <= 1'b1; // set ten to 1
        end
        else begin
            count <= count + 4'h1; // keep counting up
            ten <= 1'b0; // ten is 0 when count is not a multiple of 10
        end
    end
end
endmodule
