#pragma once

#include "avr8gpio.h"

/*
| Define         | AVR | Pin | Description |
|----------------|-----|-----|-------------|
| LED0           | PB0 | 5   | LED0  |
| LED1           | PB1 | 6   | LED1  |
| LED2           | PB2 | 7   | LED2  |
| LED3           | PB3 | 2   | LED3  |
| VREF           | PB4 | 3   | Vref  |
|                | PB5 | 1   | Reset |
*/

#define LED0  GPB0
#define LED1  GPB1
#define LED2  GPB2
#define LED3  GPB3

#define VREF GPB4
#define VREF_ADC 2

//#define SOFTWARE_TX GPB0
