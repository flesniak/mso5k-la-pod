#include <avr/wdt.h> 
#include <stdio.h>
#include <util/delay.h>

#include "board.h"
#include "charlie.h"

void ledOff() {
  DDRB  = 0x00;
  PORTB = 0x00;
}

void led(uint8_t n) {
  uint8_t mask = LP[n].led;
  DDRB  = mask & 0xF;
  PORTB = mask >> 4;
}

int main(void) {
  wdt_enable(WDTO_1S);

  GPINPUT(VREF);
  led(1);

  int8_t li = 0;
  int8_t ld = 1;
  uint16_t delay = 0;
  while (1) {
    wdt_reset();
    
    if (delay++ > 5000) {
      delay = 0;

      li += ld;
      if (li > 9) {
	li = 8;
	ld = -1;
      } if (li < 0) {
	li = 1;
	ld = 1;
      }
      
    }

    // Turn down the intensity to a reasonable level.
    uint8_t pwm = delay & 0x01f; 
    if (pwm == 0) {
      led(li);
    } else if (pwm == 1) {
      ledOff();
    }
  }
}


