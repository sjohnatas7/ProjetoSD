`include "bcd_bloco.v"

module bcd_controlador_3digitos(input ck,
                                input enb_0,
                                input rst_s,
                                input ld,
                                output reg [6:0] sgm0,
                                output reg [6:0] sgm1,
                                output reg [6:0] sgm2,
                                output enb_3);
                                
  	wire enb_1, aux_1;
	bcd_bloco bloco1 (.ck(ck), .enb(enb_0), .rst_s(rst_s), .ld(ld),
						  .sgm(sgm0), .cnt_max(enb_1));

	bcd_bloco bloco2 (.ck(ck), .enb(enb_1), .rst_s(rst_s), .ld(ld),
						  .sgm(sgm1), .cnt_max(aux_1));

	wire enb_2, aux_2;
	assign enb_2 = enb_1 & aux_1;
	bcd_bloco bloco3 (.ck(ck), .enb(enb_2), .rst_s(rst_s), .ld(ld),
						  .sgm(sgm2), .cnt_max(aux_2));
	assign enb_3 = enb_2 & aux_2;

endmodule
