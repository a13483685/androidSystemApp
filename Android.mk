LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional
#LOCAL_SRC_FILES := $(call all-subdir-java-files)
LOCAL_SRC_FILES := $(call all-java-files-under, src/demo/test/com/demo)
LOCAL_STATIC_JAVA_LIBRARIED := android-support-v4
LOCAL_STATIC_JAVA_LIBRARIES += android-support-v7-appcompat
LOCAL_AAPT_FLAGS := --auto-add-overlay
LOCAL_AAPT_FLAGS += --extra-packages android.support.v7.appcompat

LOCAL_JAVA_LIBRARIES += mediatek-framework

LOCAL_PACKAGE_NAME := MyApp
#LOCAL_CERTIFICATE := platform
LOCAL_MANIFEST_FILE := AndroidManifest.xml
LOCAL_RESOURCE_DIR := $(LOCAL_PATH)/res

#LOCAL_PROGUARD_ENABLED := disabled
#LOCAL_PROGUARD_FLAG_FILES := proguard.flags

include $(BUILD_PACKAGE)

