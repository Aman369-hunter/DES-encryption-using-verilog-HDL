`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.02.2026 15:20:03
// Design Name: 
// Module Name: pbox_permutation
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


module pbox_permutation(
    input [31:0] in,
    output [31:0] out
    );

// DES P-Permutation table mapping
assign out = {
    in[15], in[6],  in[19], in[20],
    in[28], in[11], in[27], in[16],
    in[0],  in[14], in[22], in[25],
    in[4],  in[17], in[30], in[9],
    in[1],  in[7],  in[23], in[13],
    in[31], in[26], in[2],  in[8],
    in[18], in[12], in[29], in[5],
    in[21], in[10], in[3],  in[24]
};

endmodule
