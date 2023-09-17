#pragma once

#include "avr8gpio.h"

/*
| Define         | AVR | Pin | Description |
|----------------|-----|-----|-------------|
| LED0           | PA0 | 13  | LED0        |
| LED1           | PA1 | 12  | LED1        |
| LED2           | PA2 | 11  | LED2        |
| LED3           | PA3 | 10  | LED3        |
| LED4           | PB0 | 2   | LED3        |
| CALIB          | PA6 | 7   | Calibration |
| VREF0          | PA5 | 8   | VrefA       |
| VREF1          | PA7 | 6   | VrefB       |
|                | PB3 | 4   | Reset       |
*/

#define LED0  GPA0
#define LED1  GPA1
#define LED2  GPA2
#define LED3  GPA3
#define LED4  GPB0
#define CALIB GPA6

#define VREF0 GPA5
#define VREF1 GPA7
#define VREF0_ADC 5
#define VREF1_ADC 7

//#define SOFTWARE_TX GPB0

// pullup for calibration input
#define DEFAULT_PORTA (_BV(PA6))