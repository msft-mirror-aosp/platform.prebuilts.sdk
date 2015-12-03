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

LOCAL_MODULE := jack-admin
LOCAL_SRC_FILES := jack-admin
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := $(HOST_EXECUTABLE_SUFFIX)
LOCAL_BUILT_MODULE_STEM := jack-admin$(HOST_EXECUTABLE_SUFFIX)
LOCAL_IS_HOST_MODULE := true

include $(BUILD_PREBUILT)
jack_admin_script := $(LOCAL_INSTALLED_MODULE)

##################################
include $(CLEAR_VARS)

LOCAL_MODULE := jack-launcher
LOCAL_SRC_FILES := jack-launcher.jar
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_BUILT_MODULE_STEM := jack-launcher$(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_IS_HOST_MODULE := true

include $(BUILD_PREBUILT)
jack_launcher_jar := $(LOCAL_INSTALLED_MODULE)

##################################
include $(CLEAR_VARS)

LOCAL_MODULE := jack-server
jack_server_version := 4.1.ALPHA
LOCAL_SRC_FILES := jack-server-$(jack_server_version).jar
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_BUILT_MODULE_STEM := jack-launcher$(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_IS_HOST_MODULE := true

include $(BUILD_PREBUILT)
jack_server_jar := $(LOCAL_INSTALLED_MODULE)

##################################
include $(CLEAR_VARS)

#
# This is only for jack used as a library, this is not involved in the normal
# dex build targets.
#
LOCAL_MODULE := jack
LOCAL_SRC_FILES := jacks/jack-$(JACK_STABLE_VERSION).jar
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_BUILT_MODULE_STEM := jack$(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_IS_HOST_MODULE := true

include $(BUILD_PREBUILT)

##################################
include $(CLEAR_VARS)

LOCAL_MODULE := jack
LOCAL_SRC_FILES := jack
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := $(HOST_EXECUTABLE_SUFFIX)
LOCAL_BUILT_MODULE_STEM := jack$(HOST_EXECUTABLE_SUFFIX)
LOCAL_IS_HOST_MODULE := true

available_jack_jars := $(wildcard $(LOCAL_PATH)/jacks/jack-*.jar)

include $(BUILD_SYSTEM)/base_rules.mk

ifneq ($(ANDROID_JACK_VM_ARGS),)
jack_vm_args := $(ANDROID_JACK_VM_ARGS)
else
jack_vm_args := -Dfile.encoding=UTF-8 -XX:+TieredCompilation
endif

$(LOCAL_BUILT_MODULE): $(LOCAL_PATH)/jack $(jack_launcher_jar) $(jack_server_jar) $(jack_admin_script) $(available_jack_jars) | $(ACP)
	@echo "Build: $@"
ifneq ($(dist_goal),)
	$(hide) $(jack_admin_script) stop-server 2>&1 || (exit 0)
	$(hide) $(jack_admin_script) kill-server 2>&1 || (exit 0)
	$(hide) $(jack_admin_script) uninstall-server 2>&1 || (exit 0)
endif
	$(hide) $(jack_admin_script) install-server $(jack_launcher_jar) $(jack_server_jar)  2>&1 || (exit 0)
ifneq ($(dist_goal),)
	mkdir -p "$(DIST_DIR)/logs/jack/"
	$(hide) JACK_SERVER_VM_ARGUMENTS="$(jack_vm_args) -Dcom.android.jack.server.log.file=$(abspath $(DIST_DIR))/logs/jack/jack-server-%u-%g.log" $(jack_admin_script) start-server 2>&1 || exit 0
else
	$(hide) JACK_SERVER_VM_ARGUMENTS="$(jack_vm_args)" $(jack_admin_script) start-server 2>&1 || exit 0
endif
	$(hide) $(jack_admin_script) update server $(jack_server_jar) $(jack_server_version) 2>&1 || exit 0
	$(hide) $(foreach jack_jar,$(available_jack_jars),$(jack_admin_script) update jack $(jack_jar) $(patsubst $(PRIVATE_PATH)/jacks/jack-%.jar,%,$(jack_jar)) || exit 47;)
	$(copy-file-to-target)

##################################
include $(CLEAR_VARS)
LOCAL_MODULE := jill
LOCAL_SRC_FILES := jill.jar
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_BUILT_MODULE_STEM := jill$(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_IS_HOST_MODULE := true

include $(BUILD_PREBUILT)

# Only build Clang/LLVM components when forced to.
ifneq (true,$(FORCE_BUILD_LLVM_COMPONENTS))

##################################
include $(CLEAR_VARS)

LOCAL_MODULE := libLLVM
LOCAL_SRC_FILES := $(HOST_OS)/lib64/$(LOCAL_MODULE)$(HOST_SHLIB_SUFFIX)
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := $(HOST_SHLIB_SUFFIX)
LOCAL_IS_HOST_MODULE := true
LOCAL_MULTILIB := 64

include $(BUILD_PREBUILT)

##################################
include $(CLEAR_VARS)

LOCAL_MODULE := libclang
LOCAL_SRC_FILES := $(HOST_OS)/lib64/$(LOCAL_MODULE)$(HOST_SHLIB_SUFFIX)
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := $(HOST_SHLIB_SUFFIX)
LOCAL_IS_HOST_MODULE := true
LOCAL_MULTILIB := 64

include $(BUILD_PREBUILT)

endif #!FORCE_BUILD_LLVM_COMPONENTS
