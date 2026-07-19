`timescale 1ns/1ps

module shift_register_tb;

reg clk;
reg serial_in;

wire [3:0] q;

// Instantiate Shift Register

shift_register uut (
    .clk(clk),
    .serial_in(serial_in),
    .q(q)
);

// Clock generation

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

// Test sequence

initial begin

    $dumpfile("shift_register.vcd");
    $dumpvars(0, shift_register_tb);

    serial_in = 1;
    #20;

    serial_in = 0;
    #20;

    serial_in = 1;
    #20;

    serial_in = 0;
    #20;

    $finish;

end

endmodule
