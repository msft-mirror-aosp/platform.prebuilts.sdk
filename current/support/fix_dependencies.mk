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

###########################################################################
# Inspects Support Library dependencies and adds transitive dependencies.
#
# Exports the following variables:
# support_android_deps
# support_java_deps
#
# This file was automatically generated with:
# ./update_current/extract_deps.py current/support/Android.mk -o current/support/fix_dependencies.mk
###########################################################################

# Only AAPT2 clients get transitive dependency resolution. This may be removed
# once we've migrated all Support Library targets to LOCAL_AAPT2_ONLY := true.
ifeq ($(LOCAL_USE_AAPT2),true)

known_support_libs := \
    android-slices-builders \
    android-slices-core \
    android-slices-view \
    android-support-animatedvectordrawable \
    android-support-annotations \
    android-support-asynclayoutinflater \
    android-support-car \
    android-support-collections \
    android-support-compat \
    android-support-contentpaging \
    android-support-coordinatorlayout \
    android-support-core-ui \
    android-support-core-utils \
    android-support-cursoradapter \
    android-support-customtabs \
    android-support-customview \
    android-support-documentfile \
    android-support-drawerlayout \
    android-support-dynamic-animation \
    android-support-emoji \
    android-support-emoji-appcompat \
    android-support-emoji-bundled \
    android-support-exifinterface \
    android-support-fragment \
    android-support-heifwriter \
    android-support-interpolator \
    android-support-loader \
    android-support-localbroadcastmanager \
    android-support-media-compat \
    android-support-percent \
    android-support-print \
    android-support-recommendation \
    android-support-recyclerview-selection \
    android-support-slidingpanelayout \
    android-support-swiperefreshlayout \
    android-support-textclassifier \
    android-support-transition \
    android-support-tv-provider \
    android-support-v13 \
    android-support-v14-preference \
    android-support-v17-leanback \
    android-support-v17-preference-leanback \
    android-support-v4 \
    android-support-v7-appcompat \
    android-support-v7-cardview \
    android-support-v7-gridlayout \
    android-support-v7-mediarouter \
    android-support-v7-palette \
    android-support-v7-preference \
    android-support-v7-recyclerview \
    android-support-vectordrawable \
    android-support-viewpager \
    android-support-wear \
    android-support-webkit

# Don't run on the Support Library targets themselves.
ifeq (,$(filter $(known_support_libs), $(LOCAL_MODULE)))

# Aggregate all requested Support Library modules.
requested_support_libs := $(filter $(known_support_libs), \
    $(LOCAL_JAVA_LIBRARIES) $(LOCAL_STATIC_JAVA_LIBRARIES) \
    $(LOCAL_SHARED_ANDROID_LIBRARIES) $(LOCAL_STATIC_ANDROID_LIBRARIES))

# Filter the Support Library modules out of the library variables. We don't
# trust developers to get these right, so they will be added back by the
# build system based on the output of this file and the type of build.
LOCAL_JAVA_LIBRARIES := $(filter-out $(requested_support_libs), \
    $(LOCAL_JAVA_LIBRARIES))
LOCAL_STATIC_JAVA_LIBRARIES := $(filter-out $(requested_support_libs), \
    $(LOCAL_STATIC_JAVA_LIBRARIES))
LOCAL_SHARED_ANDROID_LIBRARIES := $(filter-out $(requested_support_libs), \
    $(LOCAL_SHARED_ANDROID_LIBRARIES))
LOCAL_STATIC_ANDROID_LIBRARIES := $(filter-out $(requested_support_libs), \
    $(LOCAL_STATIC_ANDROID_LIBRARIES))

support_android_deps :=
support_java_deps :=

ifneq (,$(filter android-slices-builders,$(requested_support_libs)))
    support_android_deps += \
        android-arch-lifecycle-livedata-core \
        android-arch-lifecycle-runtime \
        android-arch-lifecycle-viewmodel \
        android-slices-builders-nodeps \
        android-slices-core-nodeps \
        android-support-animatedvectordrawable-nodeps \
        android-support-asynclayoutinflater-nodeps \
        android-support-compat-nodeps \
        android-support-coordinatorlayout-nodeps \
        android-support-core-ui-nodeps \
        android-support-core-utils-nodeps \
        android-support-cursoradapter-nodeps \
        android-support-customview-nodeps \
        android-support-documentfile-nodeps \
        android-support-drawerlayout-nodeps \
        android-support-fragment-nodeps \
        android-support-interpolator-nodeps \
        android-support-loader-nodeps \
        android-support-localbroadcastmanager-nodeps \
        android-support-print-nodeps \
        android-support-slidingpanelayout-nodeps \
        android-support-swiperefreshlayout-nodeps \
        android-support-v7-appcompat-nodeps \
        android-support-vectordrawable-nodeps \
        android-support-viewpager-nodeps
    support_java_deps += \
        android-support-annotations-nodeps \
        android-support-collections-nodeps
endif

