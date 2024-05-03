The bcdto7seg module decodes a 4-bit Binary-Coded Decimal (BCD) input into a 7-segment display format. Each BCD digit (0 to 9) is represented by its corresponding 7-segment LED pattern.
Digit 0: 7'b1000000
Digit 1: 7'b1111001
Digit 2: 7'b0100100
Digit 3: 7'b0110000
Digit 4: 7'b0011001
Digit 5: 7'b0010010
Digit 6: 7'b0000010
Digit 7: 7'b1111000
Digit 8: 7'b0000000
Digit 9: 7'b0010000

Usage:

Inputs:
bcd[3:0]: 4-bit BCD input representing the digit to be displayed.
Outputs:
seg[6:0]: 7-bit output representing the segments to be illuminated on the 7-segment display.

Connect Inputs:
1. Connect the 4 switches (SW[3:0]) on the DE-series FPGA board to the bcd input of the bcdto7seg module. These switches will represent the BCD input.
Connect Outputs:
2. Connect the seg output of the bcdto7seg module to the 7-segment display (HEX0[6:0]) on the DE-series FPGA board.
Operation:
3. Toggle the switches (SW[3:0]) to input a BCD digit (0 to 9).
4. The corresponding 7-segment LED pattern for the entered BCD digit will be displayed on the 7-segment display (HEX0[6:0]).
