/*
Módulo Máquina de Estados

Este módulo implementa uma máquina de estados para controlar o comportamento do sistema.

*/

module maquina_de_estados(
    input ck,
    input inicio,
    input Vint_z,
    input enb_3,
    output reg enb_0,
    output reg rst_s,
    output reg ch_vm,
    output reg ch_ref,
    output reg ch_zr,
    output reg ld
);
    localparam PARADO=0, RESET=1, CONTAR_TX=2, CONTAR_TM=3, PARAR_CONTADOR=4;

    reg [2:0] estado, prox_estado;

    initial begin
        // Inicializações
        estado = PARADO;
        prox_estado = PARADO;
	end

    always @(posedge ck) begin
        // Transição de estado na borda de subida do clock
        estado <= prox_estado;
    end
 
    always @(negedge ck) begin
        // Lógica da máquina de estados
        case (estado)
            PARADO: begin
                prox_estado <= RESET;
            end
            RESET: begin
                if (inicio)
                    prox_estado <= CONTAR_TX;
            end
            CONTAR_TX: begin
                if (enb_3)
                    prox_estado <= CONTAR_TM;
            end
            CONTAR_TM: begin
                if (Vint_z)
                    prox_estado <= PARAR_CONTADOR;
            end
            PARAR_CONTADOR: begin
                prox_estado <= PARADO;
            end
        endcase
    end

    always @(posedge ck) begin
        // Ações associadas a cada estado na borda de subida do clock
        case (estado)
            PARADO: begin
                ch_zr <= 1;
                rst_s <= 1;
                ld <= 0;
            end
            RESET: begin
                ch_zr <= 0;
            end
            CONTAR_TX: begin
                ld <= 1;
                enb_0 <= 1;
                ch_vm <= 1;
                rst_s <= 0;
            end
            CONTAR_TM: begin
                ch_vm <= 0;
                ch_ref <= 1;
            end
            PARAR_CONTADOR: begin
                enb_0 <= 0;
                ld <= 0;
                ch_ref <= 0;
            end
        endcase
    end
endmodule
