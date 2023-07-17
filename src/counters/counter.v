// Write your modules here!
module counter # (parameter width = 3, max_value = 7)
  (output reg cnt_max, output reg [width - 1:0] q, input enb, input rst_s, input ck);
  
  initial begin
		q = 0;
		cnt_max = 0;
	end
  always @ (negedge ck) begin  // sistema muda de estado quando ocorre mudanca de sinal do clock
    if (rst_s) begin    // se reset entao q = 0
      q = 0;
      cnt_max = 1'b0;
    end else if (enb) begin  // se enb for habilitado, conta ate max_value
      if (q == max_value)
        q = 0;
      else
      	q = q + 1;
    end
    if (q == max_value)
    	cnt_max = 1'b1;
  	else 
    	cnt_max = 1'b0;
  end
  
endmodule
