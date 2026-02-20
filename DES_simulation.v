`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.02.2026 17:56:56
// Design Name: 
// Module Name: DES_simulation
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


module DES_simulation(

    );
    
    reg [63:0] plaintext;
    reg [63:0] key;
    wire [63:0] ciphertext;
    
    top_module DUT(plaintext, key, ciphertext) ;
    initial begin
    
    plaintext = 64'h0123456789ABCDEF;
    key       = 64'h133457799BBCDFF1; #10
    
    plaintext = 64'h34546;
    key       = 64'h56565; #10;
    
    
    end
endmodule
