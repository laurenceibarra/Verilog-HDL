module adder #(
    parameter WIDTH = 2
) (
    input [WIDTH-1:0] a,
    input [WIDTH-1:0] b,
    input carry_in,
    output reg [WIDTH-1:0] result,
    output reg carry_out
);

    always @(*) begin
        result = a + b + carry_in;
        carry_out = (result[WIDTH] == 1); // Check if there's a carry-out from the MSB
    end

endmodule
