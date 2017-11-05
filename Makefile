
#-{ Project Relative Paths }----------------------------------------------------

BIN=./binary
SRC=./source
BHD=./header
LIB=./library
ARC=./architecture

#-{ Compiler Definitions }------------------------------------------------------

# Compiler
CC=arm-none-eabi-gcc

# Device specific flags [1]
DFLAGS=-mcpu=cortex-m0 -mthumb -msoft-float
# Compiler flags
CFLAGS=$(DFLAGS) -g -Wall -Wextra -fdata-sections -ffunctions-sections 

# Linker
LD=arm-none-eabi-ld

# Path to linker script
LSCRIPT=$(ARC)/stm32f031k6.ld

# Linker flags
LFLAGS=$(DFLAGS) -T $(LSCRIPT)
LFLAGS += -nostartfiles -nodefaultlibs -nostdlib --gc-sections

# Object copy (for converting formats)
OBJCOPY=arm-none-eabi-objcopy
OFLAGS=-O ihex

#-{ Programming/Debugging Definitions }-----------------------------------------

# Debugger
DBG=arm-none-eabi-gdb

# OpenOCD
OCD=openocd

BOARD=/usr/share/openocd/scripts/board/stm32f0discovery.cfg

#-{ Build Rules }---------------------------------------------------------------

# Final binaries
HEX=$(BIN)/blink.hex
ELF=$(BIN)/blink.elf

# All intermediate object files
OBJ=$(BIN)/blink.o $(ARC)/boot_stm32f0xx.S

#-- These rules for the finally binaries will usually not require modiciation

# Convert the ELF into intel hex format
$(HEX): $(ELF)
	$(OBJCOPY) $(OFLAGS) $(ELF) $(HEX)

# Link all intermediate objects into a single executable
$(ELF): $(OBJ)
	$(LD) $(LFLAGS) $(OBJ) -o $(ELF)

#-- These rules will vary depending on the program being built

# Compile the main file
$(BIN)/blink.o: $(SRC)/blink.c $(ARC)/stm32f031x6.h
	$(CC) $(CFLAGS) $(SRC)/blink.c -o $(BIN)/blink.o

# Compile the reset handler
$(BIN)/boot.o: $(ARC)/boot_stm32f0xx.S
	$(CC) $(CFLAGS) $(ARC)/boot_stm32f0xx.S -o $(BIN)/boot.o

#-{ Utility Rules }-------------------------------------------------------------

# OpenOCD command to program a board
program: $(HEX)
	@sudo -E $(OCD) -f $(BOARD) -c "program $(HEX) verify reset exit"

# OpenOCD command to load a program and launch GDB
debug: $(ELF)
	@sudo -E $(OCD) -f $(BOARD) &; \
	$(DBG) $(ELF) -ex "target remote localhost:3333; load"

all: $(HEX)

clean:
	rm $(OBJ)

#-{ Resources }-----------------------------------------------------------------

# [1]: https://gcc.gnu.org/onlinedocs/gcc-2.95.3/gcc_2.html#SEC22