ifneq (,$(filter android-slices-core,$(requested_support_libs)))
    support_android_deps += \
        android-arch-lifecycle-livedata-core \
        android-arch-lifecycle-runtime \
        android-arch-lifecycle-viewmodel \
        android-slices-core-nodeps \
        android-support-animatedvectordrawable-nodeps \
        android-support-asynclayoutinflater-nodeps \
        android-support-compat-nodeps \
        android-support-coordinatorlayout-nodeps \
        android-support-core-ui-nodeps \
        android-support-core-utils-nodeps \
        android-support-cursoradapter-nodeps \
        android-support-customview-nodeps \
        android-support-documentfile-nodeps \
        android-support-drawerlayout-nodeps \
        android-support-fragment-nodeps \
        android-support-interpolator-nodeps \
        android-support-loader-nodeps \
        android-support-localbroadcastmanager-nodeps \
        android-support-print-nodeps \
        android-support-slidingpanelayout-nodeps \
        android-support-swiperefreshlayout-nodeps \
        android-support-v7-appcompat-nodeps \
        android-support-vectordrawable-nodeps \
        android-support-viewpager-nodeps
    support_java_deps += \
        android-support-annotations-nodeps \
        android-support-collections-nodeps
endif

ifneq (,$(filter android-slices-view,$(requested_support_libs)))
    support_android_deps += \
        android-arch-lifecycle-livedata-core \
        android-arch-lifecycle-runtime \
        android-arch-lifecycle-viewmodel \
        android-slices-builders-nodeps \
        android-slices-core-nodeps \
        android-slices-view-nodeps \
        android-support-animatedvectordrawable-nodeps \
        android-support-asynclayoutinflater-nodeps \
        android-support-compat-nodeps \
        android-support-coordinatorlayout-nodeps \
        android-support-core-ui-nodeps \
        android-support-core-utils-nodeps \
        android-support-cursoradapter-nodeps \
        android-support-customview-nodeps \
        android-support-documentfile-nodeps \
        android-support-drawerlayout-nodeps \
        android-support-fragment-nodeps \
        android-support-interpolator-nodeps \
        android-support-loader-nodeps \
        android-support-localbroadcastmanager-nodeps \
        android-support-print-nodeps \
        android-support-slidingpanelayout-nodeps \
        android-support-swiperefreshlayout-nodeps \
        android-support-v7-appcompat-nodeps \
        android-support-v7-recyclerview-nodeps \
        android-support-vectordrawable-nodeps \
        android-support-viewpager-nodeps
    support_java_deps += \
        android-support-annotations-nodeps \
        android-support-collections-nodeps
endif

ifneq (,$(filter android-support-animatedvectordrawable,$(requested_support_libs)))
    support_android_deps += \
        android-arch-lifecycle-livedata-core \
        android-arch-lifecycle-runtime \
        android-arch-lifecycle-viewmodel \
        android-support-animatedvectordrawable-nodeps \
        android-support-asynclayoutinflater-nodeps \
        android-support-compat-nodeps \
        android-support-coordinatorlayout-nodeps \
        android-support-core-ui-nodeps \
        android-support-core-utils-nodeps \
        android-support-cursoradapter-nodeps \
        android-support-customview-nodeps \
        android-support-documentfile-nodeps \
        android-support-drawerlayout-nodeps \
        android-support-interpolator-nodeps \
        android-support-loader-nodeps \
        android-support-localbroadcastmanager-nodeps \
        android-support-print-nodeps \
        android-support-slidingpanelayout-nodeps \
        android-support-swiperefreshlayout-nodeps \
        android-support-vectordrawable-nodeps \
        android-support-viewpager-nodeps
    support_java_deps += \
        android-support-annotations-nodeps \
        android-support-collections-nodeps
endif

ifneq (,$(filter android-support-annotations,$(requested_support_libs)))
    support_android_deps +=
    support_java_deps += \
        android-support-annotations-nodeps
endif

ifneq (,$(filter android-support-asynclayoutinflater,$(requested_support_libs)))
    support_android_deps += \
        android-arch-lifecycle-runtime \
        android-support-asynclayoutinflater-nodeps \
        android-support-compat-nodeps
    support_java_deps += \
        android-support-annotations-nodeps \
        android-support-collections-nodeps
endif

ifneq (,$(filter android-support-car,$(requested_support_libs)))
    support_android_deps += \
        android-arch-lifecycle-livedata-core \
        android-arch-lifecycle-runtime \
        android-arch-lifecycle-viewmodel \
        android-support-animatedvectordrawable-nodeps \
        android-support-asynclayoutinflater-nodeps \
        android-support-car-nodeps \
        android-support-compat-nodeps \
        android-support-coordinatorlayout-nodeps \
        android-support-core-ui-nodeps \
        android-support-core-utils-nodeps \
        android-support-cursoradapter-nodeps \
        android-support-customview-nodeps \
        android-support-design-animation \
        android-support-design-bottomappbar \
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
        android-support-design-internal \
        android-support-design-math \
        android-support-design-navigation \
        android-support-design-resources \
        android-support-design-ripple \
        android-support-design-shape \
        android-support-design-snackbar \
        android-support-design-stateful \
        android-support-design-tabs \
        android-support-design-textfield \
        android-support-design-theme \
        android-support-design-transformation \
        android-support-design-typography \
        android-support-design-widget \
        android-support-documentfile-nodeps \
        android-support-drawerlayout-nodeps \
        android-support-fragment-nodeps \
        android-support-interpolator-nodeps \
        android-support-loader-nodeps \
        android-support-localbroadcastmanager-nodeps \
        android-support-media-compat-nodeps \
        android-support-print-nodeps \
        android-support-slidingpanelayout-nodeps \
        android-support-swiperefreshlayout-nodeps \
        android-support-v4-nodeps \
        android-support-v7-appcompat-nodeps \
        android-support-v7-cardview-nodeps \
        android-support-v7-recyclerview-nodeps \
        android-support-vectordrawable-nodeps \
        android-support-viewpager-nodeps \
        flexbox
    support_java_deps += \
        android-support-annotations-nodeps \
        android-support-collections-nodeps \
        prebuilt-android.car-stubs
