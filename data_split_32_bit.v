`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.02.2026 09:36:21
// Design Name: 
// Module Name: data_split_32_bit
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


module data_split_32_bit(
    input [63:0] in,
    output [31:0] L_out,
    output [31:0] R_out
    );
    
    assign L_out= in[63:32];
    assign R_out= in[31:0];
endmodule
