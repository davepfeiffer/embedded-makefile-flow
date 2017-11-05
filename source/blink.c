#include "../architecture/stm32f031x6.h"

#define WAIT(x) for (int i = 0; i < (x); i++)

inline static void init_led3();
inline static void blink_led3();

int main() {
  init_led3();
  while (1) {
    blink_led3();
    WAIT(0xFFFF);
  }
  return 0;
}

// led3 is connected to GPIO pin PB3
inline void init_led3() {
#define MASK 3    //
#define INDEX 3   // index of the port

  RCC->AHBENR |= 1 << 18;

  // set the mode to general purpose output
  GPIOB->MODER &= ~(MASK << (INDEX * 2));
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

inline void blink_led3() {
#define INDEX 3
  GPIOB->BSRR = 1 << INDEX; // set output
  WAIT(0xFFFF);
  GPIOB->BSRR = 1 << INDEX << 16; // reset output
#undef INDEX
}