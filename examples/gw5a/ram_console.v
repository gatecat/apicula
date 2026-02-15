module top(input clk, reset, output reg [4:0] led);

reg [4:0] memory [0:1023];
reg [9:0] addr;

reg [19:0] div;
reg tick;

always @(posedge clk) begin
	{tick, div} <= div + 1'b1;
	if (tick) begin
		addr <= addr + 1'b1;
		memory[addr] <= addr[9:5] ^ addr[4:0];
		led[4:1] <= memory[addr - 2];
		led[0] <= addr[0];
	end
end

// assign led[0] = 1'b1;

endmodule
