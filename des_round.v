`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.02.2026 16:14:02
// Design Name: 
// Module Name: des_round
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


module des_round(
    input  [31:0] L_in,
    input  [31:0] R_in,
    input  [47:0] k,
    output [31:0] L_out,
    output [31:0] R_out
    );
    
    //expansion permutation
    wire [47:0] ep_out;
    expansion_permutation ep1 (R_in, ep_out);
    
    //xor with the key
    wire [47:0] x_out;
    xor_logic x1(ep_out, k, x_out);
    
    //sbox substitution
    wire [31:0] sbox_out;
    sboxes sb10 (x_out, sbox_out);
    
    //p box permutation
    wire [31:0] p_out;
    pbox_permutation pb1 (sbox_out, p_out);
    
    //xor and swap
    assign L_out = R_in;
   assign R_out = L_in ^ p_out;
    
endmodule
