`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.02.2026 15:51:05
// Design Name: 
// Module Name: expansion_permutation
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


module expansion_permutation(
    input [31:0] R_in, //right half bits of the initial permutation
    output [47:0] out
    );
    assign out = {
    R_in[31], R_in[0],  R_in[1],  R_in[2],  R_in[3],  R_in[4],
    R_in[3],  R_in[4],  R_in[5],  R_in[6],  R_in[7],  R_in[8],
    R_in[7],  R_in[8],  R_in[9],  R_in[10], R_in[11], R_in[12],
    R_in[11], R_in[12], R_in[13], R_in[14], R_in[15], R_in[16],
    R_in[15], R_in[16], R_in[17], R_in[18], R_in[19], R_in[20],
    R_in[19], R_in[20], R_in[21], R_in[22], R_in[23], R_in[24],
    R_in[23], R_in[24], R_in[25], R_in[26], R_in[27], R_in[28],
    R_in[27], R_in[28], R_in[29], R_in[30], R_in[31], R_in[0]
};
endmodule
