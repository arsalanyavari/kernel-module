obj-m = iutmodule.o
.DEFAULT_GOAL := all
all:
	@echo "$(tput setaf 0) $(tput setab 2) making install :) $(tput sgr 0)"
	@make -C /lib/modules/$(shell uname -r)/build/ M=$(PWD) modules
clean:
	@echo "$(tput setaf 0) $(tput setab 1) making clean :( $(tput sgr 0)"
	@make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
