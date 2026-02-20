`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.02.2026 08:08:31
// Design Name: 
// Module Name: initial_permutation
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


module initial_permutation(
    input [63:0] in,
    output [63:0] out
    );
    
//    assign out[0]= in[58];
//    assign out[1]= in[50];
//   ........
//   ........
//    assign out[63]= in[6];
assign out= {
    in[57], in[49], in[41], in[33], in[25], in[17], in[9],  in[1],
    in[59], in[51], in[43], in[35], in[27], in[19], in[11], in[3],
    in[61], in[53], in[45], in[37], in[29], in[21], in[13], in[5],
    in[63], in[55], in[47], in[39], in[31], in[23], in[15], in[7],
    in[56], in[48], in[40], in[32], in[24], in[16], in[8],  in[0],
    in[58], in[50], in[42], in[34], in[26], in[18], in[10], in[2],
    in[60], in[52], in[44], in[36], in[28], in[20], in[12], in[4],
    in[62], in[54], in[46], in[38], in[30], in[22], in[14], in[6]
};    
    
endmodule
