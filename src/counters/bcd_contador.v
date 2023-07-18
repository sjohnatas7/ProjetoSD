/*
Módulo BCD Contador

Este módulo implementa um contador BCD com um valor máximo especificado.

*/

module bcd_contador # (parameter width = 3, max_value = 7)
  (output reg cnt_max, output reg [width - 1:0] q, input enb, input rst_s, input ck);
  
  initial begin
    // Inicializações
    q = 0;
    cnt_max = 0;
  end

  always @ (negedge ck) begin
    // Transição de estado na borda de descida do clock
    if (rst_s) begin
      // Reset: q = 0
      q = 0;
      cnt_max = 1'b0;
    end else if (enb) begin
      // Contagem
      if (q == max_value)
        q = 0;
      else
        q = q + 1;
    end

    // Verifica se o contador atingiu o valor máximo
    if (q == max_value)
      cnt_max = 1'b1;
    else 
      cnt_max = 1'b0;
  end
  
endmodule
