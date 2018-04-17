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
# $(1): module name
# $(2): sdk version
# $(3): stub file path
define declare-sdk-prebuilt
include $$(CLEAR_VARS)
LOCAL_MODULE := $(1)
LOCAL_PREBUILT_MODULE_FILE := $(3)
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $$(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_BUILT_MODULE_STEM := $(1)$$(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_MIN_SDK_VERSION := $(if $(call math_is_number,$(strip $(2))),$(2),$$(PLATFORM_JACK_MIN_SDK_VERSION))
LOCAL_UNINSTALLABLE_MODULE := true
# TODO(hansson): change to $(2) after migration is done.
LOCAL_SDK_VERSION := current
include $$(BUILD_PREBUILT)
endef

# Format: sdk_<api>_<sdk_version>_<stub_name>
# e.g. sdk_system_28_android or sdk_public_current_java.obex
# $(1): api (e.g. public, system)
# $(2): sdk version (e.g. 23, current)
# $(3): jar path
define get-sdk-prebuilt-name
sdk_$(1)_$(2)_$(notdir $(basename $(3)))
endef

legacy_versions := $(patsubst $(LOCAL_PATH)/%/android.jar,%,$(wildcard $(LOCAL_PATH)/*/android.jar))

$(foreach version,$(legacy_versions),\
  $(eval \
    $(call declare-sdk-prebuilt,sdk_v$(version),$(version),$(LOCAL_PATH)/$(version)/android.jar)))

$(foreach version,$(legacy_versions),\
  $(if $(wildcard $(LOCAL_PATH)/$(version)/uiautomator.jar),\
    $(eval $(call declare-sdk-prebuilt,uiautomator_sdk_v$(version),$(version),$(LOCAL_PATH)/$(version)/uiautomator.jar)),\
    ))

# New structure definition loop.
$(foreach version,$(patsubst $(LOCAL_PATH)/%/public/android.jar,%,$(wildcard $(LOCAL_PATH)/*/public/android.jar)),\
  $(foreach api_level,core public system,\
    $(foreach jar_file, $(wildcard $(LOCAL_PATH)/$(version)/$(api_level)/*.jar),\
      $(eval \
        $(call declare-sdk-prebuilt,\
          $(call get-sdk-prebuilt-name,$(api_level),$(version),$(jar_file)),\
          $(api_level),\
          $(jar_file))))))

include $(call all-makefiles-under,$(LOCAL_PATH))
