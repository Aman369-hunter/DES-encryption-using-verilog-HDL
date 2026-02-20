`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.02.2026 08:17:33
// Design Name: 
// Module Name: key_top_module_16_rounds
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


module key_top_module_16_rounds(
    input [63:0] key_in,
    output [47:0] k1, k2, k3, k4,
    output [47:0] k5, k6, k7, k8,
    output [47:0] k9, k10, k11, k12,
    output [47:0] k13, k14, k15, k16
    );
    
    wire [55:0] p_key;
    wire [27:0] C0, D0;
    wire [27:0] C[16:0];
    wire [27:0] D[16:0];
    
    //pc1 = parity drop step 1
    key_pc1 pc1 (key_in, p_key);
    
    //key split into 28 bit each
    key_split_28 sp (p_key, C0, D0);
    
    assign C[0]= C0;
    assign D[0]= D0;
    
    //16 rounds
    key_after_round1 r1(C[0], D[0], 1 , C[1], D[1], k1);
    key_after_round1 r2(C[1], D[1], 2 , C[2], D[2], k2);
    key_after_round1 r3(C[2], D[2], 3 , C[3], D[3], k3);
    key_after_round1 r4(C[3], D[3], 4 , C[4], D[4], k4);
    key_after_round1 r5(C[4], D[4], 5 , C[5], D[5], k5);
    key_after_round1 r6(C[5], D[5], 6 , C[6], D[6], k6);
    key_after_round1 r7(C[6], D[6], 7 , C[7], D[7], k7);
    key_after_round1 r8(C[7], D[7], 8 , C[8], D[8], k8);
    key_after_round1 r9(C[8], D[8], 9, C[9], D[9], k9);
    key_after_round1 r10(C[9], D[9], 10 , C[10], D[10], k10);
    key_after_round1 r11(C[10], D[10], 11 , C[11], D[11], k11);
    key_after_round1 r12(C[11], D[11], 12 , C[12], D[12], k12);
    key_after_round1 r13(C[12], D[12], 13 , C[13], D[13], k13);
    key_after_round1 r14(C[13], D[13], 14 , C[14], D[14], k14);
    key_after_round1 r15(C[14], D[14], 15 , C[15], D[15], k15);
    key_after_round1 r16(C[15], D[15], 16 , C[16], D[16], k16);
    
endmodule
