`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: SUTD
// Engineer: Michelle Chua
// 
// Create Date: 13.03.2024 14:44:37
// Design Name: DSL q5
// Module Name: CCTA_tb
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


module CCTA_tb();
reg [3:0] A;
reg [3:0] B;
reg [3:0] C;
reg rst;
reg ctrl;
wire [4:0] q;
integer i;

CCTA CCTA_u0(
    .A(A),
    .B(B),
    .C(C),
    .rst(rst),
    .ctrl(ctrl),
    .q(q)
);

initial begin
    A = 4'b0000; //Initialise A
    B = 4'b0000; //Initialise B
    C = 4'b0000; //Initialise C
    ctrl = 0; //Set ctrl to 0
    
    //Set rst
    rst = 1; #10
    rst = 0;
    
    // Generate random values for A and B 5 times
    for (i=0; i<5; i=i+1) begin
        #10 //10 time units
        A <= $random; //Input random values for A
        B <= $random; //Input random values for B
        C <= $random; //Input random values for C
    end
        
    ctrl = 1; //Set ctrl to 1
    // Generate random values for A and B 5 times
    for (i=0; i<5; i=i+1) begin
        #10 //10 time units
        A <= $random; //Input random values for A
        B <= $random; //Input random values for B
        C <= $random; //Input random values for C
    end

    #10 $finish;
end

endmodule
