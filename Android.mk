LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE	:= ode
LOCAL_C_INCLUDES := $(LOCAL_PATH)/ode/include
LOCAL_SRC_FILES := $(wildcard $(LOCAL_PATH)/ode/src/*.cpp)
LOCAL_SRC_FILES := $(LOCAL_SRC_FILES:$(LOCAL_PATH)/%=%)
LOCAL_CFLAGS	:= "-std=c++11"
LOCAL_CFLAGS    += -O3
LOCAL_CPPFLAGS  += -DdSINGLE

include $(BUILD_SHARED_LIBRARY)
