module DDS(clk, rst, phase_cntrl, out);
    input clk, rst;
    input [1:0] phase_cntrl;
    output reg [7:0] out;
    always @(posedge clk, posedge rst) begin
        if (rst) begin
            out = 8'b0;
        end
        else begin
            out = out + phase_cntrl;
        end 
    end
endmodule