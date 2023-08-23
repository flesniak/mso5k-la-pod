PROJ=testleds

include ../atmega8/makefile

AVR_PROGRAMMER    = -c usbasp
AVR               = attiny84
UART_BAUD         = 9600
F_CPU             = 8000000
CFLAGS += -D SHUTTER_ADDRESS=1

readfuses:
	avrdude $(AVR_PROGRAMMER) -p $(AVR) -B 100 -U lfuse:r:-:h -U hfuse:r:-:h
fuses:
	avrdude $(AVR_PROGRAMMER) -p $(AVR) -B 100 -U lfuse:w:0xe2:m -U hfuse:w:0xdf:m
