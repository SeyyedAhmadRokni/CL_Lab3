module AmpiltudeSelector(inp, divisor, out);
    input [7:0] inp;
    input [1:0] divisor;
    output reg [7:0] out;
    always @(divisor, inp) begin
        case @(divisor) begin
            00: out = inp;
            01: out = inp >> 1;
            10: out = inp >> 2;
            11: out = inp >> 3;
        endcase
    end
endmodule