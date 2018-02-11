# Automatically generated with:
# pom2mk -static-deps -sdk-version current '-rewrite=^design-resources$=android-support-design-resources' '-rewrite=^design-math$=android-support-design-math' '-rewrite=^support-emoji-bundled$=android-support-emoji-bundled' '-rewrite=^animated-vector-drawable$=android-support-animatedvectordrawable' '-rewrite=^multidex-instrumentation$=android-support-multidex-instrumentation' '-rewrite=^android.arch.lifecycle:reactivestreams$=android-arch-lifecycle-reactivestreams' '-rewrite=^android.arch.core:runtime$=android-arch-core-runtime' '-rewrite=^design-dialog$=android-support-design-dialog' '-rewrite=^android.arch.paging:common$=android-arch-paging-common' '-rewrite=^android.arch.lifecycle:extensions$=android-arch-lifecycle-extensions' '-rewrite=^support-annotations$=android-support-annotations' '-rewrite=^design-stateful$=android-support-design-stateful' '-rewrite=^design-animation$=android-support-design-animation' '-rewrite=^slices-view$=android-slices-view' '-rewrite=^design-button$=android-support-design-button' '-rewrite=^support-fragment$=android-support-fragment' '-rewrite=^support-emoji-appcompat$=android-support-emoji-appcompat' '-rewrite=^leanback-v17$=android-support-v17-leanback' '-rewrite=^design-textfield$=android-support-design-textfield' '-rewrite=^support-v4$=android-support-v4' '-rewrite=^android.arch.persistence.room:common$=android-arch-room-common' '-rewrite=^design-card$=android-support-design-card' '-rewrite=^support-core-ui$=android-support-core-ui' '-rewrite=^customtabs$=android-support-customtabs' '-rewrite=^android.arch.lifecycle:livedata$=android-arch-lifecycle-livedata' '-rewrite=^palette-v7$=android-support-v7-palette' '-rewrite=^multidex$=android-support-multidex' '-rewrite=^support-media-compat$=android-support-media-compat' '-rewrite=^exifinterface$=android-support-exifinterface' '-rewrite=^design-drawable$=android-support-design-drawable' '-rewrite=^design-internal$=android-support-design-internal' '-rewrite=^design-canvas$=android-support-design-canvas' '-rewrite=^slices-builders$=android-slices-builders' '-rewrite=^design-chip$=android-support-design-chip' '-rewrite=^constraint-layout$=android-support-constraint-layout' '-rewrite=^constraint-layout-solver$=android-support-constraint-layout-solver' '-rewrite=^support-v13$=android-support-v13' '-rewrite=^mediarouter-v7$=android-support-v7-mediarouter' '-rewrite=^android.arch.lifecycle:viewmodel$=android-arch-lifecycle-viewmodel' '-rewrite=^design-expandable$=android-support-design-expandable' '-rewrite=^support-vector-drawable$=android-support-vectordrawable' '-rewrite=^android.arch.persistence.room:runtime$=android-arch-room-runtime' '-rewrite=^design-widget$=android-support-design-widget' '-rewrite=^design-snackbar$=android-support-design-snackbar' '-rewrite=^recyclerview-v7$=android-support-v7-recyclerview' '-rewrite=^transition$=android-support-transition' '-rewrite=^support-compat$=android-support-compat' '-rewrite=^cardview-v7$=android-support-v7-cardview' '-rewrite=^design-theme$=android-support-design-theme' '-rewrite=^design-circularreveal-coordinatorlayout$=android-support-design-circularreveal-coordinatorlayout' '-rewrite=^gridlayout-v7$=android-support-v7-gridlayout' '-rewrite=^android.arch.persistence.room:testing$=android-arch-room-testing' '-rewrite=^preference-v7$=android-support-v7-preference' '-rewrite=^android.arch.lifecycle:common-java8$=android-arch-lifecycle-common-java8' '-rewrite=^preference-leanback-v17$=android-support-v17-preference-leanback' '-rewrite=^support-core-utils$=android-support-core-utils' '-rewrite=^design$=android-support-design' '-rewrite=^preference-v14$=android-support-v14-preference' '-rewrite=^wear$=android-support-wear' '-rewrite=^design-typography$=android-support-design-typography' '-rewrite=^android.arch.core:testing$=android-arch-core-testing' '-rewrite=^android.arch.lifecycle:common$=android-arch-lifecycle-common' '-rewrite=^percent$=android-support-percent' '-rewrite=^design-bottomnavigation$=android-support-design-bottomnavigation' '-rewrite=^design-circularreveal$=android-support-design-circularreveal' '-rewrite=^android.arch.persistence.room:rxjava2$=android-arch-room-rxjava2' '-rewrite=^design-floatingactionbutton$=android-support-design-floatingactionbutton' '-rewrite=^android.arch.persistence.room:compiler$=android-arch-room-compiler' '-rewrite=^slices-core$=android-slices-core' '-rewrite=^design-ripple$=android-support-design-ripple' '-rewrite=^recommendation$=android-support-recommendation' '-rewrite=^support-dynamic-animation$=android-support-dynamic-animation' '-rewrite=^design-transformation$=android-support-design-transformation' '-rewrite=^design-color$=android-support-design-color' '-rewrite=^support-emoji$=android-support-emoji' '-rewrite=^design-bottomsheet$=android-support-design-bottomsheet' '-rewrite=^android.arch.lifecycle:livedata-core$=android-arch-lifecycle-livedata-core' '-rewrite=^android.arch.core:common$=android-arch-core-common' '-rewrite=^support-tv-provider$=android-support-tv-provider' '-rewrite=^android.arch.paging:runtime$=android-arch-paging-runtime' '-rewrite=^android.arch.persistence:db-framework$=android-arch-persistence-db-framework' '-rewrite=^android.arch.lifecycle:runtime$=android-arch-lifecycle-runtime' '-rewrite=^com.google.android:flexbox$=flexbox' '-rewrite=^design-circularreveal-cardview$=android-support-design-circularreveal-cardview' '-rewrite=^android.arch.persistence.room:migration$=android-arch-room-migration' '-rewrite=^appcompat-v7$=android-support-v7-appcompat' '-rewrite=^android.arch.lifecycle:compiler$=android-arch-lifecycle-compiler' '-rewrite=^android.arch.persistence:db$=android-arch-persistence-db' .
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
LOCAL_MODULE := android-arch-lifecycle-compiler-nodeps
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/android/arch/lifecycle/compiler/1.1.0/compiler-1.1.0.jar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .jar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES :=
include $(BUILD_PREBUILT)
include $(CLEAR_VARS)
LOCAL_MODULE := android-arch-lifecycle-compiler
LOCAL_SDK_VERSION := current
LOCAL_STATIC_JAVA_LIBRARIES := \
  android-arch-lifecycle-compiler-nodeps \
  android-arch-lifecycle-common
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
LOCAL_MODULE := android-arch-lifecycle-reactivestreams-nodeps
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/android/arch/lifecycle/reactivestreams/1.1.0/reactivestreams-1.1.0.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-arch-lifecycle-livedata \
  android-arch-lifecycle-runtime
