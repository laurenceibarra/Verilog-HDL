`include "demux.v"
`default_nettype none

module tb_demux;

integer n = 2;
reg in;
reg [1:0] sel;
wire [3:0] out;

demux #(2) DUT(.in(in), .sel(sel), .out(out));


initial begin
    $dumpfile("tb_demux.vcd");
    $dumpvars(0, tb_demux);
end

initial begin
    $monitor("in=%b, sel=%b, out=%b", in, sel, out);
    in = 1;
    sel = 0;
    #10;
    sel = 1;
    #10;
    sel = 2;
    #10;
    sel = 3;
    #10;
    $finish;
end

endmodule
`default_nettype wire