module FullwaveRectified(sin, fullsin);
	output reg [7:0] fullsin;
	input [7:0] sin;
	always@(sin) begin
		fullsin = sin < 8'd128 ? 8'd255 - sin : sin;
	end
endmodule