endif

ifneq (,$(filter android-support-collections,$(requested_support_libs)))
    support_android_deps +=
    support_java_deps += \
        android-support-annotations-nodeps \
        android-support-collections-nodeps
endif

ifneq (,$(filter android-support-compat,$(requested_support_libs)))
    support_android_deps += \
        android-arch-lifecycle-runtime \
        android-support-compat-nodeps
    support_java_deps += \
        android-support-annotations-nodeps \
        android-support-collections-nodeps
endif

ifneq (,$(filter android-support-contentpaging,$(requested_support_libs)))
    support_android_deps += \
        android-arch-lifecycle-runtime \
        android-support-compat-nodeps \
        android-support-contentpaging-nodeps
    support_java_deps += \
        android-support-annotations-nodeps \
        android-support-collections-nodeps
endif

ifneq (,$(filter android-support-coordinatorlayout,$(requested_support_libs)))
    support_android_deps += \
        android-arch-lifecycle-runtime \
        android-support-compat-nodeps \
        android-support-coordinatorlayout-nodeps \
        android-support-customview-nodeps
    support_java_deps += \
        android-support-annotations-nodeps \
        android-support-collections-nodeps
endif

ifneq (,$(filter android-support-core-ui,$(requested_support_libs)))
    support_android_deps += \
        android-arch-lifecycle-livedata-core \
        android-arch-lifecycle-runtime \
        android-arch-lifecycle-viewmodel \
        android-support-asynclayoutinflater-nodeps \
        android-support-compat-nodeps \
        android-support-coordinatorlayout-nodeps \
        android-support-core-ui-nodeps \
        android-support-core-utils-nodeps \
        android-support-cursoradapter-nodeps \
        android-support-customview-nodeps \
        android-support-documentfile-nodeps \
        android-support-drawerlayout-nodeps \
        android-support-interpolator-nodeps \
        android-support-loader-nodeps \
        android-support-localbroadcastmanager-nodeps \
        android-support-print-nodeps \
        android-support-slidingpanelayout-nodeps \
        android-support-swiperefreshlayout-nodeps \
        android-support-viewpager-nodeps
    support_java_deps += \
        android-support-annotations-nodeps \
        android-support-collections-nodeps
endif

ifneq (,$(filter android-support-core-utils,$(requested_support_libs)))
    support_android_deps += \
        android-arch-lifecycle-livedata-core \
        android-arch-lifecycle-runtime \
        android-arch-lifecycle-viewmodel \
        android-support-compat-nodeps \
        android-support-core-utils-nodeps \
        android-support-documentfile-nodeps \
        android-support-loader-nodeps \
        android-support-localbroadcastmanager-nodeps \
        android-support-print-nodeps
    support_java_deps += \
        android-support-annotations-nodeps \
        android-support-collections-nodeps
endif

ifneq (,$(filter android-support-cursoradapter,$(requested_support_libs)))
    support_android_deps += \
        android-support-cursoradapter-nodeps
    support_java_deps += \
        android-support-annotations-nodeps
endif

ifneq (,$(filter android-support-customtabs,$(requested_support_libs)))
    support_android_deps += \
        android-arch-lifecycle-livedata-core \
        android-arch-lifecycle-runtime \
        android-arch-lifecycle-viewmodel \
        android-support-animatedvectordrawable-nodeps \
        android-support-asynclayoutinflater-nodeps \
        android-support-compat-nodeps \
        android-support-coordinatorlayout-nodeps \
        android-support-core-ui-nodeps \
        android-support-core-utils-nodeps \
        android-support-cursoradapter-nodeps \
        android-support-customtabs-nodeps \
        android-support-customview-nodeps \
        android-support-documentfile-nodeps \
        android-support-drawerlayout-nodeps \
        android-support-fragment-nodeps \
        android-support-interpolator-nodeps \
        android-support-loader-nodeps \
        android-support-localbroadcastmanager-nodeps \
        android-support-print-nodeps \
        android-support-slidingpanelayout-nodeps \
        android-support-swiperefreshlayout-nodeps \
        android-support-v7-appcompat-nodeps \
        android-support-vectordrawable-nodeps \
        android-support-viewpager-nodeps
    support_java_deps += \
        android-support-annotations-nodeps \
        android-support-collections-nodeps
endif

ifneq (,$(filter android-support-customview,$(requested_support_libs)))
    support_android_deps += \
        android-arch-lifecycle-runtime \
        android-support-compat-nodeps \
        android-support-customview-nodeps
    support_java_deps += \
        android-support-annotations-nodeps \
        android-support-collections-nodeps
