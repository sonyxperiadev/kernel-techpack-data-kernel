ifneq ($(TARGET_BOARD_AUTO),true)
ifneq ($(TARGET_PRODUCT),qssi)

RMNET_PERF_DLKM_PLATFORMS_LIST += lito

ifeq ($(call is-board-platform-in-list, $(RMNET_PERF_DLKM_PLATFORMS_LIST)),true)
LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_PATH := $(KERNEL_MODULES_OUT)

LOCAL_MODULE := rmnet_perf.ko
LOCAL_SRC_FILES := rmnet_perf_config.c
LOCAL_SRC_FILES += rmnet_perf_core.c
LOCAL_SRC_FILES += rmnet_perf_tcp_opt.c

RMNET_PERF_BLD_DIR := ../../vendor/qcom/opensource/data-kernel/drivers/rmnet/perf
DLKM_DIR := ./device/qcom/common/dlkm

KBUILD_OPTIONS := $(RMNET_PERF_BLD_DIR)

$(warning $(DLKM_DIR))
include $(DLKM_DIR)/AndroidKernelModule.mk

endif #End of check for target
endif #End of Check for qssi target
endif #End of check for AUTO Target
