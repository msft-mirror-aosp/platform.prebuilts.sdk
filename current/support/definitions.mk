#
# Copyright (C) 2018 The Android Open Source Project
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

# List of all Compat transitive dependencies. Use this instead of
# android-support-compat.
ANDROID_SUPPORT_COMPAT_TARGETS := \
  android-support-compat-nodeps \
  android-arch-lifecycle-runtime

# List of all Compat transitive dependencies. Use this instead of
# android-support-media-compat.
ANDROID_SUPPORT_MEDIA_COMPAT_TARGETS := \
  android-support-media-compat-nodeps  \
  $(ANDROID_SUPPORT_COMPAT_TARGETS)

# List of all Core Utils transitive dependencies. Use this instead of
# android-support-core-utils.
ANDROID_SUPPORT_CORE_UTILS_TARGETS := \
  android-support-core-utils-nodeps \
  $(ANDROID_SUPPORT_COMPAT_TARGETS)

# List of all Core UI transitive dependencies. Use this instead of
# android-support-core-ui.
ANDROID_SUPPORT_CORE_UI_TARGETS := \
  android-support-core-ui-nodeps \
  $(ANDROID_SUPPORT_COMPAT_TARGETS) \
  $(ANDROID_SUPPORT_CORE_UTILS_TARGETS)

# List of all Fragment transitive dependencies. Use this instead of
# android-support-fragment.
ANDROID_SUPPORT_FRAGMENT_TARGETS := \
  android-support-fragment-nodeps \
  $(ANDROID_SUPPORT_COMPAT_TARGETS) \
  $(ANDROID_SUPPORT_CORE_UI_TARGETS) \
  $(ANDROID_SUPPORT_CORE_UTILS_TARGETS)

# List of all Vector Drawable transitive dependencies. Use this instead of
# android-support-vectordrawable.
ANDROID_SUPPORT_VECTOR_DRAWABLE_TARGETS := \
    android-support-vectordrawable-nodeps \
    $(ANDROID_SUPPORT_CORE_UI_TARGETS)

# List of all Animated Vector Drawable transitive dependencies. Use this
# instead of android-support-animatedvectordrawable.
ANDROID_SUPPORT_ANIMATED_VECTOR_DRAWABLE_TARGETS := \
    android-support-animatedvectordrawable-nodeps \
    $(ANDROID_SUPPORT_VECTOR_DRAWABLE_TARGETS) \
    $(ANDROID_SUPPORT_CORE_UI_TARGETS)

# List of all App Compat transitive dependencies. Use this instead of
# android-support-v7-appcompat.
ANDROID_SUPPORT_V7_APPCOMPAT_TARGETS := \
    android-support-v7-appcompat-nodeps \
    $(ANDROID_SUPPORT_CORE_UTILS_TARGETS) \
    $(ANDROID_SUPPORT_FRAGMENT_TARGETS) \
    $(ANDROID_SUPPORT_VECTOR_DRAWABLE_TARGETS) \
    $(ANDROID_SUPPORT_ANIMATED_VECTOR_DRAWABLE_TARGETS)

# List of all Design transitive dependencies. Use this instead of
# android-support-design.
ANDROID_SUPPORT_DESIGN_TARGETS := \
    android-support-design \
    $(ANDROID_SUPPORT_COMPAT_TARGETS) \
    $(ANDROID_SUPPORT_CORE_UI_TARGETS) \
    $(ANDROID_SUPPORT_CORE_UTILS_TARGETS) \
    $(ANDROID_SUPPORT_FRAGMENT_TARGETS) \
    android-support-transition \
    $(ANDROID_SUPPORT_V7_APPCOMPAT_TARGETS) \
    android-support-v7-cardview \
    android-support-v7-recyclerview \
    android-support-design-animation \
    android-support-design-bottomnavigation \
    android-support-design-bottomsheet \
    android-support-design-button \
    android-support-design-canvas \
    android-support-design-card \
    android-support-design-chip \
    android-support-design-circularreveal \
    android-support-design-circularreveal-cardview \
    android-support-design-circularreveal-coordinatorlayout \
    android-support-design-color \
    android-support-design-dialog \
    android-support-design-drawable \
    android-support-design-expandable \
    android-support-design-floatingactionbutton \
    android-support-design-math \
    android-support-design-resources \
    android-support-design-ripple \
    android-support-design-snackbar \
    android-support-design-stateful \
    android-support-design-textfield \
    android-support-design-theme \
    android-support-design-transformation \
    android-support-design-typography \
    android-support-design-widget \
    android-support-design-internal \
    flexbox

# List of all Car transitive dependencies. Use this instead of
# android-support-car.
ANDROID_SUPPORT_CAR_TARGETS := \
    android-support-car \
    $(ANDROID_SUPPORT_DESIGN_TARGETS) \
    $(ANDROID_SUPPORT_MEDIA_COMPAT_TARGETS)
