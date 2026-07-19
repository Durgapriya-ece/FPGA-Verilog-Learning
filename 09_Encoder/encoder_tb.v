`timescale 1ns/1ps

module encoder_tb;

reg d0;
reg d1;
reg d2;
reg d3;

wire y1;
wire y0;

// Instantiate Encoder

encoder uut (
    .d0(d0),
    .d1(d1),
    .d2(d2),
    .d3(d3),
    .y1(y1),
    .y0(y0)
);

initial begin

    $dumpfile("encoder.vcd");
    $dumpvars(0, encoder_tb);

    d0=1; d1=0; d2=0; d3=0; #10;
    d0=0; d1=1; d2=0; d3=0; #10;
    d0=0; d1=0; d2=1; d3=0; #10;
    d0=0; d1=0; d2=0; d3=1; #10;

    $finish;

end

endmodule
