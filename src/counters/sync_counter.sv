module d_ff(output reg q, qb, input clk, clrn, d);
  always @ (negedge clk or posedge clrn)
	if (clrn)
		q = 1'b0;
	else
		q = d;
	assign qb = ~q;
endmodule

module sync_counter #(parameter width = 3, max_value = 7)
  (output [width-1:0] q, output cnt_max, input enb, rst_s, ck);
  
  genvar i;
  wire [width:0] aux;
  generate
    for (i=0; i < width; i=i+1)
      if (i == 0) begin
        assign aux[0] = 1'b1;
        d_ff u0 (.q(q[i]), .qb(), .clk(ck && enb), .clrn(rst_s), .d(aux[i] ^ q[i]));
      end
      else begin
        assign aux[i] = aux[i-1] && q[i-1];
        d_ff ui (.q(q[i]), .qb(), .clk(ck && enb), .clrn(rst_s), .d(q[i] ^ aux[i]));
      end
  endgenerate
  
  assign cnt_max = &q;

endmodule
