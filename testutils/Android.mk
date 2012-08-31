LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := audiotest.cpp
LOCAL_MODULE := audiotest
LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
LOCAL_MODULE_TAGS := optional

LOCAL_C_INCLUDES := \
	external/tinyalsa/include \
	$(call include-path-for, audio-effects) \
	$(call include-path-for, audio-utils)

LOCAL_SHARED_LIBRARIES:= \
	libutils \
	libhardware_legacy \
	libtinyalsa \
	libaudioutils \
    libdl

LOCAL_STATIC_LIBRARIES:= libmedia_helper
LOCAL_WHOLE_STATIC_LIBRARIES := libaudiohw_legacy
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := evtest.c
LOCAL_MODULE := evtest
LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
LOCAL_MODULE_TAGS := optional
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := lcd_info.c
LOCAL_MODULE := lcd_info
LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
LOCAL_MODULE_TAGS := optional
include $(BUILD_EXECUTABLE)

