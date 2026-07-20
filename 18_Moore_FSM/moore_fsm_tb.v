`timescale 1ns/1ps

module moore_fsm_tb;

reg clk;
reg x;

wire y;

moore_fsm uut(
    .clk(clk),
    .x(x),
    .y(y)
);

// Clock generation

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin

    $dumpfile("moore_fsm.vcd");
    $dumpvars(0, moore_fsm_tb);

    // Sequence: 1 0 1
    x = 1; #10;
    x = 0; #10;
    x = 1; #10;

    // Random inputs
    x = 0; #10;
    x = 1; #10;
    x = 1; #10;

    $finish;

end

endmodule
