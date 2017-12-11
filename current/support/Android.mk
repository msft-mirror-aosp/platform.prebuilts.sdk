# Automatically generated with:
# pom2mk -transitive -sdk-version current '-rewrite=^android.arch.core:common$=android-arch-core-common' '-rewrite=^support-emoji-bundled$=android-support-emoji-bundled' '-rewrite=^multidex-instrumentation$=android-support-multidex-instrumentation' '-rewrite=^android.arch.core:runtime$=android-arch-core-runtime' '-rewrite=^mediarouter-v7$=android-support-v7-mediarouter' '-rewrite=^appcompat-v7$=android-support-v7-appcompat' '-rewrite=^support-compat$=android-support-compat' '-rewrite=^support-annotations$=android-support-annotations' '-rewrite=^transition$=android-support-transition' '-rewrite=^support-media-compat$=android-support-media-compat' '-rewrite=^preference-v7$=android-support-v7-preference' '-rewrite=^constraint-layout$=android-support-constraint-layout' '-rewrite=^support-core-ui$=android-support-core-ui' '-rewrite=^percent$=android-support-percent' '-rewrite=^constraint-layout-solver$=android-support-constraint-layout-solver' '-rewrite=^support-tv-provider$=android-support-tv-provider' '-rewrite=^support-emoji$=android-support-emoji' '-rewrite=^exifinterface$=android-support-exifinterface' '-rewrite=^gridlayout-v7$=android-support-v7-gridlayout' '-rewrite=^android.arch.lifecycle:common$=android-arch-lifecycle-common' '-rewrite=^support-vector-drawable$=android-support-vectordrawable' '-rewrite=^cardview-v7$=android-support-v7-cardview' '-rewrite=^support-fragment$=android-support-fragment' '-rewrite=^support-core-utils$=android-support-core-utils' '-rewrite=^palette-v7$=android-support-v7-palette' '-rewrite=^animated-vector-drawable$=android-support-animatedvectordrawable' '-rewrite=^support-v13$=android-support-v13' '-rewrite=^support-emoji-appcompat$=android-support-emoji-appcompat' '-rewrite=^support-v4$=android-support-v4' '-rewrite=^preference-leanback-v17$=android-support-v17-preference-leanback' '-rewrite=^preference-v14$=android-support-v14-preference' '-rewrite=^recommendation$=android-support-recommendation' '-rewrite=^design$=android-support-design' '-rewrite=^android.arch.lifecycle:runtime$=android-arch-lifecycle-runtime' '-rewrite=^multidex$=android-support-multidex' '-rewrite=^leanback-v17$=android-support-v17-leanback' '-rewrite=^support-dynamic-animation$=android-support-dynamic-animation' '-rewrite=^wear$=android-support-wear' '-rewrite=^recyclerview-v7$=android-support-v7-recyclerview' '-rewrite=^customtabs$=android-support-customtabs' .
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-animatedvectordrawable-nodeps
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/com/android/support/animated-vector-drawable/28.0.0-SNAPSHOT/animated-vector-drawable-28.0.0-20171209.194032-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-vectordrawable \
  android-support-core-ui
include $(BUILD_PREBUILT)
include $(CLEAR_VARS)
LOCAL_MODULE := android-support-animatedvectordrawable
LOCAL_SDK_VERSION := current
LOCAL_MANIFEST_FILE := manifests/android-support-animatedvectordrawable/AndroidManifest.xml
LOCAL_STATIC_JAVA_LIBRARIES :=
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-animatedvectordrawable-nodeps  \
  android-support-vectordrawable  \
  android-support-core-ui
