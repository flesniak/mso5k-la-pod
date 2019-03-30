#include "board.h"

#ifdef SOFTWARE_TX

void UART_tx(char character);
void UART_tx_str(char* string);
void UART_init();
void UART_tx_uint16(uint16_t integer);
void UART_tx_int16(int16_t integer);

#endif
