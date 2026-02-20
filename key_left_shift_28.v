`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.02.2026 07:58:42
// Design Name: 
// Module Name: key_left_shift_28
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


module key_left_shift_28(
    input [27:0] in,
    input [3:0] round,
    output [27:0] out
    );
    
    wire [1:0] shift;
    
    assign shift= (round == 1 || round == 2 || round == 9 || round == 16 )? 1 : 2;
    
    assign out= (shift == 1)? {in[26:0], in[27]} : {in[25:0], in[27:26]};
    
endmodule
