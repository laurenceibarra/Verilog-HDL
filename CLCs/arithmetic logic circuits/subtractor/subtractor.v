// subtractor using one's complement
// ---- minuend
// ---- subtrahend
// ---- result

// Algorithm:
// 1. one's complement of subtrahend (to take the one's complement of a binary number, invert all the bits)
// 2. add the one's complement of subtrahend to minuend
// 3. a. if there is carry from result, add 1 to the result
//    b. else one's complement the result

module subtractor #(
    parameter WIDTH = 2
) (
    input [WIDTH-1:0] minuend,
    input [WIDTH-1:0] subtrahend,
    output reg [WIDTH-1:0] result
);
    reg carry;
    always @(*) begin //all the inputs are the sensitivity for this always block
        result = minuend + ~subtrahend;
        
        // to check for carry, consider the overflow of the MSB since our output width is WIDTH - 1;
        // store the value of carry in a separate variable
        // if there is an overflow, add 1 to the result
        // else, one's complement the result
        if (result[WIDTH-1] == 1) begin
            result = result + 1;
        end else begin
            result = ~result;
        end
        
    end
    
endmodule