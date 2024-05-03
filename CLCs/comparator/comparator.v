// n-bit magnitude comparator

module comparator #(
    parameter n = 2
) (
    input [n-1:0] a,
    input [n-1:0] b,
    output eq,
    output gt,
    output lt
);
        assign eq = (a == b);
        assign gt = (a > b);
        assign lt = (a < b);
endmodule