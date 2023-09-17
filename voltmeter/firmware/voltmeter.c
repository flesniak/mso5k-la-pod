#include <stdbool.h>
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

static Calibration calibration;
static enum { calNone, calHigh, calLow, calDone } calState = calNone;

// called at ~4Hz
ISR(TIM1_COMPA_vect) {
  static uint8_t currentChannel = 0;

  if (calState == calNone) {
    currentChannel++;
    if (currentChannel >= ADC_CHANNELS) {
      currentChannel = 0;
    }

    const uint16_t adc = getADC(currentChannel);
    const uint16_t mv = adcToMiliVolt(&calibration, adc);
    const LedPoint* lp = voltageToLeds(currentChannel, mv);
    setCharlieLedPoint(currentChannel, lp);
  } else {
    setCharlieLedOff(1);
  }
}

// enter calibration mode by jumpering PA6 to -2.5V / AVR GND
bool getCalMode() {
  return GPREAD(CALIB) == 0;
}

int main(void) {
  wdt_enable(WDTO_1S);
  // clock_prescale_set(clock_div_8);

  // charlie led driver overwrites DDR, configure pins there!
  // GPINPUT(VREF0);
  // GPINPUT(VREF1);
  // GPINPUT(CALIB);

  // setup the utility Timer/Counter1 to ~4Hz
  TCCR1B = _BV(WGM12) | _BV(CS12); // prescaler /256, clear timer on compare
  OCR1A = F_CPU / 256 / 4; // 4Hz ~= 7812 @ 8MHz
  TIMSK1 |= _BV(TOIE1) | _BV(OCIE1A); // Generate interrupts at overflow and A

  initCharlieLeds();
  startADC(); // Starts the ADC interrupt in free-running mode
  readCalibrationOrSetDefault(&calibration);

  uint8_t calAdcCount = 0;
  uint16_t calAdcLow = 0, calAdcHigh = 0;

  sei();
  while (1) {
    wdt_reset();

    uint16_t calAdcTemp;
    switch (calState) {
      case calLow:
        if (calAdcCount == 4) {
          setCharlieLed(0,8); // -1.3V
          calAdcCount = 0;
          calAdcTemp = getADC(0);
          if (!getCalMode())
            calState = calDone;
          else if (calAdcTemp >= 550 << ADC_OVERSAMPLES_SHIFT)
            calState = calHigh;
          else
            calAdcLow = calAdcTemp;
        } else {
          setCharlieLedOff(0);
          calAdcCount++;
        }

        _delay_ms(200);
        break;
      case calHigh:
        if (calAdcCount == 4) {
          setCharlieLed(0,1); // 3.7V
          calAdcCount = 0;
          calAdcTemp = getADC(0);
          if (!getCalMode())
            calState = calDone;
          else if (calAdcTemp < 550 << ADC_OVERSAMPLES_SHIFT)
            calState = calLow;
          else
            calAdcHigh = calAdcTemp;
        } else {
          setCharlieLedOff(0);
          calAdcCount++;
        }

        _delay_ms(200);
        break;
      case calDone:
        if (calAdcCount == 8) {
          setCharlieLedOff(0);
          storeCalibrationFromReferenceVoltages(&calibration,
            calAdcLow, -130,
            calAdcHigh, 370);
          calState = calNone;
          calAdcCount = 0;
        } else {
          if (calAdcCount % 2)
            setCharlieLed(0,8); // -1.3V
          else
            setCharlieLed(0,1); // 3.7V
          calAdcCount++;
        }

        _delay_ms(200);
        break;
      default:
        if (getCalMode())
          calState = calLow;
        else
          calState = calNone;
        sleep_cpu();
    }
  }
}


