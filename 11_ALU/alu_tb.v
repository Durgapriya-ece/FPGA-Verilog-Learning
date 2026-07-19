`timescale 1ns/1ps

module alu_tb;

reg a;
reg b;
reg [1:0] sel;

wire y;
wire carry;

// Instantiate ALU

alu uut(
    .a(a),
    .b(b),
    .sel(sel),
    .y(y),
    .carry(carry)
);

initial begin

    $dumpfile("alu.vcd");
    $dumpvars(0, alu_tb);

    // AND
    a=0; b=0; sel=2'b00; #10;
    a=1; b=1; sel=2'b00; #10;

    // OR
    a=0; b=1; sel=2'b01; #10;
    a=1; b=0; sel=2'b01; #10;

    // XOR
    a=0; b=1; sel=2'b10; #10;
    a=1; b=1; sel=2'b10; #10;

    // ADD
    a=0; b=0; sel=2'b11; #10;
    a=0; b=1; sel=2'b11; #10;
    a=1; b=0; sel=2'b11; #10;
    a=1; b=1; sel=2'b11; #10;

    $finish;

end

endmodule
