`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.02.2026 17:52:33
// Design Name: 
// Module Name: key_transformation
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


module key_pc1 (
    input [63:0] key_in,   // Original 64-bit key
    output [55:0] key_out   // Round-1 48-bit key
);

assign key_out = {
    key_in[56], key_in[48], key_in[40], key_in[32], key_in[24], key_in[16], key_in[8],
    key_in[0],  key_in[57], key_in[49], key_in[41], key_in[33], key_in[25], key_in[17],
    key_in[9],  key_in[1],  key_in[58], key_in[50], key_in[42], key_in[34], key_in[26],
    key_in[18], key_in[10], key_in[2],  key_in[59], key_in[51], key_in[43], key_in[35],
    key_in[62], key_in[54], key_in[46], key_in[38], key_in[30], key_in[22], key_in[14],
    key_in[6],  key_in[61], key_in[53], key_in[45], key_in[37], key_in[29], key_in[21],
    key_in[13], key_in[5],  key_in[60], key_in[52], key_in[44], key_in[36], key_in[28],
    key_in[20], key_in[12], key_in[4],  key_in[27], key_in[19], key_in[11], key_in[3]
};

endmodule

