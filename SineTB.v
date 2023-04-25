`include "Sine.v"
module SineTB;
    reg clk, rst;
    wire [7:0] sine;
    Sine s(clk, rst, sine);
    always begin
        #5 clk = ~clk;
    end
    initial begin
        $dumpfile("SineTB.vcd");
        $dumpvars(0, SineTB);
        clk = 0;
        rst = 1;
        #10 rst = 0;
        #2000;
        $finish;
    end
endmodule