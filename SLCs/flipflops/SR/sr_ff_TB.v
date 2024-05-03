`include "sr_ff.v"

module sr_ff_TB;
    reg s_in, r_in, clk_in;
    wire q_out, q_n_out;

    // Module instantiation
    sr_ff sr_ff_inst(
        .set(s_in),
        .reset(r_in),
        .clk(clk_in),
        .q(q_out),
        .q_n(q_n_out)
    );

    // Continuous clock generation
    initial begin
        clk_in = 0;
        forever #1 clk_in = ~clk_in;
    end

    // Dumping waveform to VCD file
    initial begin
        $dumpfile("sr_ff_TB.vcd");
        $dumpvars(0, sr_ff_TB);
    end

    // Monitoring signals
    initial begin
        $monitor("s_in=%b, r_in=%b, q_out=%b, q_n_out=%b", s_in, r_in, q_out, q_n_out);
    end

    // Testbench stimulus
    initial begin
        s_in = 0;
        r_in = 0;
        #10 s_in = 0; r_in = 1;
        #10 s_in = 1; r_in = 0;
        #10 s_in = 1; r_in = 1;
        #10 s_in = 0; r_in = 0;
        #10 $finish;
    end
    
endmodule
