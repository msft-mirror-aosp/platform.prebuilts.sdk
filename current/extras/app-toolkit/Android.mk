# Automatically generated with:
# pom2mk -transitive -sdk-version current '-rewrite=^android.arch.core:common$=android-arch-core-common' '-rewrite=^support-emoji-bundled$=android-support-emoji-bundled' '-rewrite=^multidex-instrumentation$=android-support-multidex-instrumentation' '-rewrite=^android.arch.core:runtime$=android-arch-core-runtime' '-rewrite=^mediarouter-v7$=android-support-v7-mediarouter' '-rewrite=^appcompat-v7$=android-support-v7-appcompat' '-rewrite=^support-compat$=android-support-compat' '-rewrite=^support-annotations$=android-support-annotations' '-rewrite=^transition$=android-support-transition' '-rewrite=^support-media-compat$=android-support-media-compat' '-rewrite=^preference-v7$=android-support-v7-preference' '-rewrite=^constraint-layout$=android-support-constraint-layout' '-rewrite=^support-core-ui$=android-support-core-ui' '-rewrite=^percent$=android-support-percent' '-rewrite=^constraint-layout-solver$=android-support-constraint-layout-solver' '-rewrite=^support-tv-provider$=android-support-tv-provider' '-rewrite=^support-emoji$=android-support-emoji' '-rewrite=^exifinterface$=android-support-exifinterface' '-rewrite=^gridlayout-v7$=android-support-v7-gridlayout' '-rewrite=^android.arch.lifecycle:common$=android-arch-lifecycle-common' '-rewrite=^support-vector-drawable$=android-support-vectordrawable' '-rewrite=^cardview-v7$=android-support-v7-cardview' '-rewrite=^support-fragment$=android-support-fragment' '-rewrite=^support-core-utils$=android-support-core-utils' '-rewrite=^palette-v7$=android-support-v7-palette' '-rewrite=^animated-vector-drawable$=android-support-animatedvectordrawable' '-rewrite=^support-v13$=android-support-v13' '-rewrite=^support-emoji-appcompat$=android-support-emoji-appcompat' '-rewrite=^support-v4$=android-support-v4' '-rewrite=^preference-leanback-v17$=android-support-v17-preference-leanback' '-rewrite=^preference-v14$=android-support-v14-preference' '-rewrite=^recommendation$=android-support-recommendation' '-rewrite=^design$=android-support-design' '-rewrite=^android.arch.lifecycle:runtime$=android-arch-lifecycle-runtime' '-rewrite=^multidex$=android-support-multidex' '-rewrite=^leanback-v17$=android-support-v17-leanback' '-rewrite=^support-dynamic-animation$=android-support-dynamic-animation' '-rewrite=^wear$=android-support-wear' '-rewrite=^recyclerview-v7$=android-support-v7-recyclerview' '-rewrite=^customtabs$=android-support-customtabs' .
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := android-arch-core-common-nodeps
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/android/arch/core/common/1.0.0/common-1.0.0.jar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .jar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES :=
include $(BUILD_PREBUILT)
include $(CLEAR_VARS)
LOCAL_MODULE := android-arch-core-common
LOCAL_SDK_VERSION := current
LOCAL_STATIC_JAVA_LIBRARIES := \
  android-arch-core-common-nodeps
LOCAL_STATIC_ANDROID_LIBRARIES :=
LOCAL_JAR_EXCLUDE_FILES := none
LOCAL_JAVA_LANGUAGE_VERSION := 1.7
LOCAL_USE_AAPT2 := true
include $(BUILD_STATIC_JAVA_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := android-arch-core-runtime-nodeps
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/android/arch/core/runtime/1.0.0/runtime-1.0.0.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES :=
include $(BUILD_PREBUILT)
include $(CLEAR_VARS)
LOCAL_MODULE := android-arch-core-runtime
LOCAL_SDK_VERSION := current
LOCAL_MANIFEST_FILE := manifests/android-arch-core-runtime/AndroidManifest.xml
LOCAL_STATIC_JAVA_LIBRARIES := \
  android-arch-core-common
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-arch-core-runtime-nodeps
LOCAL_JAR_EXCLUDE_FILES := none
LOCAL_JAVA_LANGUAGE_VERSION := 1.7
LOCAL_USE_AAPT2 := true
include $(BUILD_STATIC_JAVA_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := android-arch-lifecycle-common-nodeps
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/android/arch/lifecycle/common/1.0.3/common-1.0.3.jar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .jar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES :=
include $(BUILD_PREBUILT)
include $(CLEAR_VARS)
LOCAL_MODULE := android-arch-lifecycle-common
LOCAL_SDK_VERSION := current
LOCAL_STATIC_JAVA_LIBRARIES := \
  android-arch-lifecycle-common-nodeps
LOCAL_STATIC_ANDROID_LIBRARIES :=
LOCAL_JAR_EXCLUDE_FILES := none
LOCAL_JAVA_LANGUAGE_VERSION := 1.7
LOCAL_USE_AAPT2 := true
include $(BUILD_STATIC_JAVA_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := android-arch-lifecycle-runtime-nodeps
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/android/arch/lifecycle/runtime/1.0.3/runtime-1.0.3.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES :=
include $(BUILD_PREBUILT)
include $(CLEAR_VARS)
LOCAL_MODULE := android-arch-lifecycle-runtime
LOCAL_SDK_VERSION := current
LOCAL_MANIFEST_FILE := manifests/android-arch-lifecycle-runtime/AndroidManifest.xml
LOCAL_STATIC_JAVA_LIBRARIES := \
  android-arch-lifecycle-common \
  android-arch-core-common
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-arch-lifecycle-runtime-nodeps
LOCAL_JAR_EXCLUDE_FILES := none
LOCAL_JAVA_LANGUAGE_VERSION := 1.7
LOCAL_USE_AAPT2 := true
include $(BUILD_STATIC_JAVA_LIBRARY)
