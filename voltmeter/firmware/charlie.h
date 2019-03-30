#pragma once

#define H(bit) (_BV(bit) | _BV(bit+4))
#define L(bit) _BV(bit)

typedef struct {
  uint8_t led;
  uint16_t mv;  
} LedPoint;

// The LED bit mask and value and the center voltage in mv value for each LED

const LedPoint LP[10] = {
  {H(1)|L(0), 400},  // > 4V
  {L(1)|H(0), 370},  // 3.7V
  {H(2)|L(1), 250},  // 2.5V
  {L(2)|H(1), 165},  // 1.65V
  {H(3)|L(2), 140},  // 1.4V
  {L(3)|H(2), 120},  // 1.2V
  {H(0)|L(3), 180},  // 1.8V 
  {L(0)|H(3), 000},  // 0V  
  {H(1)|L(3), -130}, // -1.3V
  {L(1)|H(3), -200}  // < -2V
};
