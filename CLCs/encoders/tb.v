`include "prioencoder.v"

`default_nettype none

module tb_prioencoder;
    reg [7:0] in;
    wire [2:0] out;

    priority_encoder #(
        .m(8),
        .n(3)
        ) prioencoder(
            .in(in),
            .out(out)
    );

initial begin
    $dumpfile("tb_prioencoder.vcd");
    $dumpvars(0, tb_prioencoder);
end


initial begin
    $monitor("in=%b, out=%d", in, out);
    in = 8'b0000_0001;
    #1;

end

endmodule
`default_nettype wire