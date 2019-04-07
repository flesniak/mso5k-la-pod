#include "charlie.h"
#include <avr/interrupt.h>
#include <avr/io.h>
#include <stdlib.h>
#include "board.h"

#include "charlie.c.impl"

#ifdef SOFTWARE_TX
#define LED_BITS (_BV(1) | _BV(2) | _BV(3))
#define IDLE_DDR _BV(0)
#define LED_PULLUP (LED_BITS | _BV(0))
#define LED_IDLE _BV(0)
#else
#define LED_BITS (_BV(0) | _BV(1) | _BV(2) | _BV(3))
#define IDLE_DDR 0
#define LED_PULLUP LED_BITS
#define LED_IDLE 0
#endif

#define CAL_THRESHOLD 3000

uint16_t calCounter;
uint16_t leds;
uint8_t calState;

void setCharlieVoltage(int16_t voltage) {
  leds = voltageToLeds(voltage);
  setCharlieLeds(leds);
}

// Turns off all leds
void ledOff() {
  DDRB  = IDLE_DDR;
  PORTB = LED_IDLE;
}

// Turns on one led
void ledOn(uint8_t n) {
  uint8_t mask = LP[n].led;
  
#ifdef SOFTWARE_TX
  if (mask & _BV(0) && !(mask & _BV(4))) {
    return; // Bail out if this led needs to lower the tx pin
  }
  mask  |= _BV(0) | _BV(4); // Always leave the serial pin idle
#endif
  
  DDRB  = mask & 0xF;
  PORTB = mask >> 4;
}

void resumeCharlieLeds() {
  TIMSK |= _BV(TOIE1) | _BV(OCIE1A); // Generate interrupts at overflow and A
} 

void suspendCharlieLeds() {
  TIMSK &=~ (_BV(TOIE1) | _BV(OCIE1A)); 
}

void initCharlieLeds() {
  DDRB = IDLE_DDR;
  resumeCharlieLeds();
  TCCR1 = _BV(CS10) | _BV(CS10); // clock / 4 => about 100 Hz per LED  @ 8MHz clock
  OCR1A = 1; // Intensity
  OCR1C = 16;
  sei();
}

void setCharlieLeds(uint16_t newLeds) {
  leds = newLeds;
}

uint16_t getCharlieLeds() {
  return leds;
}

uint8_t pingInputs(void) {
  
  DDRB = IDLE_DDR;
  PORTB = LED_IDLE | _BV(1)| _BV(0); // Turn on pull-up 
  uint8_t idleBits = PINB & (_BV(1)|_BV(0));
  PORTB = LED_IDLE; // Turn off pull-ups
  
  return !idleBits;
}

uint16_t getCalCounter() {
  return calCounter;  
}

uint8_t getCalState(void) {
  return calState;  
}

void setCalState(uint8_t newState) {
  calState = newState;
  calCounter = 0xffff;
}

void nextCalState(void) {
  calState++;    
}

// Turn on the next led at overflow, aka. reset of the timer.
ISR(TIM1_OVF_vect) {
  static uint8_t ledCount = 0;
    
  if (pingInputs()) {
    if (calCounter < CAL_THRESHOLD) {
      calCounter++;
    } else if (calCounter == CAL_THRESHOLD) {
      nextCalState();
      calCounter = CAL_THRESHOLD*2;
    } 
  } else {
    if (calCounter > 0) {
      calCounter--;
    }
  }
  
  if (leds & _BV(ledCount)) {
    ledOn(ledCount);
  }
  
  ledCount++;
  if (ledCount >= LEDS) {
    ledCount = 0;
  }
}

// Turn turn off all LEDs at the a mark, which allows setting intensity with the timer.
ISR(TIM1_COMPA_vect) {
  ledOff();  
}
