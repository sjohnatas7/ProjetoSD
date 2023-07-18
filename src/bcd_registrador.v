/*
Módulo BCD Registrador

Este módulo implementa um registrador 
de 4 bits para armazenar um valor BCD.

*/

module bcd_registrador(
    input ck,
    input ld,
    input [3:0] d,
    output reg [3:0] q
);
    initial begin
        // Inicialização
        q = 0;
    end

    always @(negedge ck) begin
        // Gravação do valor no registrador na borda de descida do clock
        if (ld) begin
            q = d;
        end
    end
endmodule