endif

ifneq (,$(filter android-support-documentfile,$(requested_support_libs)))
    support_android_deps += \
        android-support-documentfile-nodeps
    support_java_deps += \
        android-support-annotations-nodeps
endif

ifneq (,$(filter android-support-drawerlayout,$(requested_support_libs)))
    support_android_deps += \
        android-arch-lifecycle-runtime \
        android-support-compat-nodeps \
        android-support-customview-nodeps \
        android-support-drawerlayout-nodeps
    support_java_deps += \
        android-support-annotations-nodeps \
        android-support-collections-nodeps
endif

ifneq (,$(filter android-support-dynamic-animation,$(requested_support_libs)))
    support_android_deps += \
        android-arch-lifecycle-livedata-core \
        android-arch-lifecycle-runtime \
        android-arch-lifecycle-viewmodel \
        android-support-compat-nodeps \
        android-support-core-utils-nodeps \
        android-support-documentfile-nodeps \
        android-support-dynamic-animation-nodeps \
        android-support-loader-nodeps \
        android-support-localbroadcastmanager-nodeps \
        android-support-print-nodeps
    support_java_deps += \
        android-support-annotations-nodeps \
        android-support-collections-nodeps
endif

ifneq (,$(filter android-support-emoji,$(requested_support_libs)))
    support_android_deps += \
        android-arch-lifecycle-runtime \
        android-support-compat-nodeps \
        android-support-emoji-nodeps
    support_java_deps += \
        android-support-annotations-nodeps \
        android-support-collections-nodeps
endif

ifneq (,$(filter android-support-emoji-appcompat,$(requested_support_libs)))
    support_android_deps += \
        android-arch-lifecycle-livedata-core \
        android-arch-lifecycle-runtime \
        android-arch-lifecycle-viewmodel \
        android-support-animatedvectordrawable-nodeps \
        android-support-asynclayoutinflater-nodeps \
        android-support-compat-nodeps \
        android-support-coordinatorlayout-nodeps \
        android-support-core-ui-nodeps \
        android-support-core-utils-nodeps \
        android-support-cursoradapter-nodeps \
        android-support-customview-nodeps \
        android-support-documentfile-nodeps \
        android-support-drawerlayout-nodeps \
        android-support-emoji-appcompat-nodeps \
        android-support-emoji-nodeps \
        android-support-fragment-nodeps \
        android-support-interpolator-nodeps \
        android-support-loader-nodeps \
        android-support-localbroadcastmanager-nodeps \
        android-support-print-nodeps \
        android-support-slidingpanelayout-nodeps \
        android-support-swiperefreshlayout-nodeps \
        android-support-v7-appcompat-nodeps \
        android-support-vectordrawable-nodeps \
        android-support-viewpager-nodeps
    support_java_deps += \
        android-support-annotations-nodeps \
        android-support-collections-nodeps
endif

ifneq (,$(filter android-support-emoji-bundled,$(requested_support_libs)))
    support_android_deps += \
        android-arch-lifecycle-runtime \
        android-support-compat-nodeps \
        android-support-emoji-bundled-nodeps \
        android-support-emoji-nodeps
    support_java_deps += \
        android-support-annotations-nodeps \
        android-support-collections-nodeps
endif

ifneq (,$(filter android-support-exifinterface,$(requested_support_libs)))
    support_android_deps += \
        android-support-exifinterface-nodeps
    support_java_deps += \
        android-support-annotations-nodeps
endif

ifneq (,$(filter android-support-fragment,$(requested_support_libs)))
    support_android_deps += \
        android-arch-lifecycle-livedata-core \
        android-arch-lifecycle-runtime \
        android-arch-lifecycle-viewmodel \
        android-support-asynclayoutinflater-nodeps \
        android-support-compat-nodeps \
        android-support-coordinatorlayout-nodeps \
        android-support-core-ui-nodeps \
        android-support-core-utils-nodeps \
        android-support-cursoradapter-nodeps \
        android-support-customview-nodeps \
        android-support-documentfile-nodeps \
        android-support-drawerlayout-nodeps \
        android-support-fragment-nodeps \
        android-support-interpolator-nodeps \
        android-support-loader-nodeps \
        android-support-localbroadcastmanager-nodeps \
        android-support-print-nodeps \
        android-support-slidingpanelayout-nodeps \
        android-support-swiperefreshlayout-nodeps \
        android-support-viewpager-nodeps
    support_java_deps += \
        android-support-annotations-nodeps \
        android-support-collections-nodeps
endif

ifneq (,$(filter android-support-heifwriter,$(requested_support_libs)))
    support_android_deps += \
        android-support-heifwriter-nodeps
    support_java_deps += \
        android-support-annotations-nodeps
endif

ifneq (,$(filter android-support-interpolator,$(requested_support_libs)))
    support_android_deps += \
        android-support-interpolator-nodeps
    support_java_deps += \
        android-support-annotations-nodeps
endif

ifneq (,$(filter android-support-loader,$(requested_support_libs)))
    support_android_deps += \
        android-arch-lifecycle-livedata-core \
        android-arch-lifecycle-runtime \
        android-arch-lifecycle-viewmodel \
        android-support-compat-nodeps \
        android-support-loader-nodeps
    support_java_deps += \
        android-support-annotations-nodeps \
        android-support-collections-nodeps
