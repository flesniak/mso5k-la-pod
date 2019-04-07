#pragma once
#include <stdint.h>

void initCharlieLeds();
void setCharlieLeds(uint16_t leds);
uint16_t getCharlieLeds();
void setCharlieVoltage(int16_t voltage);
void resumeCharlieLeds(void);
void suspendCharlieLeds(void);
uint16_t getCalCounter(void);
uint8_t pingInputs(void);
uint8_t getCalState(void);
void setCalState(uint8_t newState);
