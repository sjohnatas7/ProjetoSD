# Projeto Final de Sistemas Digitais

## ADC Rampa Dupla e Contador BCD

Este projeto implementa um conversor analógico para digital (ADC) do tipo rampa dupla em linguagem de descrição de hardware (HDL). O ADC é controlado por uma máquina de estados e faz uso de um contador BCD de 3 dígitos para visualização do valor analógico convertido em displays de 7 segmentos.

### Requistitos

Antes de executar o projeto, certifique-se de ter os seguintes programas instalados em seu ambiente de desenvolvimento:

- [Yosys](https://github.com/YosysHQ/yosys): Ferramenta de síntese de hardware.
- [Icarus Verilog](https://github.com/steveicarus/iverilog): Simulador de Verilog.
- [GTKWave](http://gtkwave.sourceforge.net/): Visualizador de forma de onda.
- [Graphviz](https://graphviz.org/): Ferramenta de visualização de gráficos.

## Estrutura do Projeto

O projeto está estruturado da seguinte forma:

- `src/`: Diretório contendo os arquivos de desenvolvimento para projeto.
- `simulacoes/`: Diretório contendo os arquivos para simulação e otimização.
- `src/counters/`: Diretório contendo os contadores criados na parte 2 do projeto.
- `rtl/`: Diretório contendo os arquivos para geração de RTL.

## Componentes Principais

O projeto consiste nos seguintes componentes principais:

- `maquina_de_estados.v`: Implementa a máquina de estados responsável pelo controle do ADC.
- `bcd_controlador_3digitos.v`: Implementa o controlador BCD para até 3 dígitos.
- `counter.v`: Implementa o módulo de contador utilizado no projeto.
- `bcd_registrador.v`: Implementa o registrador utilizado no controlador BCD.
- `bcd_sgm.v`: Implementa o módulo de conversão BCD para 7 segmentos.
- `bcd_controlador.v`: Implementa os dados necessários para a simulação do contador BCD e cria um clock para o contador
- `adc_controlador.v`: Implementa os dados necessários para a simulação da rampa dupla ADC além de controlar o sinal Vint_z 

## Como usar
### Como Executar a Simulação

A simulação do contador BCD pode ser visualizada, por meio do comando :
```
$ make bcd-simulate
```
Enquanto a rampa dupla ADC pode ser visualizada através do comando : 
```
$ make adc-simulate
```

### Como gerar os arquivos RTL

Os arquivos RTL do contador BCD podem ser visualizados, por meio do comando :
```
$ make bcd-rtl
```
Enquanto para a rampa dupla ADC pode ser visualizados através do comando : 
```
$ make adc-rtl
```

### Limpeza

Para limpar os arquivos gerados pela simulação, execute o comando 
```
$ make clean
```
