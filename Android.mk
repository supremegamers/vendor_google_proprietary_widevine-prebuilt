LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := move_widevine_data.sh
LOCAL_SRC_FILES := prebuilts/bin/move_widevine_data.sh
LOCAL_MODULE_TAGS := optional
LOCAL_PROPRIETARY_MODULE := true
LOCAL_MODULE_STEM := move_widevine_data
LOCAL_MODULE_SUFFIX := .sh
LOCAL_MODULE_CLASS := EXECUTABLES
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MULTILIB := 32
LOCAL_MODULE := libwvhidl
LOCAL_MODULE_SUFFIX :=.so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_PROPRIETARY_MODULE := true
LOCAL_CHECK_ELF_FILES := false
LOCAL_SRC_FILES_32 := prebuilts/lib/libwvhidl.so
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libwvdrmengine
LOCAL_MODULE_SUFFIX :=.so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_RELATIVE_PATH := mediadrm
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_PROPRIETARY_MODULE := true
LOCAL_CHECK_ELF_FILES := false
ifdef TARGET_2ND_ARCH
LOCAL_MULTILIB := both
LOCAL_SRC_FILES_32 := prebuilts/lib/mediadrm/libwvdrmengine.so
LOCAL_SRC_FILES_64 := prebuilts/lib64/mediadrm/libwvdrmengine.so
else
LOCAL_SRC_FILES := prebuilts/lib/mediadrm/libwvdrmengine.so
endif
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android.hardware.drm@1.3-service-lazy.widevine
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_PROPRIETARY_MODULE := true
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_SRC_FILES := prebuilts/bin/hw/android.hardware.drm@1.3-service-lazy.widevine
LOCAL_INIT_RC := prebuilts/etc/init/android.hardware.drm@1.3-service-lazy.widevine.rc
LOCAL_VINTF_FRAGMENTS := prebuilts/etc/vintf/manifest/manifest_android.hardware.drm@1.3-service.widevine.xml
LOCAL_CHECK_ELF_FILES := false
LOCAL_REQUIRED_MODULES := libwvdrmengine libwvhidl move_widevine_data.sh
include $(BUILD_PREBUILT)
