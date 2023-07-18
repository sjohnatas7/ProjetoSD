`include "simulacoes/src/maquina_de_estados.v"
`include "simulacoes/src/bcd_controlador_3digitos.v"

module adc_controlador();
    reg ck, inicio, Vint_z;
    wire enb_3, ld;
    wire enb_0, rst_s, ch_zr, ch_ref, ch_vm;
    wire [6:0] sgm0;
    wire [6:0] sgm1;
    wire [6:0] sgm2;

    // Maquina de estados fornecendo sinais iniciais dependentes a simulacao
    maquina_de_estados maquina_de_estados(.ck(ck), .inicio(inicio), .Vint_z(Vint_z), .enb_3(enb_3),
                        .enb_0(enb_0), .rst_s(rst_s), .ch_vm(ch_vm), .ch_ref(ch_ref),
                        .ch_zr(ch_zr), .ld(ld));

    // Contador fornecendo sinais iniciais dependentes a maquina de estados 
    bcd_controlador_3digitos contador(.ck(ck), .rst_s(rst_s), .ld(ld), .enb_0(enb_0),
                                .sgm0(sgm0), .sgm1(sgm1), .sgm2(sgm2),
                                .enb_3(enb_3));
    // Gera Clock
    always
        #1 ck = ~ck;

    // Dados para simulação
    initial begin
        $dumpfile("simulacoes/vcd/adc.vcd");
        $dumpvars(0, adc_controlador);
        ck = 1;
        inicio = 0;
        Vint_z = 0;
        // inicio da maquina de estado
        #5 inicio = 1;
        #2 inicio =0;
        #3000
        // outro inicio da maquina de estado
        inicio = 1;
        #2 inicio =0;
        #3000
        $finish();
    end

always @(negedge ck) begin
    //simula o sinal Vint_z quando é emitido o enb_3
    if(enb_3) begin
        #300 Vint_z = 1;
        #2 Vint_z = 0;
    end
end

endmodule
