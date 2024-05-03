`include "subtractor.v"
`default_nettype none

module tb_subtractor;

reg [3:0] a_in, b_in;
wire [3:0] result_out;
wire borrow;

subtractor #(4) sub
(
    .a(a_in),
    .b(b_in),
    .result(result_out),
    .borrow(borrow)
);

initial begin
    $dumpfile("tb_subtractor.vcd");
    $dumpvars(0, tb_subtractor);
end

initial begin
    a_in = 4'b0000;
    b_in = 4'b0000;
    #10;
    a_in = 4'b0000;
    b_in = 4'b0001;
    #10;
    a_in = 4'b0001;
    b_in = 4'b0000;
    #10;
    a_in = 4'b0001;
    b_in = 4'b0001;
    #10;
    a_in = 4'b0000;
    b_in = 4'b0001;
    #10;
    a_in = 4'b0001;
    b_in = 4'b0000;
    #10;
    a_in = 4'b0001;
    b_in = 4'b0001;
    #10;
    a_in = 4'b0000;
    b_in = 4'b0001;
    #10;
    a_in = 4'b0001;
    b_in = 4'b0000;
    #10;
    a_in = 4'b0001;
    b_in = 4'b0001;
    #10;
    $finish;
end

endmodule
`default_nettype wire