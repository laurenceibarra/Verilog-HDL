module frequency_divider (
    input clk,             // Input clock
    input [2:0] select,    // Input to determine the division factor
    input reset,           // Reset signal
    output reg out         // Divided clock output
);

reg [7:0] counter;    // 8-bit binary ripple counter

// Counter increment logic
always @(negedge clk) begin
    if(!reset) // Reset the counter
        counter <= 8'd0;
    else if (counter == 8'd255) // Maximum value, reset the counter
        counter <= 8'd0;
    else
        counter <= counter + 1;
end

// Divided clock output logic based on the counter value and select input
always @* begin
    case (select)
        3'b000: out <= counter[0]; // Division factor 1:2
        3'b001: out <= counter[1]; // Division factor 1:4
        3'b010: out <= counter[2]; // Division factor 1:8
        3'b011: out <= counter[3]; // Division factor 1:16
        3'b100: out <= counter[4]; // Division factor 1:32
        3'b101: out <= counter[5]; // Division factor 1:64
        3'b110: out <= counter[6]; // Division factor 1:128
        3'b111: out <= counter[7]; // Division factor 1:256
        default: out <= 1'b0;       // Default output
    endcase
end

endmodule
