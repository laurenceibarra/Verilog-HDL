module mux #(
    parameter n = 2
) (
    input [(2**n)-1:0] in,
    input [n-1:0] sel,
    output reg out
);

    integer i;
    always @(*) begin
        out = 1'b0; // Initialize output to 0
        for(i = 0; i < (2**n); i = i + 1) begin
            if(sel == i) begin
                out = in[i];
            end
        end
    end
endmodule
