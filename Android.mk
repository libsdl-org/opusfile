LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := opusfile

LOCAL_C_INCLUDES := \
    $(LOCAL_PATH)/include

LOCAL_CFLAGS := -DOPUS_BUILD -DHAVE_LRINTF -DFLOATING_POINT -DFLOAT_APPROX -DUSE_ALLOCA

LOCAL_SRC_FILES += \
    src/http.c \
    src/info.c \
    src/internal.c \
    src/opusfile.c \
    src/stream.c \
    src/wincerts.c

LOCAL_SHARED_LIBRARIES := opus

include $(BUILD_STATIC_LIBRARY)
