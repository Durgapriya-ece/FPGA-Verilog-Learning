`timescale 1ns/1ps

module comparator_tb;

reg a;
reg b;

wire equal;
wire greater;
wire less;

// Instantiate Comparator

comparator uut (
    .a(a),
    .b(b),
    .equal(equal),
    .greater(greater),
    .less(less)
);

initial begin

    $dumpfile("comparator.vcd");
    $dumpvars(0, comparator_tb);

    a=0; b=0; #10;
    a=0; b=1; #10;
    a=1; b=0; #10;
    a=1; b=1; #10;

    $finish;

end

endmodule
