#include <avr/wdt.h> 
#include <stdio.h>
#include <util/delay.h>
#include <stdlib.h>

#include "board.h"
#include "charlie.h"
#include "adc.h"
#include "softwareuart.h"


void ledOff() {
  DDRB  = 0x00;
  PORTB = 0x00;
}

void led(uint8_t n) {
  uint8_t mask = LP[n].led;
  DDRB  = mask & 0xF;
  PORTB = mask >> 4;
}

uint16_t voltageToLeds(int16_t mv) {

  int16_t diff = 9999;
  uint8_t best = -1;
  
  for (uint8_t i=0;i<10;i++) {
    int16_t d = mv-LP[i].mv;
    if (abs(d) < abs(diff)) {
      best = i;
      diff = d;
    }
  }
  
  uint16_t leds = _BV(best);
  
  if (abs(diff) > 10) {
    if (best < 9) {
      leds |= _BV(best+1);
    }
    if (best > 1) {
      leds |= _BV(best-1);
    }
  }
  
  return leds;
}

const int16_t VEE = -2525;
const int16_t VCC = 2375;

int main(void) {
  wdt_enable(WDTO_1S);

  GPINPUT(VREF);
  led(1);
  startADC(VREF_ADC); // Starts the ADC interrupt in free-running mode
 
#ifndef SOFTWARE_TX
  uint8_t ledCount = 0;
#else
  UART_init();
  UART_tx_str("Boot\r\n");
#endif
  
  uint16_t delay = 0;
  const int32_t FULL_RANGE = VCC-VEE;
  
  while (1) {
    wdt_reset();

    uint16_t adc = getADC();
    int32_t voltage = ((FULL_RANGE * adc) >> 10) + VEE;
    uint16_t leds = voltageToLeds(voltage);
        
#ifdef SOFTWARE_TX
    
    UART_tx_str("Test: ");
    UART_tx_int16(voltage);
    UART_tx_str(" ");
    UART_tx_uint16(leds);
    UART_tx_str("\r\n");

    delay = 0;
    while (delay++ < 50000) { }
    
#else
    
    uint8_t pwm = delay++ & 0x01f; 

    if (pwm == 0) {
      if (++ledCount >= 10) {
        ledCount = 0;
      }
      if (leds & _BV(ledCount)) {
        led(ledCount);
      }
      
    } else if (pwm == 1) {
      ledOff();
    }
    
#endif    
  }
}