endif

ifneq (,$(filter android-support-localbroadcastmanager,$(requested_support_libs)))
    support_android_deps += \
        android-support-localbroadcastmanager-nodeps
    support_java_deps += \
        android-support-annotations-nodeps
endif

ifneq (,$(filter android-support-media-compat,$(requested_support_libs)))
    support_android_deps += \
        android-arch-lifecycle-runtime \
        android-support-compat-nodeps \
        android-support-media-compat-nodeps
    support_java_deps += \
        android-support-annotations-nodeps \
        android-support-collections-nodeps
endif

ifneq (,$(filter android-support-percent,$(requested_support_libs)))
    support_android_deps += \
        android-arch-lifecycle-runtime \
        android-support-compat-nodeps \
        android-support-percent-nodeps
    support_java_deps += \
        android-support-annotations-nodeps \
        android-support-collections-nodeps
endif

ifneq (,$(filter android-support-print,$(requested_support_libs)))
    support_android_deps += \
        android-support-print-nodeps
    support_java_deps += \
        android-support-annotations-nodeps
endif

ifneq (,$(filter android-support-recommendation,$(requested_support_libs)))
    support_android_deps += \
        android-support-recommendation-nodeps
    support_java_deps += \
        android-support-annotations-nodeps
endif

ifneq (,$(filter android-support-recyclerview-selection,$(requested_support_libs)))
    support_android_deps += \
        android-arch-lifecycle-livedata-core \
        android-arch-lifecycle-runtime \
        android-arch-lifecycle-viewmodel \
        android-support-asynclayoutinflater-nodeps \
        android-support-compat-nodeps \
        android-support-coordinatorlayout-nodeps \
        android-support-core-ui-nodeps \
        android-support-core-utils-nodeps \
        android-support-cursoradapter-nodeps \
        android-support-customview-nodeps \
        android-support-documentfile-nodeps \
        android-support-drawerlayout-nodeps \
        android-support-interpolator-nodeps \
        android-support-loader-nodeps \
        android-support-localbroadcastmanager-nodeps \
        android-support-print-nodeps \
        android-support-recyclerview-selection-nodeps \
        android-support-slidingpanelayout-nodeps \
        android-support-swiperefreshlayout-nodeps \
        android-support-v7-recyclerview-nodeps \
        android-support-viewpager-nodeps
    support_java_deps += \
        android-support-annotations-nodeps \
        android-support-collections-nodeps
endif

ifneq (,$(filter android-support-slidingpanelayout,$(requested_support_libs)))
    support_android_deps += \
        android-arch-lifecycle-runtime \
        android-support-compat-nodeps \
        android-support-customview-nodeps \
        android-support-slidingpanelayout-nodeps
    support_java_deps += \
        android-support-annotations-nodeps \
        android-support-collections-nodeps
endif

ifneq (,$(filter android-support-swiperefreshlayout,$(requested_support_libs)))
    support_android_deps += \
        android-arch-lifecycle-runtime \
        android-support-compat-nodeps \
        android-support-interpolator-nodeps \
        android-support-swiperefreshlayout-nodeps
    support_java_deps += \
        android-support-annotations-nodeps \
        android-support-collections-nodeps
endif

ifneq (,$(filter android-support-textclassifier,$(requested_support_libs)))
    support_android_deps += \
        android-arch-lifecycle-livedata-core \
        android-arch-lifecycle-runtime \
        android-arch-lifecycle-viewmodel \
        android-support-animatedvectordrawable-nodeps \
        android-support-asynclayoutinflater-nodeps \
        android-support-compat-nodeps \
        android-support-coordinatorlayout-nodeps \
        android-support-core-ui-nodeps \
        android-support-core-utils-nodeps \
        android-support-cursoradapter-nodeps \
        android-support-customview-nodeps \
        android-support-documentfile-nodeps \
        android-support-drawerlayout-nodeps \
        android-support-fragment-nodeps \
        android-support-interpolator-nodeps \
        android-support-loader-nodeps \
        android-support-localbroadcastmanager-nodeps \
        android-support-print-nodeps \
        android-support-slidingpanelayout-nodeps \
        android-support-swiperefreshlayout-nodeps \
        android-support-textclassifier-nodeps \
        android-support-v7-appcompat-nodeps \
        android-support-vectordrawable-nodeps \
        android-support-viewpager-nodeps
    support_java_deps += \
        android-support-annotations-nodeps \
        android-support-collections-nodeps
endif

ifneq (,$(filter android-support-transition,$(requested_support_libs)))
    support_android_deps += \
        android-arch-lifecycle-runtime \
        android-support-compat-nodeps \
        android-support-transition-nodeps
    support_java_deps += \
        android-support-annotations-nodeps \
        android-support-collections-nodeps
endif

ifneq (,$(filter android-support-tv-provider,$(requested_support_libs)))
    support_android_deps += \
        android-arch-lifecycle-runtime \
        android-support-compat-nodeps \
        android-support-tv-provider-nodeps
    support_java_deps += \
        android-support-annotations-nodeps \
        android-support-collections-nodeps
