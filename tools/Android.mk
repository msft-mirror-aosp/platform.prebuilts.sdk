#
# Copyright (C) 2010 The Android Open Source Project
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

LOCAL_PATH:= $(call my-dir)

##################################
include $(CLEAR_VARS)

LOCAL_MODULE := jack-jacoco-reporter
LOCAL_LICENSE_KINDS := SPDX-license-identifier-Apache-2.0 SPDX-license-identifier-BSD SPDX-license-identifier-CPL-1.0 SPDX-license-identifier-MIT SPDX-license-identifier-Unicode-DFS SPDX-license-identifier-W3C
LOCAL_LICENSE_CONDITIONS := notice reciprocal
LOCAL_NOTICE_FILE := $(LOCAL_PATH)/../NOTICE
LOCAL_SRC_FILES := jack-jacoco-reporter.jar
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
MOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_BUILT_MODULE_STEM := jack-jacoco-reporter$(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_IS_HOST_MODULE := true

include $(BUILD_PREBUILT)

# Distribute the reporter tool for coverage builds
ifeq (true,$(EMMA_INSTRUMENT))
$(call dist-for-goals, dist_files, $(LOCAL_BUILT_MODULE))
endif # EMMA_INSTRUMENT
