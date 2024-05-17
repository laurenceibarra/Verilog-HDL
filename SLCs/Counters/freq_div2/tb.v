`include "freq_div2.v"
`timescale 1ms/1ms
module tb;
    reg clk, reset;
    reg [2:0] select;
    wire out;

    // Clock generation
    always #1 clk = ~clk;

    // Instantiate the frequency divider module
    frequency_divider fd(
        .clk(clk),
        .select(select),
        .reset(reset),
        .out(out)
    );

    // Testbench stimulus
    initial begin
        $dumpfile("tb.vcd");
        $dumpvars(0, tb);
        clk = 0;
        reset = 0;
        select = 3'b001;
        #5 reset = 1;
        repeat(100) @(negedge clk);
        $finish;
    end

endmodule