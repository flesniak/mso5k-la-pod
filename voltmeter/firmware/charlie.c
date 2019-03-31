#include "charlie.h"
#include <avr/interrupt.h>
#include <avr/io.h>
#include <stdlib.h>


#include "charlie.c.impl"

uint8_t leds;

void setCharlieVoltage(int16_t voltage) {
  leds = voltageToLeds(voltage);
  setCharlieLeds(leds);
}

// Turns off all leds
void ledOff() {
  DDRB  = 0x00;
  PORTB = 0x00;
}

// Turns on one led
void ledOn(uint8_t n) {
  uint8_t mask = LP[n].led;
  DDRB  = mask & 0xF;
  PORTB = mask >> 4;
}

void initCharlieLeds() {
  TIMSK |= _BV(TOIE1) | _BV(OCIE1A); // Generate interrupts at overflow and A
  TCCR1 = _BV(CS10) | _BV(CS10); // clock / 4 => about 100 Hz per LED  @ 8MHz clock
  OCR1A = 1; // Intensity
  OCR1C = 16;
  sei();
}

uint8_t leds;

void setCharlieLeds(uint8_t newLeds) {
  leds = newLeds;
}

uint16_t getCharlieLeds() {
  return leds;
}


// Turn on the next led at overflow, aka. reset of the timer.
ISR(TIM1_OVF_vect) {
  static uint8_t ledCount = 0;
  
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
