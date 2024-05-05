module demux #(parameter n = 2) (
    input in,
    input [n-1:0] sel,
    output reg [(2**n)-1:0] out
);
    integer i;
    always @(*) begin
        for(i = 0; i < (2**n); i = i + 1) begin
            if(i == sel) begin
                out[i] = in;
            end
            else begin
                out[i] = 0;
            end
        end
    end


endmodule