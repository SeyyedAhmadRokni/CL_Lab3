module Sine(clk, rst, sine);
    input clk, rst;
    output reg [7:0]sine;
    reg [15:0]sin;
    reg [15:0] cos;
    always @(posedge clk, posedge rst) begin
        if (rst) begin
          sin = 0;
          cos = 30000;
        end else begin
            sin = sin + {{6{cos[15]}}, cos[15:6]};
            cos = cos - {{6{sin[15]}}, sin[15:6]};
        end
        sine = sin[15:8] + 127;
    end
endmodule