#include <stdio.h>
#include <stdlib.h>
#include <avr/interrupt.h>
#include <avr/power.h>
#include <avr/sleep.h>
#include <avr/wdt.h>
#include <util/delay.h>

#include "adc.h"
#include "board.h"
#include "calibration.h"
#include "charlie.h"

// void delay(uint16_t spins) {
//   volatile uint16_t delay = 0;
//   while (delay++ < spins) {
//    sleep_enable();
//    sleep_cpu(); // Stop the CPU until the next interrupt, which should happen fairly often
//    sleep_disable();
//   }
// }

Calibration calibration;

// called at ~4Hz
ISR(TIM1_COMPA_vect) {
  static uint8_t currentChannel = 0;

  currentChannel++;
  if (currentChannel >= ADC_CHANNELS) {
    currentChannel = 0;
  }

  const uint16_t adc = getADC(currentChannel);
  const uint16_t mv = adcToMiliVolt(&calibration, adc);
  const LedPoint* lp = voltageToLeds(currentChannel, mv);
  setCharlieLedPoint(currentChannel, lp);
  // setCharlieLed(currentChannel, adc * LEDS / 1024);
}

int main(void) {
  wdt_enable(WDTO_1S);
  // clock_prescale_set(clock_div_8);
  GPINPUT(VREF0);
  GPINPUT(VREF1);

  // setup the utility Timer/Counter1 to ~4Hz
  TCCR1B = _BV(WGM12) | _BV(CS12); // prescaler /256, clear timer on compare
  OCR1A = F_CPU / 256 / 4; // 4Hz ~= 7812 @ 8MHz
  TIMSK1 |= _BV(TOIE1) | _BV(OCIE1A); // Generate interrupts at overflow and A

  initCharlieLeds();
  startADC(); // Starts the ADC interrupt in free-running mode
  readCalibrationOrSetDefault(&calibration);

  sei();
  while (1) {
    wdt_reset();
    // setCharlieLed(0, 2);
    // setCharlieLed(1, 5);
    sleep_cpu();
  }
}


