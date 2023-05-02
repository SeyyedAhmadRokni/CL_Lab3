module FrequencySelectorTB;
    reg clk, rst;
    reg [4:0] pl;
    wire out;
    FrequencySelector fs(clk, rst, pl, out);
    always begin
        #1 clk = ~clk;
    end
    initial begin
        clk = 0;
        rst = 1;
        pl = 5'b0000;
        #2;
        rst = 0;
        #300;
        pl = 5'b1000;
        #300;
        pl = 5'b1010;
        #300;
        pl = 5'b0111;
        #300;
        pl = 5'b1111;
        #300;
        $stop;
    end
endmodule