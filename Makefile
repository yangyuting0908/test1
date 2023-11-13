KERNELDIR :=/home/yangyuting/imxLinuxKernelSrcCodes
CURRENT_PATH := $(shell pwd)
obj-m := hello.o
build: kernel_modules
kernel_modules:
	$(MAKE) ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- -C $(KERNELDIR) M=$(CURRENT_PATH) modules
clean:
	$(MAKE) -C $(KERNELDIR) M=$(CURRENT_PATH) clean


	
	~                          
