module debouncer (
    input clk,
    input button,
    output reg button_out
);

reg [2:0] counter = 0;

always @(posedge clk)
begin
    if(button == button_out)
    begin
        counter <= 0;
    end
    else
    begin
        counter <= counter + 1;

        if(counter == 3'b111)
        begin
            button_out <= button;
            counter <= 0;
        end
    end
end

endmodule
