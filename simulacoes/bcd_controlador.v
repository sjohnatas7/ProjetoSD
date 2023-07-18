`include "simulacoes/src/bcd_controlador_3digitos.v"

module bcd_tb;
	reg ck, inicio, Vint_z;
	wire enb_3, ld, qs1, qs2, qs3;
	wire rst_s, ch_zr, ch_ref, ch_vm;
	wire [6:0] sgm0;
	wire [6:0] sgm1;
	wire [6:0] sgm2;

  // Instancia um bcd_controlador_3digitos e ja fornece dados iniciais
	bcd_controlador_3digitos counter(.ck(ck), .rst_s(1'b0), .ld(1'b1), .enb_0(1'b1),
								.sgm0(sgm0), .sgm1(sgm1), .sgm2(sgm2),
								.enb_3(enb_3));
  // Gera clock
  always begin
		#1 ck = ~ck;
  end
  // Dados para a simulação
  initial begin
    $dumpfile("simulacoes/vcd/bcd.vcd");
	$dumpvars(0, bcd_tb);
    	ck <= 0;
		#6000
    $finish;
  end
endmodule
