`include "freq_div.v"
`timescale 1ns / 1ns

module freq_div_tb;
    reg clk, din, r;
    wire out;

    freq_div uut (
        .clk(clk),
        .din(din),
        .reset(r),
        .out(out)
    );

    always #1 clk = ~clk;
 
    initial begin
        $dumpfile("freq_div_tb.vcd");
        $dumpvars(0, freq_div_tb);
        r = 1;
        #1
        r = 0;
        clk = 0;
        din = 1;
        repeat(100) @(negedge clk);
        $finish;
    end

endmodule