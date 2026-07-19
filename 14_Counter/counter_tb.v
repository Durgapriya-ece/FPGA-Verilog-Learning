`timescale 1ns/1ps

module counter_tb;

reg clk;
wire [3:0] count;

// Instantiate Counter

counter uut (
    .clk(clk),
    .count(count)
);

// Clock Generation

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

// Simulation

initial begin

    $dumpfile("counter.vcd");
    $dumpvars(0, counter_tb);

    #100;

    $finish;

end

endmodule