PROJ=voltmeter

include ../atmega8/makefile

AVR_PROGRAMMER    = -c atmelice_isp -P usb
AVR               = attiny85
UART_BAUD         = 9600
F_CPU             = 16000000
CFLAGS += -D SHUTTER_ADDRESS=1

# Need to slow down the programming because we're running on 1 MHz internal RC clock
PROGRAM_BIT_TIME  = 5

readfuses:
	avrdude $(AVR_PROGRAMMER) -p $(AVR) -B 100 -U lfuse:r:-:h -U hfuse:r:-:h
fuses:
	avrdude $(AVR_PROGRAMMER) -p $(AVR) -B 100 -U lfuse:w:0xe2:m -U hfuse:w:0xdf:m

