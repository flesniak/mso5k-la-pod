#include "adc.h"
#include "charlie.h"

#include <avr/io.h>
#include <avr/interrupt.h>

void startADC(uint8_t input) {
  input &= 0x0f;
  ADMUX = input; // VCC reference
  
  ADCSRA = _BV(ADEN) | _BV(ADSC) | _BV(ADATE) | _BV(ADIE)
           | _BV(ADPS2) | _BV(ADPS1) | _BV(ADPS0);
           
  ADCSRB = 0;
  DIDR0 = input << 2; // Disable digital input buffer on the selected ADC input
}

uint16_t oversampled;

// This gets called via an IRQ whenever a conversion has finished
ISR(ADC_vect) {
  uint16_t raw = ADCL | ADCH << 8;    
  int16_t delta = raw - (oversampled>>ADC_OVERSAMPLES);    
  oversampled += delta;
}

uint16_t getADC() {
  cli();
  uint16_t unscaled = oversampled;
  sei();
  
  return unscaled;
}

void suspendADC() {
  ADCSRA &=~ _BV(ADIE);  
}

void resumeADC() {
  ADCSRA |= _BV(ADIE);  
}
