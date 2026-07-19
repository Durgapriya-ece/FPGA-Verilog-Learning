module comparator(
    input a,
    input b,
    output equal,
    output greater,
    output less

);

assign equal = ~(a ^ b);
assign greater = a & ~b;
assign less    = ~a & b;

endmodule