endif

ifneq (,$(filter android-support-v13,$(requested_support_libs)))
    support_android_deps += \
        android-arch-lifecycle-livedata-core \
        android-arch-lifecycle-runtime \
        android-arch-lifecycle-viewmodel \
        android-support-asynclayoutinflater-nodeps \
        android-support-compat-nodeps \
        android-support-coordinatorlayout-nodeps \
        android-support-core-ui-nodeps \
        android-support-core-utils-nodeps \
        android-support-cursoradapter-nodeps \
        android-support-customview-nodeps \
        android-support-documentfile-nodeps \
        android-support-drawerlayout-nodeps \
        android-support-fragment-nodeps \
        android-support-interpolator-nodeps \
        android-support-loader-nodeps \
        android-support-localbroadcastmanager-nodeps \
        android-support-media-compat-nodeps \
        android-support-print-nodeps \
        android-support-slidingpanelayout-nodeps \
        android-support-swiperefreshlayout-nodeps \
        android-support-v13-nodeps \
        android-support-v4-nodeps \
        android-support-viewpager-nodeps
    support_java_deps += \
        android-support-annotations-nodeps \
        android-support-collections-nodeps
endif

ifneq (,$(filter android-support-v14-preference,$(requested_support_libs)))
    support_android_deps += \
        android-arch-lifecycle-livedata-core \
        android-arch-lifecycle-runtime \
        android-arch-lifecycle-viewmodel \
        android-support-animatedvectordrawable-nodeps \
        android-support-asynclayoutinflater-nodeps \
        android-support-compat-nodeps \
        android-support-coordinatorlayout-nodeps \
        android-support-core-ui-nodeps \
        android-support-core-utils-nodeps \
        android-support-cursoradapter-nodeps \
        android-support-customview-nodeps \
        android-support-documentfile-nodeps \
        android-support-drawerlayout-nodeps \
        android-support-fragment-nodeps \
        android-support-interpolator-nodeps \
        android-support-loader-nodeps \
        android-support-localbroadcastmanager-nodeps \
        android-support-print-nodeps \
        android-support-slidingpanelayout-nodeps \
        android-support-swiperefreshlayout-nodeps \
        android-support-v14-preference-nodeps \
        android-support-v7-appcompat-nodeps \
        android-support-v7-preference-nodeps \
        android-support-v7-recyclerview-nodeps \
        android-support-vectordrawable-nodeps \
        android-support-viewpager-nodeps
    support_java_deps += \
        android-support-annotations-nodeps \
        android-support-collections-nodeps
endif

ifneq (,$(filter android-support-v17-leanback,$(requested_support_libs)))
    support_android_deps += \
        android-arch-lifecycle-livedata-core \
        android-arch-lifecycle-runtime \
        android-arch-lifecycle-viewmodel \
        android-support-asynclayoutinflater-nodeps \
        android-support-compat-nodeps \
        android-support-coordinatorlayout-nodeps \
        android-support-core-ui-nodeps \
        android-support-core-utils-nodeps \
        android-support-cursoradapter-nodeps \
        android-support-customview-nodeps \
        android-support-documentfile-nodeps \
        android-support-drawerlayout-nodeps \
        android-support-fragment-nodeps \
        android-support-interpolator-nodeps \
        android-support-loader-nodeps \
        android-support-localbroadcastmanager-nodeps \
        android-support-media-compat-nodeps \
        android-support-print-nodeps \
        android-support-slidingpanelayout-nodeps \
        android-support-swiperefreshlayout-nodeps \
        android-support-v17-leanback-nodeps \
        android-support-v7-recyclerview-nodeps \
        android-support-viewpager-nodeps
    support_java_deps += \
        android-support-annotations-nodeps \
        android-support-collections-nodeps
endif

ifneq (,$(filter android-support-v17-preference-leanback,$(requested_support_libs)))
    support_android_deps += \
        android-arch-lifecycle-livedata-core \
        android-arch-lifecycle-runtime \
        android-arch-lifecycle-viewmodel \
        android-support-animatedvectordrawable-nodeps \
        android-support-asynclayoutinflater-nodeps \
        android-support-compat-nodeps \
        android-support-coordinatorlayout-nodeps \
        android-support-core-ui-nodeps \
        android-support-core-utils-nodeps \
        android-support-cursoradapter-nodeps \
        android-support-customview-nodeps \
        android-support-documentfile-nodeps \
        android-support-drawerlayout-nodeps \
        android-support-fragment-nodeps \
        android-support-interpolator-nodeps \
        android-support-loader-nodeps \
        android-support-localbroadcastmanager-nodeps \
        android-support-media-compat-nodeps \
        android-support-print-nodeps \
        android-support-slidingpanelayout-nodeps \
        android-support-swiperefreshlayout-nodeps \
        android-support-v14-preference-nodeps \
        android-support-v17-leanback-nodeps \
        android-support-v17-preference-leanback-nodeps \
        android-support-v7-appcompat-nodeps \
        android-support-v7-preference-nodeps \
        android-support-v7-recyclerview-nodeps \
        android-support-vectordrawable-nodeps \
        android-support-viewpager-nodeps
    support_java_deps += \
        android-support-annotations-nodeps \
        android-support-collections-nodeps
