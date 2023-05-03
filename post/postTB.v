module postTB;
    reg [1:0] division, phase_cntrl;
    reg [2:0] pl, waev_cntrl;
    reg clk, rst;
    wire [7:0] out;
    WaveFormGenerator wg(.division(division), .clk(clk), .rst(rst), .pl(pl), .waev_cntrl(waev_cntrl), .phase_cntrl(phase_cntrl), .out(out));
    always begin
        #1 clk = ~clk;
    end
    initial begin
        clk = 0;
        rst = 1;
        pl = 3'b000;
        division = 2'b00;
        phase_cntrl = 2'b00;
        waev_cntrl = 3'b000;
        #100;

        waev_cntrl = 3'b000;
        #500;
        waev_cntrl = 3'b001;
        #500;
        waev_cntrl = 3'b010;
        #500;
        waev_cntrl = 3'b011;
        #500;
        waev_cntrl = 3'b100;
        #500;
        waev_cntrl = 3'b101;
        #1000;

        waev_cntrl = 3'b011;
        division = 2'b00;
        #500;
        division = 2'b00;
        #500;
        division = 2'b01;
        #500;
        division = 2'b10;
        #500;
        division = 2'b11;
        #1000;

        waev_cntrl = 3'b110;
        phase_cntrl = 2'b00;
        #500;
        phase_cntrl = 2'b01;
        #500;
        phase_cntrl = 2'b10;
        #500;
        phase_cntrl = 2'b11;
        #1000;

        pl = 3'b001;
        #500;
        pl = 3'b100;
        #500;
        pl = 3'b111;
        #1000;
        $stop;
    end

endmodule