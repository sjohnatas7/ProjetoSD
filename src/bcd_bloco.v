`include "counters/counter.v"
`include "bcd_registrador.v"
`include "bcd_sgm.v"

module bcd_bloco(input ck,
                    input rst_s,
                    input enb,
                    input ld,
                    output[6:0] sgm,
                    output cnt_max);
    wire [3:0] qx;
	wire [3:0] qs;
    counter #(.width(4), .max_value(9)) contador (
        .ck(ck),
        .enb(enb),
        .rst_s(rst_s),
        .q(qx),
        .cnt_max(cnt_max)
    );
    bcd_registrador registrador(.ck(ck), .ld(ld), .d(qx), .q(qs));
    bcd_sgm conversor(.bcd(qs), .sgm(sgm));
endmodule