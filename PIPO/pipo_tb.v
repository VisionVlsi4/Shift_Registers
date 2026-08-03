`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.08.2026 16:25:06
// Design Name: 
// Module Name: pipo_tb
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

module pipo_tb;

reg clk;
reg rst;
reg [3:0] parallel_in;
wire [3:0] parallel_out;

pipo uut (
    .clk(clk),
    .rst(rst),
    .parallel_in(parallel_in),
    .parallel_out(parallel_out)
);

always #5 clk = ~clk;

initial begin
    clk = 0;
    rst = 1;
    parallel_in = 4'b0000;

    #10 rst = 0;

    parallel_in = 4'b1010; #10;
    parallel_in = 4'b1100; #10;
    parallel_in = 4'b0111; #10;
    parallel_in = 4'b1111; #10;

    #50;
    $finish;
end

endmodule