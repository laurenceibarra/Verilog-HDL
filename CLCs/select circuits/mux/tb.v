`include "mux.v"
`default_nettype none

module tb_mux;
    reg [3:0] in;
    reg [1:0] sel;
    wire out;

    mux #(
        .n(2)
    ) tb_mux (
        .in(in),
        .sel(sel),
        .out(out)
    );

initial begin
    $dumpfile("tb_mux.vcd");
    $dumpvars(0, tb_mux);
end

initial begin
    $monitor("in = %b, sel = %b, out = %b", in, sel, out);
    in = 4'b1010;
    sel = 2'b00;
    #10;
    sel = 2'b01;
    #10;
    sel = 2'b10;
    #10;
    sel = 2'b11;
    #10;
    $finish;
end

endmodule
`default_nettype wire