`default_nettype none

module Top (KEY, SW, LEDR);
    input  wire [ 3: 0] KEY;        // DE-series pushbuttons
    input  wire [ 9: 0] SW;         // DE-series switches
    output wire [ 9: 0] LEDR;       // DE-series LEDs

   // Instantiate your modules here for simulation
   // change the the top module parameters in tb.v to access other peripherals
   // use the peripherals as arguments to the parameters of the input and output of your modules here

endmodule

