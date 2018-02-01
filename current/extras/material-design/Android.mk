# Automatically generated with:
# pom2mk -static-deps -allow-missing -sdk-version current -type=android-support-annotations=jar '-rewrite=^support-emoji-appcompat$=android-support-emoji-appcompat' '-rewrite=^design-chip$=android-support-design-chip' '-rewrite=^design-drawable$=android-support-design-drawable' '-rewrite=^design-bottomsheet$=android-support-design-bottomsheet' '-rewrite=^exifinterface$=android-support-exifinterface' '-rewrite=^android.arch.lifecycle:runtime$=android-arch-lifecycle-runtime' '-rewrite=^design-animation$=android-support-design-animation' '-rewrite=^design-circularreveal-cardview$=android-support-design-circularreveal-cardview' '-rewrite=^customtabs$=android-support-customtabs' '-rewrite=^design-dialog$=android-support-design-dialog' '-rewrite=^design-bottomnavigation$=android-support-design-bottomnavigation' '-rewrite=^support-v4$=android-support-v4' '-rewrite=^design-theme$=android-support-design-theme' '-rewrite=^support-media-compat$=android-support-media-compat' '-rewrite=^android.arch.persistence.room:migration$=android-arch-room-migration' '-rewrite=^android.arch.lifecycle:extensions$=android-arch-lifecycle-extensions' '-rewrite=^support-tv-provider$=android-support-tv-provider' '-rewrite=^recommendation$=android-support-recommendation' '-rewrite=^android.arch.lifecycle:common-java8$=android-arch-lifecycle-common-java8' '-rewrite=^design-typography$=android-support-design-typography' '-rewrite=^android.arch.lifecycle:common$=android-arch-lifecycle-common' '-rewrite=^leanback-v17$=android-support-v17-leanback' '-rewrite=^android.arch.lifecycle:viewmodel$=android-arch-lifecycle-viewmodel' '-rewrite=^animated-vector-drawable$=android-support-animatedvectordrawable' '-rewrite=^appcompat-v7$=android-support-v7-appcompat' '-rewrite=^support-emoji-bundled$=android-support-emoji-bundled' '-rewrite=^design-ripple$=android-support-design-ripple' '-rewrite=^design-canvas$=android-support-design-canvas' '-rewrite=^design-expandable$=android-support-design-expandable' '-rewrite=^android.arch.lifecycle:livedata$=android-arch-lifecycle-livedata' '-rewrite=^android.arch.core:common$=android-arch-core-common' '-rewrite=^design-internal$=android-support-design-internal' '-rewrite=^gridlayout-v7$=android-support-v7-gridlayout' '-rewrite=^com.google.android:flexbox$=flexbox' '-rewrite=^design$=android-support-design' '-rewrite=^android.arch.core:runtime$=android-arch-core-runtime' '-rewrite=^design-stateful$=android-support-design-stateful' '-rewrite=^design-card$=android-support-design-card' '-rewrite=^support-core-utils$=android-support-core-utils' '-rewrite=^design-math$=android-support-design-math' '-rewrite=^design-floatingactionbutton$=android-support-design-floatingactionbutton' '-rewrite=^recyclerview-v7$=android-support-v7-recyclerview' '-rewrite=^multidex$=android-support-multidex' '-rewrite=^mediarouter-v7$=android-support-v7-mediarouter' '-rewrite=^support-core-ui$=android-support-core-ui' '-rewrite=^design-circularreveal-coordinatorlayout$=android-support-design-circularreveal-coordinatorlayout' '-rewrite=^design-snackbar$=android-support-design-snackbar' '-rewrite=^constraint-layout$=android-support-constraint-layout' '-rewrite=^preference-v14$=android-support-v14-preference' '-rewrite=^palette-v7$=android-support-v7-palette' '-rewrite=^multidex-instrumentation$=android-support-multidex-instrumentation' '-rewrite=^design-color$=android-support-design-color' '-rewrite=^constraint-layout-solver$=android-support-constraint-layout-solver' '-rewrite=^design-button$=android-support-design-button' '-rewrite=^support-vector-drawable$=android-support-vectordrawable' '-rewrite=^design-circularreveal$=android-support-design-circularreveal' '-rewrite=^design-textfield$=android-support-design-textfield' '-rewrite=^android.arch.persistence:db-framework$=android-arch-persistence-db-framework' '-rewrite=^design-resources$=android-support-design-resources' '-rewrite=^design-widget$=android-support-design-widget' '-rewrite=^slices-builders$=android-slices-builders' '-rewrite=^android.arch.persistence.room:testing$=android-arch-room-testing' '-rewrite=^transition$=android-support-transition' '-rewrite=^support-fragment$=android-support-fragment' '-rewrite=^slices-view$=android-slices-view' '-rewrite=^design-transformation$=android-support-design-transformation' '-rewrite=^support-emoji$=android-support-emoji' '-rewrite=^support-dynamic-animation$=android-support-dynamic-animation' '-rewrite=^support-annotations$=android-support-annotations' '-rewrite=^support-compat$=android-support-compat' '-rewrite=^android.arch.lifecycle:livedata-core$=android-arch-lifecycle-livedata-core' '-rewrite=^android.arch.paging:common$=android-arch-paging-common' '-rewrite=^preference-v7$=android-support-v7-preference' '-rewrite=^wear$=android-support-wear' '-rewrite=^percent$=android-support-percent' '-rewrite=^android.arch.persistence:db$=android-arch-persistence-db' '-rewrite=^cardview-v7$=android-support-v7-cardview' '-rewrite=^android.arch.persistence.room:runtime$=android-arch-room-runtime' '-rewrite=^preference-leanback-v17$=android-support-v17-preference-leanback' '-rewrite=^slices-core$=android-slices-core' '-rewrite=^android.arch.persistence.room:common$=android-arch-room-common' '-rewrite=^support-v13$=android-support-v13' '-rewrite=^android.arch.paging:runtime$=android-arch-paging-runtime' .
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-design-nodeps
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := repository/com/android/support/design/27.1.0-SNAPSHOT/design-27.1.0-20180201.191803-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-compat \
  android-support-core-ui \
  android-support-core-utils \
  android-support-fragment \
  android-support-transition \
  android-support-v7-appcompat \
  android-support-v7-recyclerview
include $(BUILD_PREBUILT)
include $(CLEAR_VARS)
LOCAL_MODULE := android-support-design
LOCAL_SDK_VERSION := current
LOCAL_MANIFEST_FILE := manifests/android-support-design/AndroidManifest.xml
LOCAL_STATIC_JAVA_LIBRARIES := \
  android-support-annotations
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-design-nodeps \
  android-support-compat \
  android-support-core-ui \
  android-support-core-utils \
  android-support-fragment \
  android-support-transition \
  android-support-v7-appcompat \
  android-support-v7-recyclerview
LOCAL_JAR_EXCLUDE_FILES := none
LOCAL_JAVA_LANGUAGE_VERSION := 1.7
LOCAL_USE_AAPT2 := true
include $(BUILD_STATIC_JAVA_LIBRARY)

