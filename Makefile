ifeq ($(CONFIG_ARCH_KONA), y)
include $(srctree)/techpack/data-kernel/config/kona.conf
LINUXINCLUDE	+= -include $(srctree)/techpack/data-kernel/config/konadataconf.h
endif

obj-y += drivers/rmnet/perf/
obj-y += drivers/rmnet/shs/
