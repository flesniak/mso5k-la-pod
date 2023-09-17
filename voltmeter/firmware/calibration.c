#include <avr/eeprom.h>
#include "calibration.h"
#include "adc.h"

#define FIXED_BITS 16

#define EEPROM_ADDRESS (void *)0
const uint16_t EEPROM_MAGIC=0x5354;

void setDefaultCalibration(Calibration *cal) {
  const int16_t VEE=-2462;
  const int16_t VCC= 2242;

  cal->slope = VCC-VEE;
  cal->slope <<= FIXED_BITS-ADC_OVERSAMPLES_SHIFT-ADC_BITS;
  cal->offset = VEE;
  cal->offset <<= FIXED_BITS;
}

void readCalibrationOrSetDefault(Calibration *cal) {
  eeprom_read_block(cal, EEPROM_ADDRESS, sizeof(Calibration));
  if (!isCalibrated(cal)) {
    setDefaultCalibration(cal);
  }
}

uint8_t isCalibrated(Calibration *cal) {
  return cal->magic == EEPROM_MAGIC;
}

int16_t adcToMiliVolt(Calibration *cal, uint16_t adc) {
  return (cal->slope * adc + cal->offset) >> FIXED_BITS;
}

void storeCalibration(Calibration *cal) {
  cal->magic = EEPROM_MAGIC;
  eeprom_update_block(cal, EEPROM_ADDRESS, sizeof(Calibration));
}

void storeCalibrationFromReferenceVoltages(Calibration *cal,
                                           uint16_t lowCalAdc, int16_t lowCalVoltage,
                                           uint16_t highCalAdc, int16_t highCalVoltage) {
  uint16_t deltaADC = highCalAdc-lowCalAdc;
  int32_t deltaVoltage = highCalVoltage-lowCalVoltage;
  deltaVoltage <<= FIXED_BITS;
  deltaVoltage /= deltaADC;
  cal->slope = deltaVoltage;

  int32_t offsetVoltage = lowCalVoltage;
  offsetVoltage <<= FIXED_BITS;
  offsetVoltage -= lowCalAdc*deltaVoltage;
  // offsetVoltage is now the voltage in mv at ADC=0 << FIXED_BITS
  cal->offset = offsetVoltage;

  storeCalibration(cal);
}

