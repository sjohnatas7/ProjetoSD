`include "simulacoes/src/bcd_controlador_3digitos.v"

module bcd_tb;
  reg ck, inicio, Vint_z;
	wire enb_3, ld;
	wire enb_0, rst_s, ch_zr, ch_ref, ch_vm;
	wire [6:0] sgm0;
	wire [6:0] sgm1;
	wire [6:0] sgm2;

  // Instantiate the counter module
	bcd_controlador_3digitos counter(.ck(ck), .rst_s(1'b0), .ld(1'b1), .enb(1'b1),
								.sgm0(sgm0), .sgm1(sgm1), .sgm2(sgm2),
								.cnt_max(enb_3));
  // Generate clock
  always begin
		#1 ck = ~ck;
  end
  // Stimulus
  initial begin
    $dumpfile("simulacoes/vcd/bcd.vcd");
	$dumpvars(0, bcd_tb);
    	ck = 1;
		inicio = 1;
		Vint_z = 0;
		#5 inicio = 0;
		#3000 Vint_z = 1;
		#20 Vint_z = 0;

		#5 inicio = 1;
		#5 inicio = 0;
		#3000 Vint_z = 1;
		#10 Vint_z = 0;
    $finish;
  end
endmodule
