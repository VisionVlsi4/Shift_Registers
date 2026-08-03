`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.08.2026 15:56:41
// Design Name: 
// Module Name: sipo
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

module sipo (
    input clk,
    input rst,
    input serial_in,
    output reg [3:0] parallel_out
);

always @(posedge clk or posedge rst) begin
    if (rst)
        parallel_out <= 4'b0000;
    else
        parallel_out <= {parallel_out[2:0], serial_in};
end

endmodule
