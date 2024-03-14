`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: SUTD
// Engineer: Michelle Chua: 
// 
// Create Date: 13.03.2024 13:15:32
// Design Name: DSL Q1 
// Module Name: decade_counter_tb
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


module decade_counter_tb();

reg clk;
reg rst;
wire [3:0]count;
wire ten;

decade_counter decade_counter_u0(
    .clk(clk),
    .rst(rst),
    .count(count),
    .ten(ten)
);

always begin
    //YOUR CODE HERE - Generate 20 unit time clock;
    #10 clk <= ~clk;
end

initial begin
    //YOUR CODE HERE - Initialize the clk, rst; and initialize ten, count
    clk = 1'b0;
    rst = 1'b1;
//   ten = 1'b0;
//    count = 4'h0;
    #30 rst = 1'b0;
    #400 $finish;
end

endmodule
