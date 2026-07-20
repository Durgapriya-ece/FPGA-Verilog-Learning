module clock_divider(
    input clk,
    output reg clk_out
);
initial begin
    clk_out =0;
end

always @(posedge clk)
begin
    clk_out <= ~clk_out;
end

endmodule
