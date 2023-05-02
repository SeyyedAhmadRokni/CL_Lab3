module FrequencySelectorTB;
    reg clk, rst;
    reg [2:0] pl;
    wire out;
    FrequencySelector fs(clk, rst, pl, out);
    always begin
        #1 clk = ~clk;
    end
    initial begin
        clk = 0;
        rst = 1;
        pl = 3'b000;
        #2;
        rst = 0;
        #3000;
        pl = 5'b100;
        #3000;
        pl = 5'b101;
        #3000;
        pl = 5'b0111;
        #3000;
        pl = 5'b110;
        #3000;
        $stop;
    end
endmodule