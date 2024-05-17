// m-to-n decoder
// usually, a decoder has m input lines and 2^n output lines

module decoder #(
    parameter m = 2,
    parameter n = 4
) (
    input [m-1:0] in,
    input enable,
    output reg [n-1:0] out
);
    always @(*) begin
        if(!enable) out = {n{1'b0}};
        else out = {{n-1{1'b0}},1'b1} << in;
    end

endmodule