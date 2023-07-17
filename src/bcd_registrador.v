module bcd_registrador( input ck,
				 input ld,
				 input [3:0] d,
				 output reg [3:0] q);
	initial begin
		q = 0;
	end

	always @ (negedge ck) begin
		if(ld) begin
			q = d;
		end
	end
endmodule
