`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:40:44 03/26/2021 
// Design Name: 
// Module Name:    mult 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module mult(a, b, p);
    input [3:0]a;
    input [3:0]b;
	 wire [3:0]w0;
	 wire [4:0]w1;
	 wire [5:0]w2;
	 wire [6:0]w3;
	 wire [7:0] s1,s2,s3;
    output [7:0]p;
	 assign w0={4{a[0]}}&b[3:0];
	 assign w1={4{a[1]}}&b[3:0];
	 assign w2={4{a[2]}}&b[3:0];
	 assign w3={4{a[3]}}&b[3:0];
	 assign s1=w0+(w1<<1);
	 assign s2=s1+(w2<<2);
	 assign s3=s2+(w3<<3);
	 assign p=s3;
endmodule
