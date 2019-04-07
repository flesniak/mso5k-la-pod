#include <avr/wdt.h> 
#include <stdio.h>
#include <util/delay.h>
#include <stdlib.h>
#include <avr/power.h>
#include <avr/sleep.h>

#include "board.h"
#include "charlie.h"
#include "adc.h"
#include "softwareuart.h"
#include "calibration.h"

void delay(uint16_t spins) {
  volatile uint16_t delay = 0;
  while (delay++ < spins) { 
   sleep_enable();
   sleep_cpu(); // Stop the CPU until the next interrupt, which should happen fairly often
   sleep_disable();    
  }    
}


int main(void) {
  wdt_enable(WDTO_1S);

  GPINPUT(VREF);
  startADC(VREF_ADC); // Starts the ADC interrupt in free-running mode
  clock_prescale_set(clock_div_8);
 
#ifdef SOFTWARE_TX
  UART_init();
  UART_tx_str("Boot\r\n");
#endif
  initCharlieLeds();

  Calibration calibration;
  readCalibrationOrSetDefault(&calibration);
  
  int8_t led = 0;
  int8_t leddir = 1;
  uint8_t prevCalState = 0;
    
  while (1) {
    wdt_reset(); // TODO: Perhaps we should check if the IRQs still operate in stead of blindly feeding the dog?
  
    uint16_t adc = getADC();
    int16_t voltage = adcToMiliVolt(&calibration, adc);
    
    uint8_t calState = getCalState();
#ifdef SOFTWARE_TX
    const int16_t VEE=-2500;
    const int16_t VCC= 2300;
    const int32_t FULL_RANGE = VCC-VEE;  
    int16_t uncalVoltage = ((FULL_RANGE * adc) >> (ADC_BITS+ADC_OVERSAMPLES)) + VEE;
    uint8_t voltageShown = 0;
#endif
    uint16_t highCalAdc;
    
    if (leddir) {
      
      if (isCalibrated(&calibration)) {
        uint16_t lm = 0;
        for (uint8_t i=0;i<led;i++) {
          lm |= _BV(i);
        }
        setCharlieLeds(lm);
      } else {
        setCharlieLeds(_BV(led));
      }
      led += leddir;
      if (led >= 10) {
        led = 9;
        leddir = -1;
      } else if (led < 0) {
        leddir = 0;        
      } 
      delay(200);
      
    } else if (calState) { 
      
      if (calState == 1) {
        if (led++ == 0) {
          setCharlieLeds(_BV(0) | _BV(2));
        } else {
          setCharlieLeds(_BV(1));
          if (led++ > 10) {
            led = 0;
          }
        }
        
        delay(100);

        
      } else if (calState == 2) {
        
        if (prevCalState == 1) {
          highCalAdc = adc;
        }        

        if (led++ == 0) {
          setCharlieLeds(_BV(7) | _BV(9));
        } else {
          setCharlieLeds(_BV(8));
          if (led++ > 10) {
            led = 0;
          }
        }
        
        delay(100);
        
      } else if (calState == 3) {
        
        if (prevCalState == 2) {
          // adc is now the -1.3 V value and calHighAdc corresponds to +3.7 V          
          uint16_t lowCalAdc = adc;
          int16_t lowCalVoltage = -130;
          int16_t highCalVoltage = 370;
          
          storeCalibrationFromReferenceVoltages(&calibration, lowCalAdc, lowCalVoltage, highCalAdc, highCalVoltage);
        } 
        
        setCalState(0);
      }
    
      prevCalState = calState;
    
    } else {
      setCharlieVoltage(voltage);
#ifdef SOFTWARE_TX
      voltageShown = 1;
#endif      
    }
       
        
#ifdef SOFTWARE_TX    
    suspendCharlieLeds();    
    suspendADC();

    uint16_t leds = getCharlieLeds();
    
    UART_tx_uint16(adc);
    UART_tx_str(" uc:");
    UART_tx_int16(uncalVoltage);
    UART_tx_str(" cv:");
    UART_tx_int16(voltage);
    UART_tx_str(" cs:");
    UART_tx_uint16(calState);    
    UART_tx_str(" ");
    UART_tx_uint16_binary(leds);
    UART_tx_str("\r\n");
    UART_flush();
    resumeADC();
    resumeCharlieLeds();
    if (voltageShown) {
      delay(200);
    }
    
#endif

  }
}


