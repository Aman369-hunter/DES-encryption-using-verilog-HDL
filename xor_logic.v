`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.02.2026 15:10:03
// Design Name: 
// Module Name: xor_logic
// Project Name: 
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


module xor_logic(
    input [47:0] in1,
    input [47:0] in2,
    output [47:0] out
    );
    assign out= in1 ^ in2;
endmodule
