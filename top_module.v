`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.02.2026 08:21:31
// Design Name: 
// Module Name: top_module
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


module top_module(
    input [63:0] plaintext,
    input [63:0] key,
    output [63:0] ciphertext
    );
    
    //initial permutation on the data to be encrypted
    wire [63:0] out;
    initial_permutation ip (plaintext, out);
    
    //data split
    wire [31:0] L[16:0];
    wire [31:0] R[16:0];
    data_split_32_bit ds (out, L[0], R[0]);
    
    //key transformation
    wire [47:0] k1, k2, k3, k4;
    wire [47:0] k5, k6, k7, k8;
    wire [47:0] k9, k10, k11, k12;
    wire [47:0] k13, k14, k15, k16;
    key_top_module_16_rounds key1 (key, k1, k2, k3, k4, k5, k6, k7, k8, k9, k10, k11, k12, k13, k14, k15, k16);
    
    // 16 DES rounds
des_round ds1  (L[0],  R[0],  k1,  L[1],  R[1]);
des_round ds2  (L[1],  R[1],  k2,  L[2],  R[2]);
des_round ds3  (L[2],  R[2],  k3,  L[3],  R[3]);
des_round ds4  (L[3],  R[3],  k4,  L[4],  R[4]);
des_round ds5  (L[4],  R[4],  k5,  L[5],  R[5]);
des_round ds6  (L[5],  R[5],  k6,  L[6],  R[6]);
des_round ds7  (L[6],  R[6],  k7,  L[7],  R[7]);
des_round ds8  (L[7],  R[7],  k8,  L[8],  R[8]);
des_round ds9  (L[8],  R[8],  k9,  L[9],  R[9]);
des_round ds10 (L[9],  R[9],  k10, L[10], R[10]);
des_round ds11 (L[10], R[10], k11, L[11], R[11]);
des_round ds12 (L[11], R[11], k12, L[12], R[12]);
des_round ds13 (L[12], R[12], k13, L[13], R[13]);
des_round ds14 (L[13], R[13], k14, L[14], R[14]);
des_round ds15 (L[14], R[14], k15, L[15], R[15]);
des_round ds16 (L[15], R[15], k16, L[16], R[16]);

     wire [63:0] pre_output;
     assign pre_output= {L[16], R[16]};
     
     //final permutation
     wire [63:0] fp_out;
     final_permutation fp (pre_output, fp_out);
     
     //final ciphertext
     assign ciphertext= fp_out;
    
endmodule
