#
# Since version 1.6 the asynchronous mode has been
# disabled by default. To re-enable it uncomment the
# corresponding CFLAG.
#
# Patched for BRCM/LANTIQ/QCA/MTK SDK
# Copyright 2021, SWRTdev.
# All Rights Reserved.
# 
# THIS SOFTWARE IS OFFERED "AS IS", AND (SWRTdev) GRANTS NO WARRANTIES OF ANY
# KIND, EXPRESS OR IMPLIED, BY STATUTE, COMMUNICATION OR OTHERWISE. BROADCOM
# SPECIFICALLY DISCLAIMS ANY IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS
# FOR A SPECIFIC PURPOSE OR NONINFRINGEMENT CONCERNING THIS SOFTWARE.

include $(TOP)/.config
PWD=$(shell pwd)
VERSION = 1.12

QCA_MODEL_LIST = $(addprefix _,$(addsuffix _,RT-AC82U RT-AC95U))
QCANSS_MODEL_LIST = $(addprefix _,$(addsuffix _,RT-AX89U))
MT7621_MODEL_LIST = $(addprefix _,$(addsuffix _,RT-AC85P RT-AC85U RT-AX53U RM-AC2100 R6800))
MT7622_MODEL_LIST = $(addprefix _,$(addsuffix _,RT-ACRH18))
LANTIQ_MODEL_LIST = $(addprefix _,$(addsuffix _,BLUECAVE))
BCM675X_MODEL_LIST = $(addprefix _,$(addsuffix _,RT-AX55 RT-AX56U RT-AX58U RT-AX82U TUF-AX3000 TUF-AX5400 GS-AX3000 GS-AX5400 RT-AX95Q RT-AXE95Q RT-AX56_XD4 RT-AX82_XD6))
BCM49XX_MODEL_LIST = $(addprefix _,$(addsuffix _,RT-AC86U GT-AC2900 GT-AC5300 RT-AX68U RT-AX86U RT-AX88U RT-AX92U GT-AX6000 GT-AX11000 GT-AXE11000 GT-AX16000))
_BUILD_NAME_ = $(addprefix _,$(addsuffix _,$(BUILD_NAME)))
ifneq ($(findstring $(_BUILD_NAME_),$(QCANSS_MODEL_LIST)),)
HWCHIP=QCANSS
else ifneq ($(findstring $(_BUILD_NAME_),$(QCA_MODEL_LIST)),)
HWCHIP=QCA
else ifneq ($(findstring $(_BUILD_NAME_),$(MT7621_MODEL_LIST)),)
HWCHIP=MT7621
else ifneq ($(findstring $(_BUILD_NAME_),$(MT7622_MODEL_LIST)),)
HWCHIP=MT7622
else ifneq ($(findstring $(_BUILD_NAME_),$(LANTIQ_MODEL_LIST)),)
HWCHIP=LANTIQ
else ifneq ($(findstring $(_BUILD_NAME_),$(BCM675X_MODEL_LIST)),)
HWCHIP=BCM675X
else ifneq ($(findstring $(_BUILD_NAME_),$(BCM49XX_MODEL_LIST)),)
HWCHIP=BCM49XX
else
#bcm470x?
HWCHIP=UNSUPPORTED
endif

all: version.h
	$(MAKE) -C $(LINUXDIR) CROSS_COMPILE=$(patsubst %-gcc,%-,$(KERNELCC)) EXTRA_CFLAGS="-I$(TOP)/shared -I$(PWD)/src -D$(HWCHIP) -DENABLE_ASYNC" SUBDIRS=$(PWD)/src modules

version.h:
	@echo "#define VERSION \"$(VERSION)\"" > src/version.h

install:
	$(MAKE) -C $(LINUXDIR) CROSS_COMPILE=$(patsubst %-gcc,%-,$(KERNELCC)) EXTRA_CFLAGS=-I$(TOP)/shared SUBDIRS=$(PWD)/src INSTALL_MOD_PATH=$(INSTALLDIR) modules_install
	@find $(INSTALLDIR) -name "modules.*" | xargs rm -f
	@find $(INSTALLDIR) -name "*.ko" | xargs $(STRIPX)

clean:
	$(RM) src/*.o src/*.ko src/*.mod.* src/version.h

