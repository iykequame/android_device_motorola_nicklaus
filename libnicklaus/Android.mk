LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := gui.cpp ui.cpp omx.cpp wvm.cpp string.cpp icu55.c icu53.c ssl.c xlog.c audio.cpp mtkhacks.cpp
LOCAL_C_INCLUDES += frameworks/av/media/mtp/ system/core/include/ frameworks/rs/server/ frameworks/av/include/ hardware/libhardware/include/
LOCAL_SHARED_LIBRARIES := libbinder libutils liblog libgui libui libicuuc libicui18n libcrypto libstagefright_foundation libcutils
LOCAL_MODULE := libnicklaus
LOCAL_MODULE_TAGS := optional
LOCAL_CLANG := true
LOCAL_CPPFLAGS := -std=c++1y
LOCAL_CPPFLAGS += -Wno-exit-time-destructors
LOCAL_CPPFLAGS += -Wno-global-constructors
LOCAL_CPPFLAGS += -Wno-c++98-compat-pedantic
LOCAL_CPPFLAGS += -Wno-four-char-constants
LOCAL_CPPFLAGS += -Wno-padded
include $(BUILD_SHARED_LIBRARY)

