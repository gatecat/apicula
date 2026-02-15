module top(input clk, reset, output [4:0] led);
wire [7:0] soc_led;
attosoc soc_i(.clk(clk), .led(soc_led));
assign led = soc_led[4:0];
endmodule
