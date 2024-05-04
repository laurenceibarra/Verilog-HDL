`include "prioencoder.v"

`default_nettype none

module tb_prioencoder;
    reg [3:0] in;
    wire [1:0] out;

    priority_encoder #(
        .m(4),
        .n(2)
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
    in = 4'b0001;
    #1;
    in = 4'b0010;
    #1;
    in = 4'b0100;
    #1;
    in = 4'b1000;
    #1;

end

endmodule
`default_nettype wire