module FrequencySelector(ro_clk, rst, pl, out);
    input ro_clk, rst;
    input [2:0] pl;
    output out;
    reg [8:0] counter;
    assign out = &{counter[8:0]};
    always @(posedge ro_clk, posedge rst) begin
        if (rst)begin
            counter [5:0] = 6'b0000;
            counter [8:6] = pl;
        end
        else begin
            counter = counter + 1;
            if (~|{counter[8:0]})begin
                counter [8:6] = pl;
            end
        end
    end
endmodule