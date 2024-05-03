// Copyright (c) 2020 FPGAcademy
// Please see license at https://github.com/fpgacademy/DESim

// Protect against undefined nets
`default_nettype none

module Top (KEY, SW, LEDR, HEX0);
    input  wire [ 3: 0] KEY;        // DE-series pushbuttons
    input  wire [ 9: 0] SW;         // DE-series switches
    output wire [ 9: 0] LEDR;       // DE-series LEDs
    output wire [ 6: 0] HEX0;       // DE-series HEX displays

    bcdto7seg bcdto7seg_inst (
        .bcd (SW[3:0]),
        .seg (HEX0[6:0])
    );

endmodule