endif

ifneq (,$(filter android-support-v4,$(requested_support_libs)))
    support_android_deps += \
        android-arch-lifecycle-livedata-core \
        android-arch-lifecycle-runtime \
        android-arch-lifecycle-viewmodel \
        android-support-asynclayoutinflater-nodeps \
        android-support-compat-nodeps \
        android-support-coordinatorlayout-nodeps \
        android-support-core-ui-nodeps \
        android-support-core-utils-nodeps \
        android-support-cursoradapter-nodeps \
        android-support-customview-nodeps \
        android-support-documentfile-nodeps \
        android-support-drawerlayout-nodeps \
        android-support-fragment-nodeps \
        android-support-interpolator-nodeps \
        android-support-loader-nodeps \
        android-support-localbroadcastmanager-nodeps \
        android-support-media-compat-nodeps \
        android-support-print-nodeps \
        android-support-slidingpanelayout-nodeps \
        android-support-swiperefreshlayout-nodeps \
        android-support-v4-nodeps \
        android-support-viewpager-nodeps
    support_java_deps += \
        android-support-annotations-nodeps \
        android-support-collections-nodeps
endif

ifneq (,$(filter android-support-v7-appcompat,$(requested_support_libs)))
    support_android_deps += \
        android-arch-lifecycle-livedata-core \
        android-arch-lifecycle-runtime \
        android-arch-lifecycle-viewmodel \
        android-support-animatedvectordrawable-nodeps \
        android-support-asynclayoutinflater-nodeps \
        android-support-compat-nodeps \
        android-support-coordinatorlayout-nodeps \
        android-support-core-ui-nodeps \
        android-support-core-utils-nodeps \
        android-support-cursoradapter-nodeps \
        android-support-customview-nodeps \
        android-support-documentfile-nodeps \
        android-support-drawerlayout-nodeps \
        android-support-fragment-nodeps \
        android-support-interpolator-nodeps \
        android-support-loader-nodeps \
        android-support-localbroadcastmanager-nodeps \
        android-support-print-nodeps \
        android-support-slidingpanelayout-nodeps \
        android-support-swiperefreshlayout-nodeps \
        android-support-v7-appcompat-nodeps \
        android-support-vectordrawable-nodeps \
        android-support-viewpager-nodeps
    support_java_deps += \
        android-support-annotations-nodeps \
        android-support-collections-nodeps
endif

ifneq (,$(filter android-support-v7-cardview,$(requested_support_libs)))
    support_android_deps += \
        android-support-v7-cardview-nodeps
    support_java_deps += \
        android-support-annotations-nodeps
endif

ifneq (,$(filter android-support-v7-gridlayout,$(requested_support_libs)))
    support_android_deps += \
        android-arch-lifecycle-livedata-core \
        android-arch-lifecycle-runtime \
        android-arch-lifecycle-viewmodel \
        android-support-asynclayoutinflater-nodeps \
        android-support-compat-nodeps \
        android-support-coordinatorlayout-nodeps \
        android-support-core-ui-nodeps \
        android-support-core-utils-nodeps \
        android-support-cursoradapter-nodeps \
        android-support-customview-nodeps \
        android-support-documentfile-nodeps \
        android-support-drawerlayout-nodeps \
        android-support-interpolator-nodeps \
        android-support-loader-nodeps \
        android-support-localbroadcastmanager-nodeps \
        android-support-print-nodeps \
        android-support-slidingpanelayout-nodeps \
        android-support-swiperefreshlayout-nodeps \
        android-support-v7-gridlayout-nodeps \
        android-support-viewpager-nodeps
    support_java_deps += \
        android-support-annotations-nodeps \
        android-support-collections-nodeps
endif

ifneq (,$(filter android-support-v7-mediarouter,$(requested_support_libs)))
    support_android_deps += \
        android-arch-lifecycle-livedata-core \
        android-arch-lifecycle-runtime \
        android-arch-lifecycle-viewmodel \
        android-support-animatedvectordrawable-nodeps \
        android-support-asynclayoutinflater-nodeps \
        android-support-compat-nodeps \
        android-support-coordinatorlayout-nodeps \
        android-support-core-ui-nodeps \
        android-support-core-utils-nodeps \
        android-support-cursoradapter-nodeps \
        android-support-customview-nodeps \
        android-support-documentfile-nodeps \
        android-support-drawerlayout-nodeps \
        android-support-fragment-nodeps \
        android-support-interpolator-nodeps \
        android-support-loader-nodeps \
        android-support-localbroadcastmanager-nodeps \
        android-support-media-compat-nodeps \
        android-support-print-nodeps \
        android-support-slidingpanelayout-nodeps \
        android-support-swiperefreshlayout-nodeps \
        android-support-v7-appcompat-nodeps \
        android-support-v7-mediarouter-nodeps \
        android-support-v7-palette-nodeps \
        android-support-vectordrawable-nodeps \
        android-support-viewpager-nodeps
    support_java_deps += \
        android-support-annotations-nodeps \
        android-support-collections-nodeps
endif

