module Triangle(counter_out, out);
	input [7:0] counter_out;
	output reg [7:0] out;

	always @(counter_out)begin
		out = (counter_out < 8'd128) ? counter_out : 8'b11111111 - counter_out;
	end
endmodule