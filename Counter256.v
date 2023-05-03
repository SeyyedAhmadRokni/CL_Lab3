module Counter256(clk, rst, out);
    input clk, rst;
    output reg [7:0] out;
    always @(posedge clk, posedge rst) begin
        if (rst) begin
            out = 8'b0;
        end
        else begin
           out = out +1;
        end
    end
endmodule