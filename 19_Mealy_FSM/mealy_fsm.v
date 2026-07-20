module mealy_fsm (
    input clk,
    input x,
    output reg y
);

reg [1:0] state;

parameter S0 = 2'b00,
          S1 = 2'b01,
          S2 = 2'b10;

initial begin
    state = S0;
    y = 0;
end

always @(posedge clk)
begin
    y <= 0;

    case(state)

        S0:
        begin
            if(x)
                state <= S1;
        end

        S1:
        begin
            if(x)
                state <= S1;
            else
                state <= S2;
        end

        S2:
        begin
            if(x)
            begin
                y <= 1;
                state <= S1;
            end
            else
                state <= S0;
        end

    endcase

end

endmodule