module subtractor #(parameter WIDTH = 8) (
    input [WIDTH-1:0] a,
    input [WIDTH-1:0] b,
    output reg [WIDTH-1:0] result,
    output reg borrow
);

always @(*) begin
    result = a - b;
    if (a >= b) begin
        borrow = 0;
    end else begin
        borrow = 1;
    end
end

endmodule
