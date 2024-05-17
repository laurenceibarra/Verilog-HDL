module freq_div (
    input clk,
    input din,
    input reset,
    output reg out
);
    
    always @(negedge clk or reset) begin
        if(reset) out <= 0;
        else if(~din) out <= 0;
        else if(din) out <= ~out;
        else out <= out;
    end
endmodule