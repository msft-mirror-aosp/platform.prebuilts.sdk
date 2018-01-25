# Copyright (C) 2017 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-design-nodeps
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := com/android/support/design/28.0.0-SNAPSHOT/design-28.0.0-20180123.160902-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-transition \
  android-support-v7-appcompat \
  android-support-v7-recyclerview \
  android-support-compat \
  android-support-media-compat \
  android-support-core-utils \
  android-support-core-ui \
  android-support-fragment
include $(BUILD_PREBUILT)
include $(CLEAR_VARS)
LOCAL_MODULE := android-support-design
LOCAL_SDK_VERSION := current
LOCAL_MANIFEST_FILE := manifests/android-support-design/AndroidManifest.xml
LOCAL_STATIC_JAVA_LIBRARIES := \
  android-support-annotations
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-design-nodeps \
  android-support-transition \
  android-support-v7-appcompat \
  android-support-v7-recyclerview \
  android-support-compat \
  android-support-media-compat \
  android-support-core-utils \
  android-support-core-ui \
  android-support-fragment
LOCAL_JAR_EXCLUDE_FILES := none
LOCAL_JAVA_LANGUAGE_VERSION := 1.7
LOCAL_USE_AAPT2 := true
include $(BUILD_STATIC_JAVA_LIBRARY)

