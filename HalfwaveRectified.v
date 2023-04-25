module HalfwaveRectified(sin, halfsin);
	output reg [7:0] halfsin;
	input [7:0] sin;
	always @(sin)
		halfsin = sin < 8'd128 ? 8'd127 : sin;
endmodule
