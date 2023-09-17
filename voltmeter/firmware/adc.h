#pragma once
#include <stdint.h>

#define ADC_INIT_SAMPLES 2
#define ADC_OVERSAMPLES 16
#define ADC_OVERSAMPLES_SHIFT 4
#define ADC_BITS 10
#define ADC_CHANNELS 2

void startADC();
void suspendADC();
void resumeADC();
uint16_t getADC(uint8_t channel);
