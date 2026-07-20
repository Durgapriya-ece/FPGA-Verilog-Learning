`timescale 1ns/1ps

module debouncer_tb;

reg clk;
reg button;

wire button_out;

debouncer uut(
    .clk(clk),
    .button(button),
    .button_out(button_out)
);

// Clock

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

// Button bounce simulation

initial begin

    $dumpfile("debouncer.vcd");
    $dumpvars(0, debouncer_tb);

    button = 0;

    #20;

    // Simulated bouncing
    button = 1; #5;
    button = 0; #5;
    button = 1; #5;
    button = 0; #5;
    button = 1;

    #100;

    $finish;

end

endmodule
