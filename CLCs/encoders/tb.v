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

integer i;

initial begin
    $monitor("in=%b, out=%b", in, out);
    for(i = 0; i < 8; i = i + 1) begin
        in = 1'b1 << i;
        #10;
    end

    #10;
    in = 8'b00001101;
    $finish;


end

endmodule
`default_nettype wire