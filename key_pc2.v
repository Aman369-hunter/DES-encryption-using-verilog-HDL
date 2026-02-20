`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.02.2026 18:34:49
// Design Name: 
// Module Name: key_pc2
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


module key_pc2(
    input [55:0] in,
    output [47:0] key_out
    );
    
    assign key_out= {
    in[13], in[16], in[10], in[23], in[0],  in[4],
    in[2],  in[27], in[14], in[5],  in[20], in[9],
    in[22], in[18], in[11], in[3],  in[25], in[7],
    in[15], in[6],  in[26], in[19], in[12], in[1],
    in[40], in[51], in[30], in[36], in[46], in[54],
    in[29], in[39], in[50], in[44], in[32], in[47],
    in[43], in[48], in[38], in[55], in[33], in[52],
    in[45], in[41], in[49], in[35], in[28], in[31]
};
endmodule
