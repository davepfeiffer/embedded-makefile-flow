This repository is a _basic_ guide for setting up an open tool-chain for embedded software development. There are lots of great resources on the internet for setting up tools, but not many examples. This repository should serve to help (the many) people who learn by example as well as a jumping off point to other resources specific to the components.

The example used will be a [STM32F031 Nucleo-32 board](https://www.amazon.com/gp/product/B01DTEWJWK/ref=as_li_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=B01DTEWJWK&linkCode=as2&tag=davemp-20&linkId=620bf7356a578e0dee2850d0e30cb0fe).

This guide assumes a UNIX-like operating system.

# Contents / Compendium

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

The first step for setting up any software tool-chain is picking a compiler. Because your desktop likely isn't using the same architecture as your target device, you will need to use a cross-compiler. GCC is the most used and sometimes the only option for specific architectures, but LLVM is making gains. This guide will be using GCC, specifically `arm-none-eabi-gcc`.

_note:_ The seemingly nonsense in `arm-none-eabi-gcc` stands for:

  - `arm`: architecture -- arm

  - `none`: operating system -- none

  - `eabi` -- embedded application binary interface

Install the tool-chain using your system's package manager (sorry windows users).

See the Makefile section for specific commands.

# Reset Handler

The reset handler is what sets up all of your program's data and starts executing your main function. This guide will not go into much detail as hardware vendors will generally supply a reset handler that will work for general use. This will have to built and linked with your program.

The STM32F031's reset handler was found without too much trouble in ST's [STM32Cube](https://www.element14.com/community/docs/DOC-79590/l/stm32-nucleo-32-development-board-with-stm32f031k6t6-mcu-supports-arduino-connectivity) software bundle.

See the Makefile section for reset handler usage.

# Linker

The linker is what glues all of the symbols, data, and code from each file in the program into a single executable/library. Writing a linker script, like the reset handler, is something that doesn't need to be mucked with in the general case. Most architectures have common section configurations (ABIs) and only the memory sizes need to be modified.

For our specific board, the linker script was lifted and modified from a [blog](http://hertaville.com/a-sample-linker-script.html).

See the Makefile section for a linking example.

# Programming and Debugging

At some point your code has to be put onto a device, and you may want some help from a debugger. Development boards don't always have great programming and debugging support. Arduino being the most notable. Hopefully your specific board has a good debugger and it is supported by [OpenOCD](http://openocd.org/). Boards that don't have good support should generally be avoided.

The Nucleo-32 board comes with the ST-LINK/V2-1 debugger/programmer, and is well supported by OpenOCD and GDB.

OpenOCD [documentation](http://openocd.org/documentation/) can be a slog, but if you have a popular board it may be relatively painless.

I generally place rules in Makefiles for programming to make life easier.

# Makefiles / Building

The Makefile is the crux of this workflow style. In it will be the commands for:

- Compiling

- Linking

- Flashing

- Debugging

More details will be added later. See the example for now.

# Header / Device Resources

Most embedded device resources are mapped to memory addresses. To interact with the resources in C, most hardware vendors will provide a header file defining specific addresses and structures for the user. All that's needed is to include the header and pour over their thousand page PDFs to find which bits you to to mess with for each resource!

The STM32F031K6T6's header was found without too much trouble in ST's [STM32Cube](https://www.element14.com/community/docs/DOC-79590/l/stm32-nucleo-32-development-board-with-stm32f031k6t6-mcu-supports-arduino-connectivity) software bundle.

# Git

Don't waste time by losing, overwriting, and transporting pieces of your projects. Use git.

[Tutorial](https://try.github.io/levels/1/challenges/1)
