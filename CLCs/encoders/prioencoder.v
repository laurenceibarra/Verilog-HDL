// in a priority encoder 2^n inputs is to n outputs
// priority 4-2 encoder truth table
// 0000 -> 00
// 0001 -> 01
// 0010 -> 10
// 0100 -> 11

module priority_encoder #(
    parameter m = 4,
    parameter n = 2
) (
    input [m-1:0] in,
    output reg [n-1:0] out
);

    integer i;

    always @(*) begin
        out = {n{1'b0}}; // Initialize output to all zeros
        for(i = 0; i < m; i = i + 1) begin
            if(in[i] == 1'b1) begin
                out = i;
            end
        end
    end
endmodule
