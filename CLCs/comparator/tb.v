`include "comparator.v" // Assuming the name of your module file is "comparator.v"

`default_nettype none

module tb_comparator;

    reg clk;
    reg rst_n;
    reg [3:0] a, b; // Width parameter is set to 4

    wire eq, gt, lt;

    comparator #(4) dut (
        .a(a),
        .b(b),
        .eq(eq),
        .gt(gt),
        .lt(lt)
    );

    initial begin
        $dumpfile("tb_comparator.vcd");
        $dumpvars(0, tb_comparator);
    end

    initial begin
        clk = 0;
        rst_n = 1;
        #10;

        // Loop through every iteration of binary numbers from 0000 to 1111
        repeat (16) begin
            a = $urandom_range(0, 15); // Randomize 'a'
            b = $urandom_range(0, 15); // Randomize 'b'
            #20; // Wait for some simulation time
            
            // Display input and output values
            $display("a = %b, b = %b, eq = %b, gt = %b, lt = %b", a, b, eq, gt, lt);
        end

        $finish; // Finish simulation
    end

endmodule

`default_nettype wire
