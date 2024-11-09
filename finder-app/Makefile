CROSS_COMPILE = Native

ifeq ($(CROSS_COMPILE),aarch64-none-linux-gnu-)
		lib=/home/abdalrahman/Downloads/arm-gnu-toolchain-13.3.rel1-x86_64-aarch64-none-linux-gnu/bin/aarch64-none-linux-gnu-gcc
	else
		lib=cc
	endif

writer: writer.o
	$(lib) writer.o  -o writer

writer.o: writer.c
	$(lib) -c writer.c  -o writer.o


clean:
	rm -f writer
	rm -f *.o