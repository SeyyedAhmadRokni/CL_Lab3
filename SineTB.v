module SineTB;
    reg clk, rst;
    wire [7:0] sine;
    wire [7:0] hrsine;
    wire [7:0] frsine;
    Sine s(clk, rst, sine);
    HalfwaveRectified hs(sine, hrsine);
    FullwaveRectified fs(sine, frsine);
    always begin
        #1 clk = ~clk;
    end
    initial begin
        clk = 0;
        rst = 1;
        #10 rst = 0;
        #2000;
        $stop;
    end
endmodule