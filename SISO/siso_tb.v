`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.08.2026 15:39:29
// Design Name: 
// Module Name: siso_tb
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
`timescale 1ns / 1ps

module siso_tb;

reg clk;
reg rst;
reg serial_in;
wire serial_out;

siso uut (
    .clk(clk),
    .rst(rst),
    .serial_in(serial_in),
    .serial_out(serial_out)
);

always #5 clk = ~clk;

initial begin
    clk = 0;
    rst = 1;
    serial_in = 0;

    #10;
    rst = 0;

    serial_in = 1; #10;
    serial_in = 0; #10;
    serial_in = 1; #10;
    serial_in = 1; #10;
    serial_in = 0; #10;
    serial_in = 1; #10;
    serial_in = 1; #10;
    serial_in = 0; #10;
    serial_in = 1; #10;
     serial_in = 1; #10;
    serial_in = 0; #10;
    serial_in = 1; #10;



    #250;
    $finish;
end

endmodule
