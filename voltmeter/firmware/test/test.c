#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>

#define _BV(x) (1<<(x))

#include "../charlie.c.impl"


uint8_t main(char **args) {
  for (int i=-250;i<430;i+=10) {
    uint16_t l = voltageToLeds(i);
    printf("%5d %6d ", i, l);
 
    for (int8_t i=15; i>=0;i--) {
      if (l & _BV(15)) {
        printf("%x", i);      
      } else {
        printf(".");      
      }
      l = l << 1;
    }

    printf("\n");
  }
  
  return 0;
}
