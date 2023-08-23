#include "charlie.h"

#include <avr/interrupt.h>
#include <avr/io.h>
#include <stdlib.h>

#include "board.h"
#include "adc.h"
#include "calibration.h"

static const LedPoint* state[ADC_CHANNELS] = {0};
extern Calibration calibration;

// The LED bit mask and value and the center voltage in mv value for each LED
#define DRIVE(pin1,pin2) (_BV(pin1) | _BV(pin2))
#define HIGH(bit) _BV(bit)

const LedEntry LP[LEDS] = {
  // {LedsA}, {LedsB}, Vref
  {{{DRIVE(0,1), HIGH(1)}, {DRIVE(4,1), HIGH(1)}},  4000}, // > 4V
  {{{DRIVE(0,1), HIGH(0)}, {DRIVE(4,1), HIGH(4)}},  3700}, // 3.7V
  {{{DRIVE(1,2), HIGH(2)}, {DRIVE(4,0), HIGH(0)}},  2500}, // 2.5V
  {{{DRIVE(1,2), HIGH(1)}, {DRIVE(4,0), HIGH(4)}},  1650}, // 1.65V
  {{{DRIVE(2,3), HIGH(3)}, {DRIVE(0,2), HIGH(2)}},  1400}, // 1.4V
  {{{DRIVE(2,3), HIGH(2)}, {DRIVE(0,2), HIGH(0)}},  1200}, // 1.2V
  {{{DRIVE(3,4), HIGH(4)}, {DRIVE(0,3), HIGH(0)}},   900}, // 0.9V
  {{{DRIVE(3,4), HIGH(3)}, {DRIVE(0,3), HIGH(3)}},    00}, // 0V
  {{{DRIVE(4,2), HIGH(2)}, {DRIVE(1,3), HIGH(1)}}, -1300}, // -1.3V
  {{{DRIVE(4,2), HIGH(4)}, {DRIVE(1,3), HIGH(3)}}, -2000}, // < -2V
};

#undef DRIVE
#undef HIGH

// Turns off all leds
static void ledOff() {
  DDRA  = 0;
  PORTA = 0;
  DDRB  = 0;
  PORTB = 0;
}

// Turns on one led
static void ledOn(const LedPoint* lp) {
  uint8_t ddr = lp->ddr;
  uint8_t port = lp->port;

  DDRA  = ddr & 0xf;
  DDRB  = ddr>>4 & 0x1;
  PORTA = port & 0xf;
  PORTB = port>>4 & 0x1;
}

void setCharlieLed(uint8_t channel, uint8_t ledIdx) {
  if (channel >= ADC_CHANNELS || ledIdx >= LEDS)
    return;
  state[channel] = &LP[ledIdx].ch[channel];
}

void setCharlieLedPoint(uint8_t channel, const LedPoint* lp) {
  if (channel >= ADC_CHANNELS)
    return;
  state[channel] = lp;
}

void setCharlieLedOff(uint8_t channel) {
  if (channel >= ADC_CHANNELS)
    return;
  state[channel] = 0;
}

const LedPoint* voltageToLeds(uint8_t channel, int16_t mv) {
  int16_t diff = 10000;
  const LedEntry* best = 0;

  for (uint8_t i=0; i<LEDS-1; i++) {
    int16_t d = mv-LP[i].mv;
    if (abs(d) < abs(diff)) {
      best = &LP[i];
      diff = d;
    }
  }

  return &best->ch[channel];

  // if (best < 0) {
  //   return 0xff;
  // }

  // uint16_t leds = 1<<best;

  // if (abs(diff) >= 10) {
  //   if (best < LEDS-1 && diff < 0) {
  //     leds |= _BV(best+1);
  //   }
  //   if (best > 1 && diff > 0) {
  //     leds |= _BV(best-1);
  //   }
  // }

  // return leds;
}

void resumeCharlieLeds() {
  TIMSK0 |= _BV(TOIE0) | _BV(OCIE0A); // Generate interrupts at overflow and A
}

void suspendCharlieLeds() {
  TIMSK0 &=~ (_BV(TOIE0) | _BV(OCIE0A));
}

void initCharlieLeds() {
  ledOff();
  TCCR0A = _BV(WGM01); // CTC mode (clear timer on compare match)
  TCCR0B = _BV(CS02) | _BV(CS00); // prescaler /1024
  OCR0A = F_CPU / 1024 / 100; // 100Hz ~= 78 @ 8MHz
  resumeCharlieLeds();
}

ISR(TIM0_COMPA_vect) {
  static uint8_t currentChannel = 0;

  currentChannel++;
  if (currentChannel >= ADC_CHANNELS) {
    currentChannel = 0;
  }

  if (state[currentChannel] == 0)
    ledOff();
  else
    ledOn(state[currentChannel]);
}
