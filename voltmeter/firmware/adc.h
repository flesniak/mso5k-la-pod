#pragma once
#include <stdint.h>

#define ADC_OVERSAMPLES 4
#define ADC_BITS 10

void startADC(uint8_t input);

uint16_t getADC(void);

void suspendADC(void);

void resumeADC(void);
