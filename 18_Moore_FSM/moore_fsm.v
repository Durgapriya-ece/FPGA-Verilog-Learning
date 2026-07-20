module moore_fsm (
    input clk,
    input x,
    output reg y
);

reg [1:0] state;

parameter S0 = 2'b00,
          S1 = 2'b01,
          S2 = 2'b10,
          S3 = 2'b11;

initial begin
    state = S0;
    y = 0;
end

always @(posedge clk)
begin
    case(state)

        S0:
        begin
            y <= 0;
            if(x)
                state <= S1;
        end

        S1:
        begin
            y <= 0;
            if(x)
                state <= S1;
            else
                state <= S2;
        end

        S2:
        begin
            y <= 0;
            if(x)
                state <= S3;
            else
                state <= S0;
        end

        S3:
        begin
            y <= 1;
            state <= S0;
        end

    endcase
end

endmodule