include $(BUILD_PREBUILT)
include $(CLEAR_VARS)
LOCAL_MODULE := android-arch-lifecycle-reactivestreams
LOCAL_SDK_VERSION := current
LOCAL_MANIFEST_FILE := manifests/android-arch-lifecycle-reactivestreams/AndroidManifest.xml
LOCAL_STATIC_JAVA_LIBRARIES := \
  android-arch-core-common \
  android-arch-lifecycle-common
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-arch-lifecycle-reactivestreams-nodeps  \
  android-arch-lifecycle-livedata  \
  android-arch-lifecycle-runtime
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
  android-arch-lifecycle-livedata
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
  android-arch-lifecycle-livedata
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
LOCAL_MODULE := android-arch-room-compiler-nodeps
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/android/arch/persistence/room/compiler/1.1.0-alpha1/compiler-1.1.0-alpha1.jar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .jar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES :=
include $(BUILD_PREBUILT)
include $(CLEAR_VARS)
LOCAL_MODULE := android-arch-room-compiler
LOCAL_SDK_VERSION := current
LOCAL_STATIC_JAVA_LIBRARIES := \
  android-arch-room-compiler-nodeps \
  android-arch-room-common \
  android-arch-room-migration \
  android-arch-paging-common
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
LOCAL_MODULE := android-arch-room-rxjava2-nodeps
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/android/arch/persistence/room/rxjava2/1.1.0-alpha1/rxjava2-1.1.0-alpha1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-arch-room-runtime \
  android-arch-core-runtime
include $(BUILD_PREBUILT)
include $(CLEAR_VARS)
LOCAL_MODULE := android-arch-room-rxjava2
LOCAL_SDK_VERSION := current
LOCAL_MANIFEST_FILE := manifests/android-arch-room-rxjava2/AndroidManifest.xml
LOCAL_STATIC_JAVA_LIBRARIES := \
  android-arch-room-common
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-arch-room-rxjava2-nodeps  \
  android-arch-room-runtime  \
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
