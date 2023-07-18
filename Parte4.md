# Projeto de Conversor Analógico para Digital (ADC) - Parte 4

Nesta parte do projeto, será apresentada a implementação de um controlador para um conversor analógico para digital (ADC) do tipo rampa dupla, utilizando a linguagem de descrição de hardware (HDL). O controlador é responsável por gerar os sinais de controle, realizar a contagem dos períodos "tx" e "tm" e atualizar os displays de 7 segmentos com o valor convertido.

## Implementação do Controlador
O controlador do ADC, representado na Figura 6, é composto por uma máquina de estados que gera os sinais de controle, contadores decimais, registradores e conversores BCD para 7 segmentos. 

Os contadores são responsáveis pela contagem dos períodos "tx" e "tm", enquanto os registradores armazenam o valor da última contagem para exibição nos displays.

O funcionamento do controlador segue as seguintes etapas:

1. O acionamento da chave `inicio` inicia a operação do conversor. Depois a chave `ch_vm` é ativada. A máquina de estados, então, aguarda o final da contagem do contador, sinalizado por `enb_3=1`.
2. Após o período `tx`, a chave `ch_ref` é acionada, e a máquina de estados aguarda a tensão na saída do integrador atingir o valor zero, sinalizado por `Vint_z=1`, a qual é simulada _300clocks_ depois do sinal `enb_3=1`.
3. Quando `Vint_z=1`, o valor dos contadores é transferido para os registradores no próximo ciclo de clock, atualizando os displays com o novo valor de tensão. 
4. A operação é encerrada com o acionamento da chave `ch_zr`, que leva a saída do integrador a zero, e a reinicialização dos contadores com o valor zero.