ifneq (,$(filter android-support-v7-palette,$(requested_support_libs)))
    support_android_deps += \
        android-arch-lifecycle-livedata-core \
        android-arch-lifecycle-runtime \
        android-arch-lifecycle-viewmodel \
        android-support-compat-nodeps \
        android-support-core-utils-nodeps \
        android-support-documentfile-nodeps \
        android-support-loader-nodeps \
        android-support-localbroadcastmanager-nodeps \
        android-support-print-nodeps \
        android-support-v7-palette-nodeps
    support_java_deps += \
        android-support-annotations-nodeps \
        android-support-collections-nodeps
endif

ifneq (,$(filter android-support-v7-preference,$(requested_support_libs)))
    support_android_deps += \
        android-arch-lifecycle-livedata-core \
        android-arch-lifecycle-runtime \
        android-arch-lifecycle-viewmodel \
        android-support-animatedvectordrawable-nodeps \
        android-support-asynclayoutinflater-nodeps \
        android-support-compat-nodeps \
        android-support-coordinatorlayout-nodeps \
        android-support-core-ui-nodeps \
        android-support-core-utils-nodeps \
        android-support-cursoradapter-nodeps \
        android-support-customview-nodeps \
        android-support-documentfile-nodeps \
        android-support-drawerlayout-nodeps \
        android-support-fragment-nodeps \
        android-support-interpolator-nodeps \
        android-support-loader-nodeps \
        android-support-localbroadcastmanager-nodeps \
        android-support-print-nodeps \
        android-support-slidingpanelayout-nodeps \
        android-support-swiperefreshlayout-nodeps \
        android-support-v7-appcompat-nodeps \
        android-support-v7-preference-nodeps \
        android-support-v7-recyclerview-nodeps \
        android-support-vectordrawable-nodeps \
        android-support-viewpager-nodeps
    support_java_deps += \
        android-support-annotations-nodeps \
        android-support-collections-nodeps
endif

ifneq (,$(filter android-support-v7-recyclerview,$(requested_support_libs)))
    support_android_deps += \
        android-arch-lifecycle-livedata-core \
        android-arch-lifecycle-runtime \
        android-arch-lifecycle-viewmodel \
        android-support-asynclayoutinflater-nodeps \
        android-support-compat-nodeps \
        android-support-coordinatorlayout-nodeps \
        android-support-core-ui-nodeps \
        android-support-core-utils-nodeps \
        android-support-cursoradapter-nodeps \
        android-support-customview-nodeps \
        android-support-documentfile-nodeps \
        android-support-drawerlayout-nodeps \
        android-support-interpolator-nodeps \
        android-support-loader-nodeps \
        android-support-localbroadcastmanager-nodeps \
        android-support-print-nodeps \
        android-support-slidingpanelayout-nodeps \
        android-support-swiperefreshlayout-nodeps \
        android-support-v7-recyclerview-nodeps \
        android-support-viewpager-nodeps
    support_java_deps += \
        android-support-annotations-nodeps \
        android-support-collections-nodeps
endif

ifneq (,$(filter android-support-vectordrawable,$(requested_support_libs)))
    support_android_deps += \
        android-arch-lifecycle-runtime \
        android-support-compat-nodeps \
        android-support-vectordrawable-nodeps
    support_java_deps += \
        android-support-annotations-nodeps \
        android-support-collections-nodeps
endif

ifneq (,$(filter android-support-viewpager,$(requested_support_libs)))
    support_android_deps += \
        android-arch-lifecycle-runtime \
        android-support-compat-nodeps \
        android-support-customview-nodeps \
        android-support-viewpager-nodeps
    support_java_deps += \
        android-support-annotations-nodeps \
        android-support-collections-nodeps
endif

ifneq (,$(filter android-support-wear,$(requested_support_libs)))
    support_android_deps += \
        android-arch-lifecycle-livedata-core \
        android-arch-lifecycle-runtime \
        android-arch-lifecycle-viewmodel \
        android-support-asynclayoutinflater-nodeps \
        android-support-compat-nodeps \
        android-support-constraint-layout \
        android-support-coordinatorlayout-nodeps \
        android-support-core-ui-nodeps \
        android-support-core-utils-nodeps \
        android-support-cursoradapter-nodeps \
        android-support-customview-nodeps \
        android-support-documentfile-nodeps \
        android-support-drawerlayout-nodeps \
        android-support-fragment-nodeps \
        android-support-interpolator-nodeps \
        android-support-loader-nodeps \
        android-support-localbroadcastmanager-nodeps \
        android-support-print-nodeps \
        android-support-slidingpanelayout-nodeps \
        android-support-swiperefreshlayout-nodeps \
        android-support-v7-recyclerview-nodeps \
        android-support-viewpager-nodeps \
        android-support-wear-nodeps
    support_java_deps += \
        android-support-annotations-nodeps \
        android-support-collections-nodeps
endif

ifneq (,$(filter android-support-webkit,$(requested_support_libs)))
    support_android_deps += \
        android-arch-lifecycle-runtime \
        android-support-compat-nodeps \
        android-support-webkit-nodeps
    support_java_deps += \
        android-support-annotations-nodeps \
        android-support-collections-nodeps
endif


requested_support_libs :=
endif #IS_SUPPORT_LIBRARY

known_support_libs :=
endif #LOCAL_USE_AAPT2
