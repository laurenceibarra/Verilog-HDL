// Dataflow SR flip-flop

`timescale 1ns / 1ns // useful for #x delays where it states the time unit and precision of the simulation

// declare outputs as reg type for sequential logic 

// State Table for SR FlipFlop
// S  R  Q  Q_n
// 0  0  Q  Q_n
// 0  1  0  1
// 1  0  1  0
// 1  1  X  X

module sr_ff (
    input wire clk,
    input wire rst_n,
    input wire set,
    input wire reset,
    output reg q,
    output reg q_n
);

    // we set our flipflop to be sensitive to the negative edge of the clock
    always @(negedge clk) begin
        if(set && ~reset) begin
            q <= 1;
            q_n <= !q;
        end
        else if(~set && reset) begin
            q <= 0;
            q_n <= !q;
        end
        else if(~set && ~reset) begin
            q <= q;
            q_n <= q_n;
        end
    end


endmodule