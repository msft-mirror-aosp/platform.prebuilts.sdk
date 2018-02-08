# Automatically generated with:
# pom2mk -static-deps -sdk-version current '-rewrite=^support-media-compat$=android-support-media-compat' '-rewrite=^exifinterface$=android-support-exifinterface' '-rewrite=^android.arch.lifecycle:runtime$=android-arch-lifecycle-runtime' '-rewrite=^android.arch.lifecycle:extensions$=android-arch-lifecycle-extensions' '-rewrite=^customtabs$=android-support-customtabs' '-rewrite=^support-v4$=android-support-v4' '-rewrite=^android.arch.persistence:db-framework$=android-arch-persistence-db-framework' '-rewrite=^gridlayout-v7$=android-support-v7-gridlayout' '-rewrite=^support-tv-provider$=android-support-tv-provider' '-rewrite=^support-core-ui$=android-support-core-ui' '-rewrite=^multidex-instrumentation$=android-support-multidex-instrumentation' '-rewrite=^recyclerview-v7$=android-support-v7-recyclerview' '-rewrite=^leanback-v17$=android-support-v17-leanback' '-rewrite=^android.arch.paging:runtime$=android-arch-paging-runtime' '-rewrite=^multidex$=android-support-multidex' '-rewrite=^constraint-layout-solver$=android-support-constraint-layout-solver' '-rewrite=^support-v13$=android-support-v13' '-rewrite=^mediarouter-v7$=android-support-v7-mediarouter' '-rewrite=^palette-v7$=android-support-v7-palette' '-rewrite=^android.arch.core:common$=android-arch-core-common' '-rewrite=^slices-builders$=android-slices-builders' '-rewrite=^slices-view$=android-slices-view' '-rewrite=^constraint-layout$=android-support-constraint-layout' '-rewrite=^android.arch.lifecycle:viewmodel$=android-arch-lifecycle-viewmodel' '-rewrite=^preference-v14$=android-support-v14-preference' '-rewrite=^transition$=android-support-transition' '-rewrite=^android.arch.lifecycle:livedata-core$=android-arch-lifecycle-livedata-core' '-rewrite=^android.arch.persistence.room:runtime$=android-arch-room-runtime' '-rewrite=^support-emoji$=android-support-emoji' '-rewrite=^support-core-utils$=android-support-core-utils' '-rewrite=^recommendation$=android-support-recommendation' '-rewrite=^support-emoji-bundled$=android-support-emoji-bundled' '-rewrite=^support-annotations$=android-support-annotations' '-rewrite=^android.arch.lifecycle:livedata$=android-arch-lifecycle-livedata' '-rewrite=^android.arch.lifecycle:common-java8$=android-arch-lifecycle-common-java8' '-rewrite=^android.arch.paging:common$=android-arch-paging-common' '-rewrite=^slices-core$=android-slices-core' '-rewrite=^android.arch.lifecycle:common$=android-arch-lifecycle-common' '-rewrite=^animated-vector-drawable$=android-support-animatedvectordrawable' '-rewrite=^support-compat$=android-support-compat' '-rewrite=^percent$=android-support-percent' '-rewrite=^android.arch.persistence.room:migration$=android-arch-room-migration' '-rewrite=^android.arch.persistence:db$=android-arch-persistence-db' '-rewrite=^cardview-v7$=android-support-v7-cardview' '-rewrite=^android.arch.core:runtime$=android-arch-core-runtime' '-rewrite=^wear$=android-support-wear' '-rewrite=^android.arch.persistence.room:testing$=android-arch-room-testing' '-rewrite=^appcompat-v7$=android-support-v7-appcompat' '-rewrite=^android.arch.persistence.room:common$=android-arch-room-common' '-rewrite=^support-emoji-appcompat$=android-support-emoji-appcompat' '-rewrite=^support-dynamic-animation$=android-support-dynamic-animation' '-rewrite=^support-vector-drawable$=android-support-vectordrawable' '-rewrite=^preference-leanback-v17$=android-support-v17-preference-leanback' '-rewrite=^preference-v7$=android-support-v7-preference' '-rewrite=^support-fragment$=android-support-fragment' .
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := android-arch-core-common-nodeps
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/android/arch/core/common/1.1.0/common-1.1.0.jar
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
LOCAL_SRC_FILES := m2repository/android/arch/core/runtime/1.1.0/runtime-1.1.0.aar
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
LOCAL_MODULE := android-arch-lifecycle-common-java8-nodeps
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/android/arch/lifecycle/common-java8/1.1.0/common-java8-1.1.0.jar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .jar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES :=
include $(BUILD_PREBUILT)
include $(CLEAR_VARS)
LOCAL_MODULE := android-arch-lifecycle-common-java8
LOCAL_SDK_VERSION := current
LOCAL_STATIC_JAVA_LIBRARIES := \
  android-arch-lifecycle-common-java8-nodeps \
  android-arch-lifecycle-common
