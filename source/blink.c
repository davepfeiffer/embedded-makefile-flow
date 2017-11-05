#include "../architecture/stm32f0xx.h"

#define WAIT(x) for (int i = 0; i < (x); i++)

inline static void init_led3();

int main() {
  init_led3();                      // setup led3
  while (1) {
  #define INDEX 3
    GPIOB->BSRR = 1 << INDEX;       // set led3 output
    WAIT(0x1FFFF);                  // waste for awhile
    GPIOB->BSRR = 1 << INDEX << 16; // reset led3 output
    WAIT(0x1FFFF);
  #undef INDEX
  }
  return 0;
}

// led3 is connected to GPIO pin PB3
inline void init_led3() {
#define MASK 3                                // 2bit mask
#define INDEX 3                               // index of the port
  RCC->AHBENR |= 1 << 18;                     // enable GPIOB clock
  // set the mode to general purpose output
  GPIOB->MODER &= ~(MASK << (INDEX * 2));     // clear bit field
  GPIOB->MODER |= 1 << (INDEX * 2);
  // set output mode to push-pull
  GPIOB->OTYPER &= ~(1 << (INDEX));
  // set low speed
  GPIOB->OSPEEDR &= ~(MASK << (INDEX * 2));
  // no pull up/down resistors
  GPIOB->PUPDR &= ~(MASK << (INDEX * 2));
#undef MASK
#undef INDEX
}
