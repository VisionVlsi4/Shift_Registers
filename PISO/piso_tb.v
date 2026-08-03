`timescale 1ns / 1ps

module piso_tb;

reg clk;
reg rst;
reg load;
reg [3:0] parallel_in;
wire serial_out;

piso uut (
    .clk(clk),
    .rst(rst),
    .load(load),
    .parallel_in(parallel_in),
    .serial_out(serial_out)
);

always #5 clk = ~clk;

initial begin
    clk = 0;
    rst = 1;
    load = 0;
    parallel_in = 4'b0000;

    #10;
    rst = 0;

    load = 1;
    parallel_in = 4'b1101;
    #10;

    load = 0;

    #50;

    load = 1;
    parallel_in = 4'b1010;
    #10;

    load = 0;

    #50;
    $finish;
end

endmodule


