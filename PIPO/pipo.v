`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.08.2026 16:24:06
// Design Name: 
// Module Name: pipo
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

module pipo (
    input clk,
    input rst,
    input [3:0] parallel_in,
    output reg [3:0] parallel_out
);

always @(posedge clk or posedge rst) begin
    if (rst)
        parallel_out <= 4'b0000;
    else
        parallel_out <= parallel_in;
end

endmodule
