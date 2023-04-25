module Square(counter_out, out);
    input [7:0] counter_out;
    output reg [7:0] out;
    always @(counter_out) begin
        out = counter_out < 128 ? 8'b1111111 : 8'b0;
    end
endmodule