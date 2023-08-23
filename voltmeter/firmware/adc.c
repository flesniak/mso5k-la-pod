#include "adc.h"
#include "board.h"

#include <avr/io.h>
#include <avr/interrupt.h>

static uint16_t adc_values[ADC_CHANNELS] = {0};
static uint8_t cur_channel = 0;
static uint8_t num_samples = 0;
static uint8_t adc_mux[ADC_CHANNELS] = {VREF0_ADC, VREF1_ADC};

void startADC() {
  cur_channel = num_samples = 0;

  ADMUX = adc_mux[0];
  ADCSRA = _BV(ADEN) | _BV(ADSC) | _BV(ADATE)
           | _BV(ADPS2) | _BV(ADPS1) | _BV(ADPS0);
  ADCSRB = 0;
  for (uint8_t n=0; n<ADC_CHANNELS; n++)
    DIDR0 |= 1 << adc_mux[n]; // Disable digital input buffer on the selected ADC input

  resumeADC();
}

ISR(ADC_vect) {
  static uint16_t accumulator = 0;
  uint16_t new = ADCL | ADCH << 8;
  if (num_samples >= ADC_INIT_SAMPLES)
    accumulator += new;

  if (num_samples == ADC_INIT_SAMPLES + ADC_OVERSAMPLES - 1) {
    adc_values[cur_channel] = accumulator;
    accumulator = 0;
    num_samples = 0;
    if (cur_channel == ADC_CHANNELS-1)
      cur_channel = 0;
    else
      cur_channel++;
    suspendADC();
    ADMUX = adc_mux[cur_channel];
    resumeADC();
  } else
    num_samples++;
}

// gets the most recent result (0..1023 multiplied by ADC_OVERSAMPLES)
uint16_t getADC(uint8_t channel) {
  cli();
  uint16_t value = adc_values[channel];
  sei();

  return value;
}

void suspendADC() {
  ADCSRA &=~ _BV(ADIE);
}

void resumeADC() {
  ADCSRA |= _BV(ADIE);
}
