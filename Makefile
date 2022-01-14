obj-m = iutmodule.o
.DEFAULT_GOAL := all
all:
	@echo "\x1b[6;30;42m making install :) \x1b[0m"
	@make -C /lib/modules/$(shell uname -r)/build/ M=$(PWD) modules
clean:
	@echo "\x1b[6;30;41m making clean :( \x1b[0m"
	@make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
