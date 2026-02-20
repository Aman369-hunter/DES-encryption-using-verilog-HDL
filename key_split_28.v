`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.02.2026 07:55:21
// Design Name: 
// Module Name: key_split_28
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


module key_split_28(
    input [55:0] in,
    output [27:0] C,
    output [27:0] D
    );
    assign C= in[55:28];
    assign D= in[27:0];
endmodule
