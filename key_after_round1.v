`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.02.2026 08:10:05
// Design Name: 
// Module Name: key_after_round1
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


module key_after_round1(
    input [27:0] C_in,
    input [27:0] D_in,
    input [3:0] round,
    output [27:0] C_out,
    output [27:0] D_out,
    output [47:0] subkey
    );
    wire [55:0] combine; 
    
    key_left_shift_28 C_ls (C_in, round, C_out);
    key_left_shift_28 D_ls (D_in, round, D_out);
    
    assign combine= {C_out, D_out};
    
    key_pc2 pc2(combine, subkey);
endmodule
