#pragma once

#define H(bit) (_BV(bit) | _BV(bit+4))
#define L(bit) _BV(bit)

typedef struct {
  uint8_t led;
  uint16_t adc;  
} LedPoint;

// The LED bit mask and value and the center ADC value for each LED

const LedPoint LP[10] = {
  {H(1)|L(0), 1000}, // > 4V
  {L(1)|H(0), 900},  // 3.7V

  {H(2)|L(1), 800},  // 2.5V
  {L(2)|H(1), 700},  // 1.65V

  {H(3)|L(2), 600},  // 1.4V
  {L(3)|H(2), 500},  // 1.2V

  {H(0)|L(3), 400},  // 1.8V 
  {L(0)|H(3), 300},  // 0V
  
  {H(1)|L(3), 200},  // -1.3V
  {L(1)|H(3), 100}   // < -2V
};