LOCAL_STATIC_ANDROID_LIBRARIES :=
LOCAL_JAR_EXCLUDE_FILES := none
LOCAL_JAVA_LANGUAGE_VERSION := 1.7
LOCAL_USE_AAPT2 := true
include $(BUILD_STATIC_JAVA_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := android-arch-lifecycle-common-nodeps
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/android/arch/lifecycle/common/1.1.0/common-1.1.0.jar
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
LOCAL_MODULE := android-arch-lifecycle-extensions-nodeps
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/android/arch/lifecycle/extensions/1.1.0/extensions-1.1.0.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-arch-lifecycle-runtime \
  android-arch-core-runtime \
  android-arch-lifecycle-livedata \
  android-arch-lifecycle-viewmodel
include $(BUILD_PREBUILT)
include $(CLEAR_VARS)
LOCAL_MODULE := android-arch-lifecycle-extensions
LOCAL_SDK_VERSION := current
LOCAL_MANIFEST_FILE := manifests/android-arch-lifecycle-extensions/AndroidManifest.xml
LOCAL_STATIC_JAVA_LIBRARIES := \
  android-arch-core-common \
  android-arch-lifecycle-common
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-arch-lifecycle-extensions-nodeps  \
  android-arch-lifecycle-runtime  \
  android-arch-core-runtime  \
  android-arch-lifecycle-livedata  \
  android-arch-lifecycle-viewmodel
LOCAL_JAR_EXCLUDE_FILES := none
LOCAL_JAVA_LANGUAGE_VERSION := 1.7
LOCAL_USE_AAPT2 := true
include $(BUILD_STATIC_JAVA_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := android-arch-lifecycle-livedata-core-nodeps
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/android/arch/lifecycle/livedata-core/1.1.0/livedata-core-1.1.0.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-arch-core-runtime
include $(BUILD_PREBUILT)
include $(CLEAR_VARS)
LOCAL_MODULE := android-arch-lifecycle-livedata-core
LOCAL_SDK_VERSION := current
LOCAL_MANIFEST_FILE := manifests/android-arch-lifecycle-livedata-core/AndroidManifest.xml
LOCAL_STATIC_JAVA_LIBRARIES := \
  android-arch-lifecycle-common \
  android-arch-core-common
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-arch-lifecycle-livedata-core-nodeps  \
  android-arch-core-runtime
LOCAL_JAR_EXCLUDE_FILES := none
LOCAL_JAVA_LANGUAGE_VERSION := 1.7
LOCAL_USE_AAPT2 := true
include $(BUILD_STATIC_JAVA_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := android-arch-lifecycle-livedata-nodeps
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/android/arch/lifecycle/livedata/1.1.0/livedata-1.1.0.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-arch-core-runtime \
  android-arch-lifecycle-livedata-core
include $(BUILD_PREBUILT)
include $(CLEAR_VARS)
LOCAL_MODULE := android-arch-lifecycle-livedata
LOCAL_SDK_VERSION := current
LOCAL_MANIFEST_FILE := manifests/android-arch-lifecycle-livedata/AndroidManifest.xml
LOCAL_STATIC_JAVA_LIBRARIES := \
  android-arch-core-common
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-arch-lifecycle-livedata-nodeps  \
  android-arch-core-runtime  \
  android-arch-lifecycle-livedata-core
LOCAL_JAR_EXCLUDE_FILES := none
LOCAL_JAVA_LANGUAGE_VERSION := 1.7
LOCAL_USE_AAPT2 := true
include $(BUILD_STATIC_JAVA_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := android-arch-lifecycle-runtime-nodeps
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/android/arch/lifecycle/runtime/1.1.0/runtime-1.1.0.aar
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

include $(CLEAR_VARS)
LOCAL_MODULE := android-arch-lifecycle-viewmodel-nodeps
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/android/arch/lifecycle/viewmodel/1.1.0/viewmodel-1.1.0.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES :=
include $(BUILD_PREBUILT)
include $(CLEAR_VARS)
LOCAL_MODULE := android-arch-lifecycle-viewmodel
LOCAL_SDK_VERSION := current
LOCAL_MANIFEST_FILE := manifests/android-arch-lifecycle-viewmodel/AndroidManifest.xml
LOCAL_STATIC_JAVA_LIBRARIES :=
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-arch-lifecycle-viewmodel-nodeps
LOCAL_JAR_EXCLUDE_FILES := none
LOCAL_JAVA_LANGUAGE_VERSION := 1.7
LOCAL_USE_AAPT2 := true
include $(BUILD_STATIC_JAVA_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := android-arch-paging-common-nodeps
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/android/arch/paging/common/1.0.0-alpha5/common-1.0.0-alpha5.jar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .jar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES :=
include $(BUILD_PREBUILT)
include $(CLEAR_VARS)
LOCAL_MODULE := android-arch-paging-common
LOCAL_SDK_VERSION := current
LOCAL_STATIC_JAVA_LIBRARIES := \
  android-arch-paging-common-nodeps \
  android-arch-core-common
LOCAL_STATIC_ANDROID_LIBRARIES :=
LOCAL_JAR_EXCLUDE_FILES := none
LOCAL_JAVA_LANGUAGE_VERSION := 1.7
LOCAL_USE_AAPT2 := true
include $(BUILD_STATIC_JAVA_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := android-arch-paging-runtime-nodeps
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/android/arch/paging/runtime/1.0.0-alpha5/runtime-1.0.0-alpha5.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-arch-core-runtime \
  android-arch-lifecycle-runtime \
  android-arch-lifecycle-extensions
include $(BUILD_PREBUILT)
include $(CLEAR_VARS)
LOCAL_MODULE := android-arch-paging-runtime
LOCAL_SDK_VERSION := current
LOCAL_MANIFEST_FILE := manifests/android-arch-paging-runtime/AndroidManifest.xml
LOCAL_STATIC_JAVA_LIBRARIES := \
  android-arch-paging-common
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-arch-paging-runtime-nodeps  \
  android-arch-core-runtime  \
  android-arch-lifecycle-runtime  \
  android-arch-lifecycle-extensions
LOCAL_JAR_EXCLUDE_FILES := none
LOCAL_JAVA_LANGUAGE_VERSION := 1.7
LOCAL_USE_AAPT2 := true
include $(BUILD_STATIC_JAVA_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := android-arch-persistence-db-framework-nodeps
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/android/arch/persistence/db-framework/1.1.0-alpha1/db-framework-1.1.0-alpha1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-arch-persistence-db
include $(BUILD_PREBUILT)
include $(CLEAR_VARS)
LOCAL_MODULE := android-arch-persistence-db-framework
LOCAL_SDK_VERSION := current
LOCAL_MANIFEST_FILE := manifests/android-arch-persistence-db-framework/AndroidManifest.xml
LOCAL_STATIC_JAVA_LIBRARIES :=
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-arch-persistence-db-framework-nodeps  \
  android-arch-persistence-db
LOCAL_JAR_EXCLUDE_FILES := none
LOCAL_JAVA_LANGUAGE_VERSION := 1.7
LOCAL_USE_AAPT2 := true
include $(BUILD_STATIC_JAVA_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := android-arch-persistence-db-nodeps
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/android/arch/persistence/db/1.1.0-alpha1/db-1.1.0-alpha1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES :=
include $(BUILD_PREBUILT)
include $(CLEAR_VARS)
LOCAL_MODULE := android-arch-persistence-db
LOCAL_SDK_VERSION := current
LOCAL_MANIFEST_FILE := manifests/android-arch-persistence-db/AndroidManifest.xml
LOCAL_STATIC_JAVA_LIBRARIES :=
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-arch-persistence-db-nodeps
LOCAL_JAR_EXCLUDE_FILES := none
LOCAL_JAVA_LANGUAGE_VERSION := 1.7
LOCAL_USE_AAPT2 := true
include $(BUILD_STATIC_JAVA_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := android-arch-room-common-nodeps
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/android/arch/persistence/room/common/1.1.0-alpha1/common-1.1.0-alpha1.jar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .jar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES :=
include $(BUILD_PREBUILT)
include $(CLEAR_VARS)
LOCAL_MODULE := android-arch-room-common
LOCAL_SDK_VERSION := current
LOCAL_STATIC_JAVA_LIBRARIES := \
  android-arch-room-common-nodeps
LOCAL_STATIC_ANDROID_LIBRARIES :=
LOCAL_JAR_EXCLUDE_FILES := none
LOCAL_JAVA_LANGUAGE_VERSION := 1.7
LOCAL_USE_AAPT2 := true
include $(BUILD_STATIC_JAVA_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := android-arch-room-migration-nodeps
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/android/arch/persistence/room/migration/1.1.0-alpha1/migration-1.1.0-alpha1.jar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .jar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES :=
include $(BUILD_PREBUILT)
include $(CLEAR_VARS)
LOCAL_MODULE := android-arch-room-migration
LOCAL_SDK_VERSION := current
LOCAL_STATIC_JAVA_LIBRARIES := \
  android-arch-room-migration-nodeps \
  android-arch-room-common
LOCAL_STATIC_ANDROID_LIBRARIES :=
LOCAL_JAR_EXCLUDE_FILES := none
LOCAL_JAVA_LANGUAGE_VERSION := 1.7
LOCAL_USE_AAPT2 := true
include $(BUILD_STATIC_JAVA_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := android-arch-room-runtime-nodeps
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/android/arch/persistence/room/runtime/1.1.0-alpha1/runtime-1.1.0-alpha1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-arch-persistence-db-framework \
  android-arch-persistence-db \
  android-arch-core-runtime
include $(BUILD_PREBUILT)
include $(CLEAR_VARS)
LOCAL_MODULE := android-arch-room-runtime
LOCAL_SDK_VERSION := current
LOCAL_MANIFEST_FILE := manifests/android-arch-room-runtime/AndroidManifest.xml
LOCAL_STATIC_JAVA_LIBRARIES := \
  android-arch-room-common
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-arch-room-runtime-nodeps  \
  android-arch-persistence-db-framework  \
  android-arch-persistence-db  \
  android-arch-core-runtime
LOCAL_JAR_EXCLUDE_FILES := none
LOCAL_JAVA_LANGUAGE_VERSION := 1.7
LOCAL_USE_AAPT2 := true
include $(BUILD_STATIC_JAVA_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := android-arch-room-testing-nodeps
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/android/arch/persistence/room/testing/1.1.0-alpha1/testing-1.1.0-alpha1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-arch-room-runtime \
  android-arch-persistence-db \
  android-arch-persistence-db-framework \
  android-arch-core-runtime
include $(BUILD_PREBUILT)
include $(CLEAR_VARS)
LOCAL_MODULE := android-arch-room-testing
LOCAL_SDK_VERSION := current
LOCAL_MANIFEST_FILE := manifests/android-arch-room-testing/AndroidManifest.xml
LOCAL_STATIC_JAVA_LIBRARIES := \
  android-arch-room-common \
  android-arch-room-migration
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-arch-room-testing-nodeps  \
  android-arch-room-runtime  \
  android-arch-persistence-db  \
  android-arch-persistence-db-framework  \
  android-arch-core-runtime
LOCAL_JAR_EXCLUDE_FILES := none
LOCAL_JAVA_LANGUAGE_VERSION := 1.7
LOCAL_USE_AAPT2 := true
include $(BUILD_STATIC_JAVA_LIBRARY)
