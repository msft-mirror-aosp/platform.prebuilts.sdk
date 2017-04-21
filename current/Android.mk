#
# Copyright (C) 2014 The Android Open Source Project
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
#

LOCAL_PATH := $(call my-dir)

#########################################
# The prebuilt support libraries.

# For apps (unbundled) build, replace the typical
# make target artifacts with prebuilts.
ifneq ($(TARGET_BUILD_APPS),)
include $(CLEAR_VARS)
LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES := \
  $(patsubst $(LOCAL_PATH)/%,%,\
    $(shell find $(LOCAL_PATH)/support -name "*.jar"))
include $(BUILD_MULTI_PREBUILT)
endif  # TARGET_BUILD_APPS not empty

# Also set up explicit prebuilts for use in apps.
include $(CLEAR_VARS)
SUPPORT_LIBS := \
  $(patsubst $(LOCAL_PATH)/%,%,\
    $(shell find $(LOCAL_PATH)/support -name "*.jar"))
LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES := \
  $(foreach lib,$(SUPPORT_LIBS),\
    $(basename $(notdir $(lib)))-prebuilt:$(lib))
SUPPORT_LIBS :=
include $(BUILD_MULTI_PREBUILT)
