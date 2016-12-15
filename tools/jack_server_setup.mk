#
# Copyright (C) 2015 The Android Open Source Project
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

jack_server_version := 4.11.ALPHA
jack_server_jar := $(LOCAL_PATH)/jack-server-$(jack_server_version).jar


ifneq ($(ANDROID_JACK_VM_ARGS),)
jack_vm_args := $(ANDROID_JACK_VM_ARGS)
else
jack_vm_args := -Dfile.encoding=UTF-8 -XX:+TieredCompilation
endif
available_jack_jars := $(wildcard $(LOCAL_PATH)/jacks/jack-*.jar)

ifdef JACK_SERVER
ifneq ($(JACK_SERVER),true)
jack_server_disabled=true
endif
endif

.PHONY: setup-jack-server
ifeq ($(HOST_OS),darwin)
ALARM :=
else
ALARM := $(shell which alarm)
endif
ifneq (,$(ALARM))
ALARM := $(ALARM) -l 600
endif
setup-jack-server : PRIVATE_JACK_ADMIN := $(LOCAL_PATH)/jack-admin
setup-jack-server : PRIVATE_PATH := $(LOCAL_PATH)
setup-jack-server : PRIVATE_SERVER_VERSION := $(jack_server_version)
setup-jack-server : PRIVATE_SERVER_JAR := $(jack_server_jar)
setup-jack-server: $(JACK) $(LOCAL_PATH)/jack-launcher.jar $(jack_server_jar) $(available_jack_jars)
ifndef jack_server_disabled
	@echo Ensuring Jack server is installed and started
ifneq ($(dist_goal),)
	$(hide) $(ALARM) $(PRIVATE_JACK_ADMIN) stop-server 2>&1 || (exit 0)
	$(hide) $(ALARM) $(PRIVATE_JACK_ADMIN) kill-server 2>&1 || (exit 0)
	$(hide) $(ALARM) $(PRIVATE_JACK_ADMIN) uninstall-server 2>&1 || (exit 0)
endif
	$(hide) if ! $(ALARM) $(SHELL) -c "$(PRIVATE_JACK_ADMIN) install-server $(PRIVATE_PATH)/jack-launcher.jar $(PRIVATE_SERVER_JAR)  2>&1 || (exit 0)"; then uptime; $(ALARM) strace -f $(PRIVATE_JACK_ADMIN) install-server $(PRIVATE_PATH)/jack-launcher.jar $(PRIVATE_SERVER_JAR)  2>&1 || (exit 1); fi
ifneq ($(dist_goal),)
	$(hide) mkdir -p "$(DIST_DIR)/logs/jack/"
	$(hide) if ! JACK_SERVER_VM_ARGUMENTS="$(jack_vm_args) -Dcom.android.jack.server.log.file=$(abspath $(DIST_DIR))/logs/jack/jack-server-%u-%g.log" $(ALARM) $(SHELL) -c "$(PRIVATE_JACK_ADMIN) start-server 2>&1 || exit 0"; then uptime; JACK_SERVER_VM_ARGUMENTS="$(jack_vm_args) -Dcom.android.jack.server.log.file=$(abspath $(DIST_DIR))/logs/jack/jack-server-%u-%g.log" $(ALARM) strace -f $(PRIVATE_JACK_ADMIN) start-server 2>&1 || (exit 1); fi
else
	$(hide) JACK_SERVER_VM_ARGUMENTS="$(jack_vm_args)" $(ALARM) $(PRIVATE_JACK_ADMIN) start-server 2>&1 || exit 0
endif
	$(hide) if ! $(ALARM) $(SHELL) -c "$(PRIVATE_JACK_ADMIN) update server $(PRIVATE_SERVER_JAR) $(PRIVATE_SERVER_VERSION) 2>&1 || exit 0"; then uptime; $(ALARM) strace -f $(PRIVATE_JACK_ADMIN) update server $(PRIVATE_SERVER_JAR) $(PRIVATE_SERVER_VERSION) || (exit 1); fi
	$(hide) $(foreach jack_jar,$(available_jack_jars),$(ALARM) $(PRIVATE_JACK_ADMIN) update jack $(jack_jar) $(patsubst $(PRIVATE_PATH)/jacks/jack-%.jar,%,$(jack_jar)) || exit 47;)
ifdef JACK_ENGINEERING_VERSION
	$(hide) $(ALARM) $(PRIVATE_JACK_ADMIN) update jack $(jack_eng_jar)
endif
endif
