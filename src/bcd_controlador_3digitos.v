`include "bcd_bloco.v"

module bcd_controlador_3digitos(input ck,
                                input enb,
                                input rst_s,
                                input ld,
                                output [6:0] sgm0,
                                output [6:0] sgm1,
                                output [6:0] sgm2,
                                output cnt_max);
                                
  wire enb_1, enb_2;
	bcd_bloco bloco1 (.ck(ck), .enb(enb), .rst_s(rst_s), .ld(ld),
						  .sgm(sgm0), .cnt_max(enb_1));

	bcd_bloco bloco2 (.ck(ck), .enb(enb_1), .rst_s(rst_s), .ld(ld),
						  .sgm(sgm1), .cnt_max(enb_2));

	wire aux_1, aux_2;
	assign aux_1 = enb_1 & enb_2;
	bcd_bloco bloco3 (.ck(ck), .enb(aux_1), .rst_s(rst_s), .ld(ld),
						  .sgm(sgm2), .cnt_max(aux_2));
	assign cnt_max = enb_2 & aux_2;
endmodule
