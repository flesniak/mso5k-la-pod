#include "board.h"
#ifdef SOFTWARE_TX

#include "softwareuart.h"
#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>

volatile uint16_t tx_shift_reg = 0;

void UART_flush(void) {
  while(tx_shift_reg);
}


void UART_tx(char character) {
  //if sending the previous character is not yet finished, wait
  //transmission is finished when tx_shift_reg == 0
  UART_flush();

  //fill the TX shift register with the character to be sent and the start & stop bits
  tx_shift_reg = (character<<1);
  tx_shift_reg &= ~(1<<0); //start bit
  tx_shift_reg |= (1<<9); //stop bit
  tx_shift_reg |= (1<<10); //stop bit
  tx_shift_reg |= (1<<11); //stop bit

  //start timer0 with a prescaler of 1
//  TCCR0B = (1<<CS01);
  TCCR0B = (1<<CS00);
}

void UART_tx_str(char* string){
  while( *string ){
    UART_tx( *string++ );
  }
}

void UART_tx_uint16(uint16_t integer) {
  char str[5];
  for (int i=0; i < 5; i++) {
    str[i] = 0;
  }

  uint8_t j = 0;
  do {
    uint8_t digit = integer % 10;
    str[j++] = '0' + digit;
    integer /= 10;
  } while (integer);

  while (j > 0) {
    UART_tx(str[--j]);
  }  
}

void UART_tx_int16(int16_t integer) {
  if (integer >= 0) {
    UART_tx_uint16(integer);
  } else {
    UART_tx_str("-");
    UART_tx_uint16(-integer);    
  }  
}

void UART_tx_uint16_binary(uint16_t integer) {
  for (uint8_t i=0; i<16;i++) {
    if (integer & _BV(15)) {
      UART_tx('1');      
    } else {
      UART_tx('0');      
    }
    integer = integer << 1;
  }
}

void UART_init() {  
  //set TX pin as output  
  GPOUTPUT(SOFTWARE_TX);
  GPSET(SOFTWARE_TX);
    
  //set timer0 to CTC mode
  TCCR0A = (1<<WGM01);
  //enable output compare 0 A interrupt
  TIMSK |= (1<<OCF0A);
  //set compare value to 103 to achieve a 9600 baud rate (i.e. 104µs)
  //together with the 8MHz/8=1MHz timer0 clock
  /*NOTE: since the internal 8MHz oscillator is not very accurate, this value can be tuned
    to achieve the desired baud rate, so if it doesn't work with the nominal value (103), try
    increasing or decreasing the value by 1 or 2 */

  // When the internal 8 MHz clock is divided by 8, then 12 is a better value or select full clock rate with TCCR0B 
  OCR0A = 103; 
  //enable interrupts
  sei();
}

//timer0 compare A match interrupt
ISR(TIM0_COMPA_vect) {
  //output LSB of the TX shift register at the TX pin

  GPWRITE(SOFTWARE_TX, tx_shift_reg & 0x01);
  
  //shift the TX shift register one bit to the right
  tx_shift_reg = (tx_shift_reg >> 1);

  //if the stop bit has been sent, the shift register will be 0
  //and the transmission is completed, so we can stop & reset timer0
  if(!tx_shift_reg) {
    TCCR0B = 0;
    TCNT0 = 0;
  }
}

#endif