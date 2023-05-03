module WaveFormGenerator(clk, rst, func, sin_dds, out);
    input [2:0] func;
    input clk, rst;
    input [7:0] sin_dds;
    output reg [7:0] out;
    wire [7:0] clk_out, rec_out, fr_out, hr_out, sin_out, sq_out, tri_out;
    Counter256 coutner(clk, rst, clk_out);

    Reciprocal rec(clk_out, rec_out);
    Square square(counter_out, sq_out);
    Triangle triangle(counter_out, tri_out);

    Sine sine(clk, rst, sine_out);
    FullwaveRectified fr(sin_out, fr_out);
    HalfwaveRectified hr(sin_out, hr_out);

    always @(posedge clk) begin
        case (func)
				000: out = rec_out;
            001: out = sq_out;
            010: out = tri_out;
            011: out = sin_out;
            100: out = fr_out;
            101: out = hr_out;
            110: out = sin_dds;
        endcase
    end
endmodule

