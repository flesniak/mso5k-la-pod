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

#define VEE -2525
#define VCC 2375
const int32_t FULL_RANGE = VCC-VEE;

int main(void) {
  wdt_enable(WDTO_1S);

  GPINPUT(VREF);
  startADC(VREF_ADC); // Starts the ADC interrupt in free-running mode
  clock_prescale_set(clock_div_8);
 
#ifdef SOFTWARE_TX
  UART_init();
  UART_tx_str("Boot\r\n");
#else
  initCharlieLeds();
#endif
  
  
  while (1) {
    wdt_reset(); // TODO: Perhaps we should check if the IRQs still operate in stead of blindly feeding the dog?
  
    uint16_t adc = getADC();
    int16_t voltage = ((FULL_RANGE * adc) >> (ADC_BITS+ADC_OVERSAMPLES)) + VEE;
    setCharlieVoltage(voltage);
        
#ifdef SOFTWARE_TX
    uint16_t leds = getCharlieLeds();
    
    suspendADC();
    UART_tx_str("Test: ");
    UART_tx_uint16(adc);
    UART_tx_str(" ");
    UART_tx_int16(voltage);
    UART_tx_str(" ");
    UART_tx_uint16(leds);
    UART_tx_str(" ");
    UART_tx_uint16_binary(leds);
    UART_tx_str("\r\n");
    UART_flush();
    resumeADC();

    int delay = 0;
    while (delay++ < 8000) { }    
#endif    
  }
}


