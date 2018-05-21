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

LOCAL_PATH := $(call my-dir)

# Declares a single sdk module. These targets are referenced by the core build system.
# $(1): sdk version (e.g. 23, current)
# $(2): api level (e.g. public, system)
# $(3): stub jar file path
define declare-sdk-prebuilt
include $$(CLEAR_VARS)
# Format: sdk_<api>_<sdk_version>_<stub_name>
LOCAL_MODULE := sdk_$(2)_$(1)_$(notdir $(basename $(3)))
LOCAL_PREBUILT_MODULE_FILE := $(3)
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $$(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_BUILT_MODULE_STEM := $$(LOCAL_MODULE)$$(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_MIN_SDK_VERSION := $(if $(call math_is_number,$(strip $(1))),$(1),$$(PLATFORM_JACK_MIN_SDK_VERSION))
LOCAL_UNINSTALLABLE_MODULE := true
# TODO(hansson): change to $(1) after migration is done.
LOCAL_SDK_VERSION := current
include $$(BUILD_PREBUILT)
endef

$(foreach version,$(patsubst $(LOCAL_PATH)/%/public/android.jar,%,$(wildcard $(LOCAL_PATH)/*/public/android.jar)),\
  $(foreach api_level,core public system,\
    $(foreach jar_file, $(wildcard $(LOCAL_PATH)/$(version)/$(api_level)/*.jar),\
      $(eval \
        $(call declare-sdk-prebuilt,$(version),$(api_level),$(jar_file))))))

include $(call all-makefiles-under,$(LOCAL_PATH))
