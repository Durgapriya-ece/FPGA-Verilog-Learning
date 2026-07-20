`timescale 1ns/1ps

module mealy_fsm_tb;

reg clk;
reg x;

wire y;

// Instantiate Mealy FSM

mealy_fsm uut(
    .clk(clk),
    .x(x),
    .y(y)
);

// Clock generation

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

// Test sequence

initial begin

    $dumpfile("mealy_fsm.vcd");
    $dumpvars(0, mealy_fsm_tb);

    // Sequence 101
    x = 1; #10;
    x = 0; #10;
    x = 1; #10;

    // More inputs
    x = 0; #10;
    x = 1; #10;
    x = 1; #10;

    #10;

    $finish;

end

endmodule