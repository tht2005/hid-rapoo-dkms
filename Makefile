obj-m += hid-rapoo.o

KVER ?= $(shell uname -r)
KSRC ?= /lib/modules/$(KVER)/build

all:
	$(MAKE) -C $(KSRC) M=$(PWD) modules

clean:
	$(MAKE) -C $(KSRC) M=$(PWD) clean
