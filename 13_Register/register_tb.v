`timescale 1ns/1ps

module register_tb;

reg clk;
reg [3:0] d;

wire [3:0] q;

// Instantiate Register

register uut (
    .clk(clk),
    .d(d),
    .q(q)
);

// Clock generation
initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

// Test inputs
initial begin

    $dumpfile("register.vcd");
    $dumpvars(0, register_tb);

    d = 4'b0000;
    #10;

    d = 4'b1010;
    #10;

    d = 4'b0101;
    #10;

    d = 4'b1111;
    #10;

    d = 4'b0011;
    #10;

    $finish;

end

endmodule
