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


module nibbleadd_tb();

reg [7:0]A;
reg [7:0]B;
reg ctrl;
wire [4:0]q;
integer i;

nibbleadd nibbleadd_u0(
    .A(A),
    .B(B),
    .ctrl(ctrl),
    .q(q)
);

initial begin
    
    ctrl = 0; //Set ctrl to 0
    // Generate random values for A and B 5 times
    for (i=0; i<5; i=i+1) begin
        #10 //10 time units
        A <= $random; //Input random values for A
        B <= $random; //Input random values for B
    end
        
    ctrl = 1; //Set ctrl to 1
    // Generate random values for A and B 5 times
    for (i=0; i<5; i=i+1) begin
        #10 //10 time units
        A <= $random; //Input random values for A
        B <= $random; //Input random values for B
    end

    #10 $finish;
end

endmodule
