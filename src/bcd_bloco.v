`include "counters/bcd_contador.v"
`include "bcd_registrador.v"
`include "bcd_sgm.v"
/*
Módulo BCD Bloco

Este módulo é responsável por controlar um dígito do display BCD de 3 dígitos.

*/

module bcd_bloco(input ck,
                    input rst_s,
                    input enb,
                    input ld,
                    output reg [6:0] sgm,
                    output cnt_max);
    wire [3:0] qx;  // Sinal de saída do contador
    wire [3:0] qs;  // Sinal de saída do registrador
    bcd_contador #(.width(4), .max_value(9)) contador (
        .ck(ck),
        .enb(enb),
        .rst_s(rst_s),
        .q(qx),
        .cnt_max(cnt_max)
    );
    bcd_registrador registrador(.ck(ck), .ld(ld), .d(qx), .q(qs));
    bcd_sgm conversor(.bcd(qs), .sgm(sgm));
endmodule
