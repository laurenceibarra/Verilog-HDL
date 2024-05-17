`include "decoder.v"
`timescale 1ns/1ns

module decoder_tb;
    reg [1:0] in;
    wire [3:0] out;
    reg enable;

    decoder #(2, 4) d1 (
        .in(in),
        .enable(enable),
        .out(out)
    );

    initial begin
        $dumpfile("decoder_tb.vcd");
        $dumpvars(0, decoder_tb);
    end

    initial begin
        enable = 0;
        #1
        enable = 1;
        in = 2'b00;
        #1
        in = 2'b01;
        #1
        in = 2'b10;
        #1
        in = 2'b11;
        $finish;
    end
endmodule