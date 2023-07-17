# Gera arquivos otimizados dos arquivos fonte do trabalho
bcd_optimize:
	yosys simulacoes/otimizacao/bcd.ys

adc_optimize:
	yosys simulacoes/otimizacao/adc.ys

# Gera simulacao
bcd-gen-simulation: bcd_optimize
	iverilog -o simulacoes/bcd.simul simulacoes/bcd_controlador.v

adc-gen-simulation: adc_optimize bcd_optimize
	iverilog -o simulacoes/adc.simul simulacoes/adc_controlador.v

# Executa simulacao
bcd-simulate: bcd-gen-simulation
	@./simulacoes/bcd.simul
	@gtkwave simulacoes/vcd/bcd.vcd

adc-simulate: adc-gen-simulation
	@./simulacoes/adc.simul
	@gtkwave simulacoes/vcd/adc.vcd

bcd-rtl:
	yosys rtl/bcd_gen_rtl.ys

adc-rtl:
	yosys rtl/adc_gen_rtl.ys

clean:
	rm -f simulacoes/*.simul
	rm -f simulacoes/vcd/*.vcd
	rm -f simulacoes/src/*.v
