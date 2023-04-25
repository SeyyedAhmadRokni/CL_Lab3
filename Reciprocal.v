module Reciprocal(counter_out, out);
	input [7:0] counter_out;
	output reg [7:0] out;

	always @(counter_out)begin
		out = 8'd255 / counter_out;
	end
endmodule
