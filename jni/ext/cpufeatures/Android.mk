
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_ARM_MODE := arm

LOCAL_MODULE := cpufeatures

LOCAL_SRC_FILES := cpu-features.c

LOCAL_CFLAGS += \
    -D__ARM_ARCH__

include $(BUILD_STATIC_LIBRARY)

