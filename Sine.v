module Sine(clk, rst, sine);
    input clk, rst;
    output reg [7:0]sine;
    output reg [15:0]sin;
    reg [15:0] cos;
    always @(posedge clk, posedge rst) begin
        if (rst) begin
          sin = 0;
          cos = 30000;
        end else begin
            sin = sin + (cos >> 6);
            cos = cos - (sin >> 6);
        end
        sine = (sin>>8) + 127;
    end
endmodule