LOCAL_JAR_EXCLUDE_FILES := none
LOCAL_JAVA_LANGUAGE_VERSION := 1.7
LOCAL_USE_AAPT2 := true
include $(BUILD_STATIC_JAVA_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-v7-appcompat-nodeps
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/com/android/support/appcompat-v7/28.0.0-SNAPSHOT/appcompat-v7-28.0.0-20171209.194047-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-core-utils \
  android-support-fragment \
  android-support-vectordrawable \
  android-support-animatedvectordrawable
include $(BUILD_PREBUILT)
include $(CLEAR_VARS)
LOCAL_MODULE := android-support-v7-appcompat
LOCAL_SDK_VERSION := current
LOCAL_MANIFEST_FILE := manifests/android-support-v7-appcompat/AndroidManifest.xml
LOCAL_STATIC_JAVA_LIBRARIES := \
  android-support-annotations
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-v7-appcompat-nodeps  \
  android-support-core-utils  \
  android-support-fragment  \
  android-support-vectordrawable  \
  android-support-animatedvectordrawable
LOCAL_JAR_EXCLUDE_FILES := none
LOCAL_JAVA_LANGUAGE_VERSION := 1.7
LOCAL_USE_AAPT2 := true
include $(BUILD_STATIC_JAVA_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-v7-cardview-nodeps
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/com/android/support/cardview-v7/28.0.0-SNAPSHOT/cardview-v7-28.0.0-20171209.194013-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES :=
include $(BUILD_PREBUILT)
include $(CLEAR_VARS)
LOCAL_MODULE := android-support-v7-cardview
LOCAL_SDK_VERSION := current
LOCAL_MANIFEST_FILE := manifests/android-support-v7-cardview/AndroidManifest.xml
LOCAL_STATIC_JAVA_LIBRARIES := \
  android-support-annotations
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-v7-cardview-nodeps
LOCAL_JAR_EXCLUDE_FILES := none
LOCAL_JAVA_LANGUAGE_VERSION := 1.7
LOCAL_USE_AAPT2 := true
include $(BUILD_STATIC_JAVA_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-customtabs-nodeps
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/com/android/support/customtabs/28.0.0-SNAPSHOT/customtabs-28.0.0-20171209.194023-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-compat
include $(BUILD_PREBUILT)
include $(CLEAR_VARS)
LOCAL_MODULE := android-support-customtabs
LOCAL_SDK_VERSION := current
LOCAL_MANIFEST_FILE := manifests/android-support-customtabs/AndroidManifest.xml
LOCAL_STATIC_JAVA_LIBRARIES := \
  android-support-annotations
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-customtabs-nodeps  \
  android-support-compat
LOCAL_JAR_EXCLUDE_FILES := none
LOCAL_JAVA_LANGUAGE_VERSION := 1.7
LOCAL_USE_AAPT2 := true
include $(BUILD_STATIC_JAVA_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-design-nodeps
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/com/android/support/design/28.0.0-SNAPSHOT/design-28.0.0-20171209.194106-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-v4 \
  android-support-v7-appcompat \
  android-support-v7-recyclerview \
  android-support-transition
include $(BUILD_PREBUILT)
include $(CLEAR_VARS)
LOCAL_MODULE := android-support-design
LOCAL_SDK_VERSION := current
LOCAL_MANIFEST_FILE := manifests/android-support-design/AndroidManifest.xml
LOCAL_STATIC_JAVA_LIBRARIES :=
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-design-nodeps  \
  android-support-v4  \
  android-support-v7-appcompat  \
  android-support-v7-recyclerview  \
  android-support-transition
LOCAL_JAR_EXCLUDE_FILES := none
LOCAL_JAVA_LANGUAGE_VERSION := 1.7
LOCAL_USE_AAPT2 := true
include $(BUILD_STATIC_JAVA_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-exifinterface-nodeps
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/com/android/support/exifinterface/28.0.0-SNAPSHOT/exifinterface-28.0.0-20171209.194014-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES :=
include $(BUILD_PREBUILT)
include $(CLEAR_VARS)
LOCAL_MODULE := android-support-exifinterface
LOCAL_SDK_VERSION := current
LOCAL_MANIFEST_FILE := manifests/android-support-exifinterface/AndroidManifest.xml
LOCAL_STATIC_JAVA_LIBRARIES := \
  android-support-annotations
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-exifinterface-nodeps
LOCAL_JAR_EXCLUDE_FILES := none
LOCAL_JAVA_LANGUAGE_VERSION := 1.7
LOCAL_USE_AAPT2 := true
include $(BUILD_STATIC_JAVA_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-v7-gridlayout-nodeps
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/com/android/support/gridlayout-v7/28.0.0-SNAPSHOT/gridlayout-v7-28.0.0-20171209.194032-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-compat \
  android-support-core-ui
include $(BUILD_PREBUILT)
include $(CLEAR_VARS)
LOCAL_MODULE := android-support-v7-gridlayout
LOCAL_SDK_VERSION := current
LOCAL_MANIFEST_FILE := manifests/android-support-v7-gridlayout/AndroidManifest.xml
LOCAL_STATIC_JAVA_LIBRARIES :=
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-v7-gridlayout-nodeps  \
  android-support-compat  \
  android-support-core-ui
LOCAL_JAR_EXCLUDE_FILES := none
LOCAL_JAVA_LANGUAGE_VERSION := 1.7
LOCAL_USE_AAPT2 := true
include $(BUILD_STATIC_JAVA_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-v17-leanback-nodeps
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/com/android/support/leanback-v17/28.0.0-SNAPSHOT/leanback-v17-28.0.0-20171209.194047-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-compat \
  android-support-core-ui \
  android-support-media-compat \
  android-support-fragment \
  android-support-v7-recyclerview
include $(BUILD_PREBUILT)
include $(CLEAR_VARS)
LOCAL_MODULE := android-support-v17-leanback
LOCAL_SDK_VERSION := current
LOCAL_MANIFEST_FILE := manifests/android-support-v17-leanback/AndroidManifest.xml
LOCAL_STATIC_JAVA_LIBRARIES :=
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-v17-leanback-nodeps  \
  android-support-compat  \
  android-support-core-ui  \
  android-support-media-compat  \
  android-support-fragment  \
  android-support-v7-recyclerview
LOCAL_JAR_EXCLUDE_FILES := none
LOCAL_JAVA_LANGUAGE_VERSION := 1.7
LOCAL_USE_AAPT2 := true
include $(BUILD_STATIC_JAVA_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-v7-mediarouter-nodeps
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/com/android/support/mediarouter-v7/28.0.0-SNAPSHOT/mediarouter-v7-28.0.0-20171209.194103-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-media-compat \
  android-support-v7-appcompat \
  android-support-v7-palette
include $(BUILD_PREBUILT)
include $(CLEAR_VARS)
LOCAL_MODULE := android-support-v7-mediarouter
LOCAL_SDK_VERSION := current
LOCAL_MANIFEST_FILE := manifests/android-support-v7-mediarouter/AndroidManifest.xml
LOCAL_STATIC_JAVA_LIBRARIES :=
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-v7-mediarouter-nodeps  \
  android-support-media-compat  \
  android-support-v7-appcompat  \
  android-support-v7-palette
LOCAL_JAR_EXCLUDE_FILES := none
LOCAL_JAVA_LANGUAGE_VERSION := 1.7
LOCAL_USE_AAPT2 := true
include $(BUILD_STATIC_JAVA_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-v7-palette-nodeps
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/com/android/support/palette-v7/28.0.0-SNAPSHOT/palette-v7-28.0.0-20171209.194030-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-compat \
  android-support-core-utils
include $(BUILD_PREBUILT)
include $(CLEAR_VARS)
LOCAL_MODULE := android-support-v7-palette
LOCAL_SDK_VERSION := current
LOCAL_MANIFEST_FILE := manifests/android-support-v7-palette/AndroidManifest.xml
LOCAL_STATIC_JAVA_LIBRARIES :=
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-v7-palette-nodeps  \
  android-support-compat  \
  android-support-core-utils
LOCAL_JAR_EXCLUDE_FILES := none
LOCAL_JAVA_LANGUAGE_VERSION := 1.7
LOCAL_USE_AAPT2 := true
include $(BUILD_STATIC_JAVA_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-percent-nodeps
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/com/android/support/percent/28.0.0-SNAPSHOT/percent-28.0.0-20171209.194021-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-compat
include $(BUILD_PREBUILT)
include $(CLEAR_VARS)
LOCAL_MODULE := android-support-percent
LOCAL_SDK_VERSION := current
LOCAL_MANIFEST_FILE := manifests/android-support-percent/AndroidManifest.xml
LOCAL_STATIC_JAVA_LIBRARIES :=
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-percent-nodeps  \
  android-support-compat
LOCAL_JAR_EXCLUDE_FILES := none
LOCAL_JAVA_LANGUAGE_VERSION := 1.7
LOCAL_USE_AAPT2 := true
include $(BUILD_STATIC_JAVA_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-v17-preference-leanback-nodeps
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/com/android/support/preference-leanback-v17/28.0.0-SNAPSHOT/preference-leanback-v17-28.0.0-20171209.194107-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-v4 \
  android-support-v7-appcompat \
  android-support-v7-recyclerview \
  android-support-v7-preference \
  android-support-v14-preference \
  android-support-v17-leanback
include $(BUILD_PREBUILT)
include $(CLEAR_VARS)
LOCAL_MODULE := android-support-v17-preference-leanback
LOCAL_SDK_VERSION := current
LOCAL_MANIFEST_FILE := manifests/android-support-v17-preference-leanback/AndroidManifest.xml
LOCAL_STATIC_JAVA_LIBRARIES :=
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-v17-preference-leanback-nodeps  \
  android-support-v4  \
  android-support-v7-appcompat  \
  android-support-v7-recyclerview  \
  android-support-v7-preference  \
  android-support-v14-preference  \
  android-support-v17-leanback
LOCAL_JAR_EXCLUDE_FILES := none
LOCAL_JAVA_LANGUAGE_VERSION := 1.7
LOCAL_USE_AAPT2 := true
include $(BUILD_STATIC_JAVA_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-v14-preference-nodeps
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/com/android/support/preference-v14/28.0.0-SNAPSHOT/preference-v14-28.0.0-20171209.194107-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-v4 \
  android-support-v7-appcompat \
  android-support-v7-recyclerview \
  android-support-v7-preference
include $(BUILD_PREBUILT)
include $(CLEAR_VARS)
LOCAL_MODULE := android-support-v14-preference
LOCAL_SDK_VERSION := current
LOCAL_MANIFEST_FILE := manifests/android-support-v14-preference/AndroidManifest.xml
LOCAL_STATIC_JAVA_LIBRARIES :=
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-v14-preference-nodeps  \
  android-support-v4  \
  android-support-v7-appcompat  \
  android-support-v7-recyclerview  \
  android-support-v7-preference
LOCAL_JAR_EXCLUDE_FILES := none
LOCAL_JAVA_LANGUAGE_VERSION := 1.7
LOCAL_USE_AAPT2 := true
include $(BUILD_STATIC_JAVA_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-v7-preference-nodeps
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/com/android/support/preference-v7/28.0.0-SNAPSHOT/preference-v7-28.0.0-20171209.194107-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-v4 \
  android-support-v7-appcompat \
  android-support-v7-recyclerview
include $(BUILD_PREBUILT)
include $(CLEAR_VARS)
LOCAL_MODULE := android-support-v7-preference
LOCAL_SDK_VERSION := current
LOCAL_MANIFEST_FILE := manifests/android-support-v7-preference/AndroidManifest.xml
LOCAL_STATIC_JAVA_LIBRARIES :=
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-v7-preference-nodeps  \
  android-support-v4  \
  android-support-v7-appcompat  \
  android-support-v7-recyclerview
LOCAL_JAR_EXCLUDE_FILES := none
LOCAL_JAVA_LANGUAGE_VERSION := 1.7
LOCAL_USE_AAPT2 := true
include $(BUILD_STATIC_JAVA_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-recommendation-nodeps
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/com/android/support/recommendation/28.0.0-SNAPSHOT/recommendation-28.0.0-20171209.194012-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES :=
include $(BUILD_PREBUILT)
include $(CLEAR_VARS)
LOCAL_MODULE := android-support-recommendation
LOCAL_SDK_VERSION := current
LOCAL_MANIFEST_FILE := manifests/android-support-recommendation/AndroidManifest.xml
LOCAL_STATIC_JAVA_LIBRARIES := \
  android-support-annotations
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-recommendation-nodeps
LOCAL_JAR_EXCLUDE_FILES := none
LOCAL_JAVA_LANGUAGE_VERSION := 1.7
LOCAL_USE_AAPT2 := true
include $(BUILD_STATIC_JAVA_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-v7-recyclerview-nodeps
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/com/android/support/recyclerview-v7/28.0.0-SNAPSHOT/recyclerview-v7-28.0.0-20171209.194035-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-compat \
  android-support-core-ui
include $(BUILD_PREBUILT)
include $(CLEAR_VARS)
LOCAL_MODULE := android-support-v7-recyclerview
LOCAL_SDK_VERSION := current
LOCAL_MANIFEST_FILE := manifests/android-support-v7-recyclerview/AndroidManifest.xml
LOCAL_STATIC_JAVA_LIBRARIES := \
  android-support-annotations
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-v7-recyclerview-nodeps  \
  android-support-compat  \
  android-support-core-ui
LOCAL_JAR_EXCLUDE_FILES := none
LOCAL_JAVA_LANGUAGE_VERSION := 1.7
LOCAL_USE_AAPT2 := true
include $(BUILD_STATIC_JAVA_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-annotations-nodeps
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/com/android/support/support-annotations/28.0.0-SNAPSHOT/support-annotations-28.0.0-20171209.194001-1.jar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .jar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES :=
include $(BUILD_PREBUILT)
include $(CLEAR_VARS)
LOCAL_MODULE := android-support-annotations
LOCAL_SDK_VERSION := current
LOCAL_STATIC_JAVA_LIBRARIES := \
  android-support-annotations-nodeps
LOCAL_STATIC_ANDROID_LIBRARIES :=
LOCAL_JAR_EXCLUDE_FILES := none
LOCAL_JAVA_LANGUAGE_VERSION := 1.7
LOCAL_USE_AAPT2 := true
include $(BUILD_STATIC_JAVA_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-compat-nodeps
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/com/android/support/support-compat/28.0.0-SNAPSHOT/support-compat-28.0.0-20171209.194033-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-arch-lifecycle-runtime
include $(BUILD_PREBUILT)
include $(CLEAR_VARS)
LOCAL_MODULE := android-support-compat
LOCAL_SDK_VERSION := current
LOCAL_MANIFEST_FILE := manifests/android-support-compat/AndroidManifest.xml
LOCAL_STATIC_JAVA_LIBRARIES := \
  android-support-annotations
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-compat-nodeps  \
  android-arch-lifecycle-runtime
LOCAL_JAR_EXCLUDE_FILES := none
LOCAL_JAVA_LANGUAGE_VERSION := 1.7
LOCAL_USE_AAPT2 := true
include $(BUILD_STATIC_JAVA_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-core-ui-nodeps
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/com/android/support/support-core-ui/28.0.0-SNAPSHOT/support-core-ui-28.0.0-20171209.194037-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-compat \
  android-support-core-utils
include $(BUILD_PREBUILT)
include $(CLEAR_VARS)
LOCAL_MODULE := android-support-core-ui
LOCAL_SDK_VERSION := current
LOCAL_MANIFEST_FILE := manifests/android-support-core-ui/AndroidManifest.xml
LOCAL_STATIC_JAVA_LIBRARIES := \
  android-support-annotations
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-core-ui-nodeps  \
  android-support-compat  \
  android-support-core-utils
LOCAL_JAR_EXCLUDE_FILES := none
LOCAL_JAVA_LANGUAGE_VERSION := 1.7
LOCAL_USE_AAPT2 := true
include $(BUILD_STATIC_JAVA_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-core-utils-nodeps
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/com/android/support/support-core-utils/28.0.0-SNAPSHOT/support-core-utils-28.0.0-20171209.194034-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-compat
include $(BUILD_PREBUILT)
include $(CLEAR_VARS)
LOCAL_MODULE := android-support-core-utils
LOCAL_SDK_VERSION := current
LOCAL_MANIFEST_FILE := manifests/android-support-core-utils/AndroidManifest.xml
LOCAL_STATIC_JAVA_LIBRARIES := \
  android-support-annotations
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-core-utils-nodeps  \
  android-support-compat
LOCAL_JAR_EXCLUDE_FILES := none
LOCAL_JAVA_LANGUAGE_VERSION := 1.7
LOCAL_USE_AAPT2 := true
include $(BUILD_STATIC_JAVA_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-dynamic-animation-nodeps
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/com/android/support/support-dynamic-animation/28.0.0-SNAPSHOT/support-dynamic-animation-28.0.0-20171209.194029-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-core-utils
include $(BUILD_PREBUILT)
include $(CLEAR_VARS)
LOCAL_MODULE := android-support-dynamic-animation
LOCAL_SDK_VERSION := current
LOCAL_MANIFEST_FILE := manifests/android-support-dynamic-animation/AndroidManifest.xml
LOCAL_STATIC_JAVA_LIBRARIES :=
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-dynamic-animation-nodeps  \
  android-support-core-utils
LOCAL_JAR_EXCLUDE_FILES := none
LOCAL_JAVA_LANGUAGE_VERSION := 1.7
LOCAL_USE_AAPT2 := true
include $(BUILD_STATIC_JAVA_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-emoji-appcompat-nodeps
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/com/android/support/support-emoji-appcompat/28.0.0-SNAPSHOT/support-emoji-appcompat-28.0.0-20171209.194056-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-emoji \
  android-support-v7-appcompat
include $(BUILD_PREBUILT)
include $(CLEAR_VARS)
LOCAL_MODULE := android-support-emoji-appcompat
LOCAL_SDK_VERSION := current
LOCAL_MANIFEST_FILE := manifests/android-support-emoji-appcompat/AndroidManifest.xml
LOCAL_STATIC_JAVA_LIBRARIES :=
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-emoji-appcompat-nodeps  \
  android-support-emoji  \
  android-support-v7-appcompat
LOCAL_JAR_EXCLUDE_FILES := none
LOCAL_JAVA_LANGUAGE_VERSION := 1.7
LOCAL_USE_AAPT2 := true
include $(BUILD_STATIC_JAVA_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-emoji-bundled-nodeps
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/com/android/support/support-emoji-bundled/28.0.0-SNAPSHOT/support-emoji-bundled-28.0.0-20171209.194036-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-emoji
include $(BUILD_PREBUILT)
include $(CLEAR_VARS)
LOCAL_MODULE := android-support-emoji-bundled
LOCAL_SDK_VERSION := current
LOCAL_MANIFEST_FILE := manifests/android-support-emoji-bundled/AndroidManifest.xml
LOCAL_STATIC_JAVA_LIBRARIES :=
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-emoji-bundled-nodeps  \
  android-support-emoji
LOCAL_JAR_EXCLUDE_FILES := none
LOCAL_JAVA_LANGUAGE_VERSION := 1.7
LOCAL_USE_AAPT2 := true
include $(BUILD_STATIC_JAVA_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-emoji-nodeps
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/com/android/support/support-emoji/28.0.0-SNAPSHOT/support-emoji-28.0.0-20171209.194033-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-compat
include $(BUILD_PREBUILT)
include $(CLEAR_VARS)
LOCAL_MODULE := android-support-emoji
LOCAL_SDK_VERSION := current
LOCAL_MANIFEST_FILE := manifests/android-support-emoji/AndroidManifest.xml
LOCAL_STATIC_JAVA_LIBRARIES :=
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-emoji-nodeps  \
  android-support-compat
LOCAL_JAR_EXCLUDE_FILES := none
LOCAL_JAVA_LANGUAGE_VERSION := 1.7
LOCAL_USE_AAPT2 := true
include $(BUILD_STATIC_JAVA_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-fragment-nodeps
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/com/android/support/support-fragment/28.0.0-SNAPSHOT/support-fragment-28.0.0-20171209.194034-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-compat \
  android-support-core-ui \
  android-support-core-utils
include $(BUILD_PREBUILT)
include $(CLEAR_VARS)
LOCAL_MODULE := android-support-fragment
LOCAL_SDK_VERSION := current
LOCAL_MANIFEST_FILE := manifests/android-support-fragment/AndroidManifest.xml
LOCAL_STATIC_JAVA_LIBRARIES := \
  android-support-annotations
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-fragment-nodeps  \
  android-support-compat  \
  android-support-core-ui  \
  android-support-core-utils
LOCAL_JAR_EXCLUDE_FILES := none
LOCAL_JAVA_LANGUAGE_VERSION := 1.7
LOCAL_USE_AAPT2 := true
include $(BUILD_STATIC_JAVA_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-media-compat-nodeps
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/com/android/support/support-media-compat/28.0.0-SNAPSHOT/support-media-compat-28.0.0-20171209.194028-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-compat
include $(BUILD_PREBUILT)
include $(CLEAR_VARS)
LOCAL_MODULE := android-support-media-compat
LOCAL_SDK_VERSION := current
LOCAL_MANIFEST_FILE := manifests/android-support-media-compat/AndroidManifest.xml
LOCAL_STATIC_JAVA_LIBRARIES := \
  android-support-annotations
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-media-compat-nodeps  \
  android-support-compat
LOCAL_JAR_EXCLUDE_FILES := none
LOCAL_JAVA_LANGUAGE_VERSION := 1.7
LOCAL_USE_AAPT2 := true
include $(BUILD_STATIC_JAVA_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-tv-provider-nodeps
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/com/android/support/support-tv-provider/28.0.0-SNAPSHOT/support-tv-provider-28.0.0-20171209.194023-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-compat
include $(BUILD_PREBUILT)
include $(CLEAR_VARS)
LOCAL_MODULE := android-support-tv-provider
LOCAL_SDK_VERSION := current
LOCAL_MANIFEST_FILE := manifests/android-support-tv-provider/AndroidManifest.xml
LOCAL_STATIC_JAVA_LIBRARIES := \
  android-support-annotations
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-tv-provider-nodeps  \
  android-support-compat
LOCAL_JAR_EXCLUDE_FILES := none
LOCAL_JAVA_LANGUAGE_VERSION := 1.7
LOCAL_USE_AAPT2 := true
include $(BUILD_STATIC_JAVA_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-v13-nodeps
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/com/android/support/support-v13/28.0.0-SNAPSHOT/support-v13-28.0.0-20171209.194028-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-v4
include $(BUILD_PREBUILT)
include $(CLEAR_VARS)
LOCAL_MODULE := android-support-v13
LOCAL_SDK_VERSION := current
LOCAL_MANIFEST_FILE := manifests/android-support-v13/AndroidManifest.xml
LOCAL_STATIC_JAVA_LIBRARIES := \
  android-support-annotations
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-v13-nodeps  \
  android-support-v4
LOCAL_JAR_EXCLUDE_FILES := none
LOCAL_JAVA_LANGUAGE_VERSION := 1.7
LOCAL_USE_AAPT2 := true
include $(BUILD_STATIC_JAVA_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-v4-nodeps
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/com/android/support/support-v4/28.0.0-SNAPSHOT/support-v4-28.0.0-20171209.194028-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-compat \
  android-support-media-compat \
  android-support-core-utils \
  android-support-core-ui \
  android-support-fragment
include $(BUILD_PREBUILT)
include $(CLEAR_VARS)
LOCAL_MODULE := android-support-v4
LOCAL_SDK_VERSION := current
LOCAL_MANIFEST_FILE := manifests/android-support-v4/AndroidManifest.xml
LOCAL_STATIC_JAVA_LIBRARIES :=
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-v4-nodeps  \
  android-support-compat  \
  android-support-media-compat  \
  android-support-core-utils  \
  android-support-core-ui  \
  android-support-fragment
LOCAL_JAR_EXCLUDE_FILES := none
LOCAL_JAVA_LANGUAGE_VERSION := 1.7
LOCAL_USE_AAPT2 := true
include $(BUILD_STATIC_JAVA_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-vectordrawable-nodeps
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/com/android/support/support-vector-drawable/28.0.0-SNAPSHOT/support-vector-drawable-28.0.0-20171209.194026-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-compat
include $(BUILD_PREBUILT)
include $(CLEAR_VARS)
LOCAL_MODULE := android-support-vectordrawable
LOCAL_SDK_VERSION := current
LOCAL_MANIFEST_FILE := manifests/android-support-vectordrawable/AndroidManifest.xml
LOCAL_STATIC_JAVA_LIBRARIES := \
  android-support-annotations
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-vectordrawable-nodeps  \
  android-support-compat
LOCAL_JAR_EXCLUDE_FILES := none
LOCAL_JAVA_LANGUAGE_VERSION := 1.7
LOCAL_USE_AAPT2 := true
include $(BUILD_STATIC_JAVA_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-transition-nodeps
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/com/android/support/transition/28.0.0-SNAPSHOT/transition-28.0.0-20171209.194032-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-compat
include $(BUILD_PREBUILT)
include $(CLEAR_VARS)
LOCAL_MODULE := android-support-transition
LOCAL_SDK_VERSION := current
LOCAL_MANIFEST_FILE := manifests/android-support-transition/AndroidManifest.xml
LOCAL_STATIC_JAVA_LIBRARIES := \
  android-support-annotations
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-transition-nodeps  \
  android-support-compat
LOCAL_JAR_EXCLUDE_FILES := none
LOCAL_JAVA_LANGUAGE_VERSION := 1.7
LOCAL_USE_AAPT2 := true
include $(BUILD_STATIC_JAVA_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-wear-nodeps
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/com/android/support/wear/28.0.0-SNAPSHOT/wear-28.0.0-20171209.194036-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-core-ui \
  android-support-fragment \
  android-support-percent \
  android-support-v7-recyclerview
include $(BUILD_PREBUILT)
include $(CLEAR_VARS)
LOCAL_MODULE := android-support-wear
LOCAL_SDK_VERSION := current
LOCAL_MANIFEST_FILE := manifests/android-support-wear/AndroidManifest.xml
LOCAL_STATIC_JAVA_LIBRARIES := \
  android-support-annotations
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-wear-nodeps  \
  android-support-core-ui  \
  android-support-fragment  \
  android-support-percent  \
  android-support-v7-recyclerview
LOCAL_JAR_EXCLUDE_FILES := none
LOCAL_JAVA_LANGUAGE_VERSION := 1.7
LOCAL_USE_AAPT2 := true
include $(BUILD_STATIC_JAVA_LIBRARY)
