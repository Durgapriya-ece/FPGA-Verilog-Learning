`timescale 1ns/1ps

module decoder_tb;

reg a;
reg b;

wire y0;
wire y1;
wire y2;
wire y3;

// Instantiate Decoder

decoder uut (
    .a(a),
    .b(b),
    .y0(y0),
    .y1(y1),
    .y2(y2),
    .y3(y3)
);

initial begin

    $dumpfile("decoder.vcd");
    $dumpvars(0, decoder_tb);

    a=0; b=0; #10;
    a=0; b=1; #10;
    a=1; b=0; #10;
    a=1; b=1; #10;

    $finish;

end

endmodule
