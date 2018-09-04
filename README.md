This repository is a _basic_ guide for setting up an open tool-chain for embedded software development. There are lots of great resources on the internet for setting up tools, but not many examples. This repository should serve to help (the many) people who learn by example as well as a jumping off point to other resources specific to the components.

The example used will be a [STM32F031 Nucleo-32 board](https://www.amazon.com/gp/product/B01DTEWJWK/ref=as_li_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=B01DTEWJWK&linkCode=as2&tag=davemp-20&linkId=620bf7356a578e0dee2850d0e30cb0fe).

This guide assumes a UNIX-like operating system.

# Contents / Compendium

Below are the topics covered, and some links to related resources:

  - Cross-Compiler

    * [OSDev Wiki](http://wiki.osdev.org/GCC_Cross-Compiler)

  - Reset Handler

    * [ARM Info Center](http://infocenter.arm.com/help/index.jsp?topic=/com.arm.doc.dui0471c/Cihebehb.html)

    * [Wikipedia](https://en.wikipedia.org/wiki/Reset_vector)

  - Linker

    * [Wikipedia](https://en.wikipedia.org/wiki/Linker_%28computing%29): Linker overview

    * [Wikipedia](https://en.wikipedia.org/wiki/Executable_and_Linkable_Format): ELF overview

    * [Lurk, lurk](http://www.lurklurk.org/linkers/linkers.html)

  - Programming and Debugging

    * [OpenOCD](http://openocd.org/documentation/)

    * [UMD](https://www.cs.umd.edu/~srhuang/teaching/cmsc212/gdb-tutorial-handout.pdf): A GDB tutorial

  - Makefiles / Building

    * [Newhall](https://www.cs.swarthmore.edu/~newhall/unixhelp/howto_makefiles.html): Makefile tutorial

    * [UMD](https://www.cs.umd.edu/class/fall2002/cmsc214/Tutorial/makefile.html): Makefile tutorial

    * [GCC Options](https://gcc.gnu.org/onlinedocs/gcc/#toc-GCC-Command-Options): GCC Options -- this seems like info overload but is actually very useful to read through

  - Header / Device Resources

  - Git

# Cross-Compiler

The first step for setting up any software tool-chain is the compiler. Because your desktop likely isn't using the same architecture as your target device, you will need to use a cross-compiler. GCC is the most used and sometimes the only option for specific architectures, but LLVM is making gains. This guide will be using GCC, specifically `arm-none-eabi-gcc`.

_note:_ The seeming nonsense in `arm-none-eabi-gcc` stands for:

  - `arm`: architecture -- arm

  - `none`: operating system -- none

  - `eabi` -- embedded application binary interface

Install the tool-chain using your system's package manager (sorry windows users).

For compiling source files, a command of the following form will be used:

`arm-none-eabi-gcc -c <other-flags> <source-file> -o <output-name>.o`

- The `-c` flag tells gcc not to perform any linking yet.

There will be platform specific flags that you will need to dig up. In this case we can consult the gcc [documentation](https://gcc.gnu.org/onlinedocs/gcc-2.95.3/gcc_2.html#SEC22) and find that we need:

- `-mcpu=cortex-m0`: to tell gcc our target CPU's architecture

- `-mthumb`: to tell gcc only to use the thumb instruction set (ARM has multiple ISAs and the [cortex-m0](https://developer.arm.com/products/processors/cortex-m/cortex-m0-plus) only supports Thumb/Thumb-2 instructions).

- `-msoft-float`: to tell gcc that our target has no floating point unit (FPU) and float operations need to be simulated by other instructions.

Other recommended flags:

- `-g`: Produce debug symbols.

- `-Wall`: Tell gcc to let us know if something seems fishy.

- `-Wextra`: Tell gcc that we REALLY want to know if something seems fishy. There are still other warning that can be set, they can be found in the gcc [docs](https://gcc.gnu.org/onlinedocs/gcc-4.8.4/gcc/Warning-Options.html).

# Header / Device Resources

Most embedded device resources are mapped to memory addresses. To interact with the resources in C, most hardware vendors will provide a header file(s) defining specific addresses and structures for the user. All that's needed is to include the header and pour over their thousand page PDFs to find which bits you to to mess with for each resource!

Being efficient at searching (ctrl-f, regexp) __both__ the headers and documentation, is invaluable to embedded development.

The quality of supplied headers is not always fantastic, but it's understandably difficult to maintain headers for the huge variety of chips that these guys make.

The STM32F031K6T6's headers were found without too much trouble in ST's [STM32Cube](https://www.element14.com/community/docs/DOC-79590/l/stm32-nucleo-32-development-board-with-stm32f031k6t6-mcu-supports-arduino-connectivity) software bundle (`find <directory-to-search> --name "*stm32f0*.h"` was very useful). ST's headers have annoying include dependencies and you have to make sure that your specific device's symbol is defined. The process is still much better than writing your own headers!

# Reset Handler

The reset handler is what sets up all of your program's data and starts executing your main function. This guide will not go into much detail as hardware vendors will generally supply a reset handler that will work for general use. This will have to built and linked with your program.

The STM32F031's reset handler was found without too much trouble in ST's [STM32Cube](https://www.element14.com/community/docs/DOC-79590/l/stm32-nucleo-32-development-board-with-stm32f031k6t6-mcu-supports-arduino-connectivity) software bundle.

# Linker

The linker is what glues all of the symbols, data, and code from each file in the program into a single executable/library. Writing a linker script, like the reset handler, is something that doesn't need to be mucked with in the general case. Most architectures have common section configurations (ABIs) and only the memory sizes need to be modified.

For our specific board, the linker script was lifted and modified from a [blog](http://hertaville.com/a-sample-linker-script.html) (changed the RAM and FLASH sizes).

For linking gcc will be used again but with a different set of flags. Because the required device information is in the linker script and object files, we don't need many flags at all.

`arm-none-eabi-gcc -T <linker-script>.ld --specs=nosys.specs <intermediate-objects> -o <output>.elf`

- `-T <linker-script>.ld`: tell gcc where to find the linker script

- `-specs=nosys.specs`: tell gcc that we will not be using system calls

---

_note:_ if nosys.specs isn't found try installing `arm-none-eabi-newlib` from you package manager

# Programming and Debugging

At some point your code has to be put onto a device, and you may want some help from a debugger. Development boards don't always have great programming and debugging support. Arduino being the most notable. Hopefully your specific board has a good debugger and it is supported by [OpenOCD](http://openocd.org/). Boards/chips that don't have good support should generally be avoided.

The Nucleo-32 board comes with the ST-LINK/V2-1 debugger/programmer, and is well supported by OpenOCD and GDB.

If you have a popular board/chip, setup may be relatively painless. Otherwise writing custom configurations may not be that fun (you'll actually have to learn how OpenOCD works).

The quick and dirty and guide is:

- Program with: 
  
  ```shell
    sudo openocd \
      -f <path-to-interface>.cfg \
      -f <path-to-chip>.cfg \
      -c "program <path-to-executable> verify reset exit"
  ```

- Debug with:
  
  ```shell
    (sudo openocd -f <path-to-interface>.cfg -f <path-to-chip>.cfg &); \
    arm-none-eabi-gcc <path-to-elf> -ex "target remote localhost:3333; load"; \
    sudo kill openocd
  ```

  * launch an OpenOCD process

  * connect to the st-link's gdb server and load the debug symbols

  * close OpenOCD when finished

# Makefiles / Building

The Makefile is the crux of this work-flow. Typing in all the different commands, or even writing a new script for every project would be tedious. In the example [Makefile][], I put all the commands described previously. The process makes development much easier and gives fine grained control over the build process.

Take a look at the provided example. The example uses all of the information in this document for rules to build/program/debug a single blink project. The comments should be descriptive enough to figure out what's going on. Otherwise take a peak at some of the guides in the [compendium][].

Writing your makefile in a way that will be easy to change depending on the project/device will save time in the long run.

# Git

Don't waste time by losing, overwriting, and transporting pieces of your projects. Use git.

[Tutorial](https://try.github.io/levels/1/challenges/1)

[Makefile]: https://github.com/davepfeiffer/embedded-makefile-flow/blob/master/Makefile

[compendium]: https://github.com/davepfeiffer/embedded-makefile-flow#contents--compendium
