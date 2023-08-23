#pragma once
#include <stdint.h>
#include "adc.h"

typedef struct {
  uint8_t ddr;  // the pins that should be an output pin (0..3=PA0..PA3,4=PB0)
  uint8_t port; // how the pins should be driven (0..3=PA0..PA3,4=PB0)
} LedPoint;

typedef struct {
  LedPoint ch[ADC_CHANNELS];
  int16_t mv;   // The actual voltage in mv of the Vref
} LedEntry;

// LEDs per channel
#define LEDS 10

void initCharlieLeds();
void resumeCharlieLeds();
void suspendCharlieLeds();
void setCharlieLed(uint8_t channel, uint8_t ledIdx);
void setCharlieLedPoint(uint8_t channel, const LedPoint* lp);
void setCharlieLedOff(uint8_t channel);
const LedPoint* voltageToLeds(uint8_t channel, int16_t mv);