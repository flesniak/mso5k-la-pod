#pragma once

#include <stdint.h>

typedef struct {
  uint16_t magic;
  int32_t slope;
  int32_t offset;
} Calibration;

void readCalibrationOrSetDefault(Calibration *cal);
int16_t adcToMiliVolt(Calibration *cal, uint16_t adc);

void storeCalibrationFromReferenceVoltages(Calibration *cal,
                                           uint16_t lowCalAdc, int16_t lowCalVoltage, 
                                           uint16_t highCalAdc, int16_t highCalVoltage);

uint8_t isCalibrated(Calibration *cal);
