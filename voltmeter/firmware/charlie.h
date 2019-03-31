#pragma once
#include <stdint.h>

void initCharlieLeds();
void setCharlieLeds(uint8_t leds);
uint16_t getCharlieLeds();
void setCharlieVoltage(int16_t voltage);
