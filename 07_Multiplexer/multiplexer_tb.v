`timescale 1ns/1ps

module multiplexer_tb;

reg a;
reg b;
reg sel;

wire y;

// Instantiate Multiplexer

multiplexer uut (
    .a(a),
    .b(b),
    .sel(sel),
    .y(y)
);

initial begin

    $dumpfile("multiplexer.vcd");
    $dumpvars(0, multiplexer_tb);

    a=0; b=0; sel=0; #10;
    a=1; b=0; sel=0; #10;
    a=0; b=1; sel=1; #10;
    a=1; b=1; sel=1; #10;
    a=0; b=1; sel=0; #10;
    a=1; b=0; sel=1; #10;

    $finish;

end

endmodule