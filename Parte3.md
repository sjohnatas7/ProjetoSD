# Parte 3 - Contador BCD de 000 a 999

O módulo `bcd_controlador_3digitos.v` é o componente

## Módulo bcd_controlador:

Este módulo é o responsável por criar uma instância de `bcd_controlador_3digitos`, e iniciar com um `enb_0` de 1. Além de criar os clocks (`ck`) necessários para o contador e criar a simulação de $6000 sec$.
## Módulo bcd_controlador_3digitos:
Este é o módulo principal central responsável pelo controle do display BCD de 3 dígitos. Ele coordena o funcionamento dos três blocos bcd_bloco que controlam cada um dos dígitos do display.

 Ele recebe um clock (`ck`), uma entrada de habilitação (`enb`), um sinal de reset síncrono (`rst_s`), um sinal de carregamento (`ld`), e possui três saídas de segmento (`sgm0`, `sgm1`, `sgm2`) e uma saída `enb_3`.

Neste módulo, são declarados três blocos de contadores (`bloco1, bloco2, bloco3`). Cada bloco é uma instância do módulo `bcd_bloco` e está interligado de forma sequencial. O primeiro bloco recebe o sinal de habilitação original (`enb_0`), enquanto os blocos subsequentes recebem o sinal de habilitação do bloco anterior (`enb_1, enb_2`).

A saída `enb_3` é o sinal de habilitação de quando o contador chega ao limite, isto é, chega a 999.

## Módulo bcd_bloco:
Este módulo é responsável por controlar o contador de 4 bits, o registrador de 4 bits e o conversor BCD para segmento de 7 bits para cada dígito. Ele recebe um clock (`ck`), um sinal de reset síncrono (`rst_s`), uma entrada de habilitação (`enb`), um sinal de carregamento (`ld`), e possui uma saída de segmento (`sgm`) e uma saída `cnt_max`.

Dentro deste módulo, são declarados dois sinais: `qx` e `qs`. `qx` é a saída do contador de 4 bits, enquanto `qs` a saída do registrador de 4 bits. Essa saída `qs` é então transformada pelo conversor para o display de 7 segmentos.

## Módulo bcd_contador:

O contador BCD começa com o valor inicial `q` e `cnt_max` de 0. Em cada transição de clock, o módulo verifica o sinal de reset. Se o sinal de reset for ativado, o contador é reiniciado. Caso contrário, se o sinal de habilitação estiver ativado, o contador incrementa seu valor atual. Se o valor atual for o seu `max_value`, ele é reiniciado para 0 e a sua saída cnt_max é definida como 1.

## Módulo bcd_sgm:
Este módulo é um conversor BCD para segmento de 7 bits. Ele recebe uma entrada de 4 bits (`bcd`) e possui uma saída registrada de 7 bits (`sgm`).

O módulo possui uma declaração case que mapeia os valores BCD de 0 a 9 para seus respectivos padrões de segmento de 7 bits. Cada valor BCD é convertido para o padrão de segmento correspondente e atribuído à saída sgm.

## Módulo bcd_registrador:
Este módulo é um registrador de 4 bits. Ele recebe um clock (`ck`), um sinal de carregamento (`ld`), uma entrada de 4 bits (`d`), e possui uma saída registrada de 4 bits (`q`).

O sinal `ld` é utilizado para carregar os valores dos contadores nos registradores do BCD, ativando assim a exibição correta dos dígitos no display.

O registrador é atualizado apenas quando o sinal de carregamento(`ld`) está ativo. Se o sinal de carregamento estiver ativado, o valor de entrada `d` é carregado no registrador e atribuído à saída `q`.
