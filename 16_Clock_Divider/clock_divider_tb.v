`timescale 1ns/1ps

module clock_divider_tb;

reg clk;
wire clk_out;

// Instantiate Clock Divider

clock_divider uut (
    .clk(clk),
    .clk_out(clk_out)
);

// Clock generation

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

// Simulation

initial begin

    $dumpfile("clock_divider.vcd");
    $dumpvars(0, clock_divider_tb);
 
  #100;

    $finish;

end

endmodule
