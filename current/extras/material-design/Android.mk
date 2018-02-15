# Automatically generated with:
# pom2mk -static-deps -allow-missing -sdk-version current -type=android-support-annotations=jar '-rewrite=^support-emoji-appcompat$=android-support-emoji-appcompat' '-rewrite=^design-chip$=android-support-design-chip' '-rewrite=^design-drawable$=android-support-design-drawable' '-rewrite=^design-bottomsheet$=android-support-design-bottomsheet' '-rewrite=^exifinterface$=android-support-exifinterface' '-rewrite=^android.arch.lifecycle:runtime$=android-arch-lifecycle-runtime' '-rewrite=^design-animation$=android-support-design-animation' '-rewrite=^design-circularreveal-cardview$=android-support-design-circularreveal-cardview' '-rewrite=^customtabs$=android-support-customtabs' '-rewrite=^design-dialog$=android-support-design-dialog' '-rewrite=^design-bottomnavigation$=android-support-design-bottomnavigation' '-rewrite=^support-v4$=android-support-v4' '-rewrite=^design-theme$=android-support-design-theme' '-rewrite=^support-media-compat$=android-support-media-compat' '-rewrite=^android.arch.persistence.room:migration$=android-arch-room-migration' '-rewrite=^android.arch.lifecycle:extensions$=android-arch-lifecycle-extensions' '-rewrite=^support-tv-provider$=android-support-tv-provider' '-rewrite=^recommendation$=android-support-recommendation' '-rewrite=^android.arch.lifecycle:common-java8$=android-arch-lifecycle-common-java8' '-rewrite=^design-typography$=android-support-design-typography' '-rewrite=^android.arch.lifecycle:common$=android-arch-lifecycle-common' '-rewrite=^leanback-v17$=android-support-v17-leanback' '-rewrite=^android.arch.lifecycle:viewmodel$=android-arch-lifecycle-viewmodel' '-rewrite=^animated-vector-drawable$=android-support-animatedvectordrawable' '-rewrite=^appcompat-v7$=android-support-v7-appcompat' '-rewrite=^support-emoji-bundled$=android-support-emoji-bundled' '-rewrite=^design-ripple$=android-support-design-ripple' '-rewrite=^design-canvas$=android-support-design-canvas' '-rewrite=^design-expandable$=android-support-design-expandable' '-rewrite=^android.arch.lifecycle:livedata$=android-arch-lifecycle-livedata' '-rewrite=^android.arch.core:common$=android-arch-core-common' '-rewrite=^design-internal$=android-support-design-internal' '-rewrite=^gridlayout-v7$=android-support-v7-gridlayout' '-rewrite=^com.google.android:flexbox$=flexbox' '-rewrite=^design$=android-support-design' '-rewrite=^android.arch.core:runtime$=android-arch-core-runtime' '-rewrite=^design-stateful$=android-support-design-stateful' '-rewrite=^design-card$=android-support-design-card' '-rewrite=^support-core-utils$=android-support-core-utils' '-rewrite=^design-math$=android-support-design-math' '-rewrite=^design-floatingactionbutton$=android-support-design-floatingactionbutton' '-rewrite=^recyclerview-v7$=android-support-v7-recyclerview' '-rewrite=^multidex$=android-support-multidex' '-rewrite=^mediarouter-v7$=android-support-v7-mediarouter' '-rewrite=^support-core-ui$=android-support-core-ui' '-rewrite=^design-circularreveal-coordinatorlayout$=android-support-design-circularreveal-coordinatorlayout' '-rewrite=^design-snackbar$=android-support-design-snackbar' '-rewrite=^constraint-layout$=android-support-constraint-layout' '-rewrite=^preference-v14$=android-support-v14-preference' '-rewrite=^palette-v7$=android-support-v7-palette' '-rewrite=^multidex-instrumentation$=android-support-multidex-instrumentation' '-rewrite=^design-color$=android-support-design-color' '-rewrite=^constraint-layout-solver$=android-support-constraint-layout-solver' '-rewrite=^design-button$=android-support-design-button' '-rewrite=^support-vector-drawable$=android-support-vectordrawable' '-rewrite=^design-circularreveal$=android-support-design-circularreveal' '-rewrite=^design-textfield$=android-support-design-textfield' '-rewrite=^android.arch.persistence:db-framework$=android-arch-persistence-db-framework' '-rewrite=^design-resources$=android-support-design-resources' '-rewrite=^design-widget$=android-support-design-widget' '-rewrite=^slices-builders$=android-slices-builders' '-rewrite=^android.arch.persistence.room:testing$=android-arch-room-testing' '-rewrite=^transition$=android-support-transition' '-rewrite=^support-fragment$=android-support-fragment' '-rewrite=^slices-view$=android-slices-view' '-rewrite=^design-transformation$=android-support-design-transformation' '-rewrite=^support-emoji$=android-support-emoji' '-rewrite=^support-dynamic-animation$=android-support-dynamic-animation' '-rewrite=^support-annotations$=android-support-annotations' '-rewrite=^support-compat$=android-support-compat' '-rewrite=^android.arch.lifecycle:livedata-core$=android-arch-lifecycle-livedata-core' '-rewrite=^android.arch.paging:common$=android-arch-paging-common' '-rewrite=^preference-v7$=android-support-v7-preference' '-rewrite=^wear$=android-support-wear' '-rewrite=^percent$=android-support-percent' '-rewrite=^android.arch.persistence:db$=android-arch-persistence-db' '-rewrite=^cardview-v7$=android-support-v7-cardview' '-rewrite=^android.arch.persistence.room:runtime$=android-arch-room-runtime' '-rewrite=^preference-leanback-v17$=android-support-v17-preference-leanback' '-rewrite=^slices-core$=android-slices-core' '-rewrite=^android.arch.persistence.room:common$=android-arch-room-common' '-rewrite=^support-v13$=android-support-v13' '-rewrite=^android.arch.paging:runtime$=android-arch-paging-runtime' .
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-design-animation
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := repository/com/android/support/design-animation/27.1.0-SNAPSHOT/design-animation-27.1.0-20180125.224740-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-compat \
  android-support-core-ui
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-design-bottomnavigation
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := repository/com/android/support/design-bottomnavigation/27.1.0-SNAPSHOT/design-bottomnavigation-27.1.0-20180125.224740-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES :=
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-design-bottomsheet
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := repository/com/android/support/design-bottomsheet/27.1.0-SNAPSHOT/design-bottomsheet-27.1.0-20180125.224746-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-v7-appcompat \
  android-support-design-dialog
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-design-button
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := repository/com/android/support/design-button/27.1.0-SNAPSHOT/design-button-27.1.0-20180125.224747-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-core-utils \
  android-support-v7-appcompat \
  android-support-design-internal \
  android-support-design-resources \
  android-support-design-widget
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-design-canvas
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := repository/com/android/support/design-canvas/27.1.0-SNAPSHOT/design-canvas-27.1.0-20180125.224741-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES :=
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-design-card
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := repository/com/android/support/design-card/27.1.0-SNAPSHOT/design-card-27.1.0-20180125.224741-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-core-utils \
  android-support-v7-appcompat \
  android-support-v7-cardview \
  android-support-design-resources \
  android-support-design-internal
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-design-chip
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := repository/com/android/support/design-chip/27.1.0-SNAPSHOT/design-chip-27.1.0-20180125.224741-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-compat \
  android-support-v7-appcompat \
  flexbox \
  android-support-design-animation \
  android-support-design-canvas \
  android-support-design-color \
  android-support-design-drawable \
  android-support-design-internal \
  android-support-design-resources \
  android-support-design-ripple
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-design-circularreveal-cardview
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := repository/com/android/support/design-circularreveal-cardview/27.1.0-SNAPSHOT/design-circularreveal-cardview-27.1.0-20180125.224744-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-v7-cardview \
  android-support-design-circularreveal
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-design-circularreveal-coordinatorlayout
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := repository/com/android/support/design-circularreveal-coordinatorlayout/27.1.0-SNAPSHOT/design-circularreveal-coordinatorlayout-27.1.0-20180125.224751-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-core-ui \
  android-support-design-circularreveal
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-design-circularreveal
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := repository/com/android/support/design-circularreveal/27.1.0-SNAPSHOT/design-circularreveal-27.1.0-20180125.224741-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-design-math
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-design-color
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := repository/com/android/support/design-color/27.1.0-SNAPSHOT/design-color-27.1.0-20180125.224741-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES :=
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-design-dialog
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := repository/com/android/support/design-dialog/27.1.0-SNAPSHOT/design-dialog-27.1.0-20180125.224747-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-v7-appcompat \
  android-support-design-card \
  android-support-design-chip \
  android-support-design-color \
  android-support-design-floatingactionbutton \
  android-support-design-textfield \
  android-support-design-typography
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-design-drawable
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := repository/com/android/support/design-drawable/27.1.0-SNAPSHOT/design-drawable-27.1.0-20180125.224741-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES :=
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-design-expandable
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := repository/com/android/support/design-expandable/27.1.0-SNAPSHOT/design-expandable-27.1.0-20180125.224741-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-core-ui
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-design-floatingactionbutton
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := repository/com/android/support/design-floatingactionbutton/27.1.0-SNAPSHOT/design-floatingactionbutton-27.1.0-20180125.224742-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-v7-appcompat \
  android-support-design-animation \
  android-support-design-color
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-design-internal
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := repository/com/android/support/design-internal/27.1.0-SNAPSHOT/design-internal-27.1.0-20180125.224742-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-transition \
  android-support-v7-appcompat \
  android-support-v7-recyclerview \
  android-support-design-bottomnavigation \
  android-support-design-snackbar
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-design-math
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := repository/com/android/support/design-math/27.1.0-SNAPSHOT/design-math-27.1.0-20180125.224742-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES :=
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-design-resources
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := repository/com/android/support/design-resources/27.1.0-SNAPSHOT/design-resources-27.1.0-20180125.224742-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-compat \
  android-support-v7-appcompat
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-design-ripple
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := repository/com/android/support/design-ripple/27.1.0-SNAPSHOT/design-ripple-27.1.0-20180125.224742-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-core-utils
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-design-snackbar
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := repository/com/android/support/design-snackbar/27.1.0-SNAPSHOT/design-snackbar-27.1.0-20180125.224742-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES :=
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-design-stateful
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := repository/com/android/support/design-stateful/27.1.0-SNAPSHOT/design-stateful-27.1.0-20180125.224743-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-compat \
  android-support-core-ui
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-design-textfield
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := repository/com/android/support/design-textfield/27.1.0-SNAPSHOT/design-textfield-27.1.0-20180125.224742-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-v7-appcompat
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-design-theme
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := repository/com/android/support/design-theme/27.1.0-SNAPSHOT/design-theme-27.1.0-20180125.224747-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-v7-appcompat \
  android-support-design-bottomsheet \
  android-support-design-card \
  android-support-design-chip \
  android-support-design-color \
  android-support-design-dialog \
  android-support-design-floatingactionbutton \
  android-support-design-typography \
  android-support-design-widget
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-design-transformation
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := repository/com/android/support/design-transformation/27.1.0-SNAPSHOT/design-transformation-27.1.0-20180125.224747-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-compat \
  android-support-core-ui \
  android-support-design-animation \
  android-support-design-circularreveal \
  android-support-design-circularreveal-cardview \
  android-support-design-expandable \
  android-support-design-math \
  android-support-design-widget
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-design-typography
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := repository/com/android/support/design-typography/27.1.0-SNAPSHOT/design-typography-27.1.0-20180125.224747-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-v7-appcompat
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-design-widget
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := repository/com/android/support/design-widget/27.1.0-SNAPSHOT/design-widget-27.1.0-20180125.224748-1.aar
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
  android-support-v7-recyclerview \
  android-support-design-animation \
  android-support-design-bottomnavigation \
  android-support-design-circularreveal \
  android-support-design-circularreveal-cardview \
  android-support-design-math \
  android-support-design-resources \
  android-support-design-ripple \
  android-support-design-snackbar \
  android-support-design-stateful \
  android-support-design-bottomsheet \
  android-support-design-color \
  android-support-design-dialog \
  android-support-design-expandable \
  android-support-design-floatingactionbutton \
  android-support-design-internal \
  android-support-design-textfield
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-design
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := repository/com/android/support/design/27.1.0-SNAPSHOT/design-27.1.0-20180125.224749-1.aar
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
  android-support-design-internal
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := flexbox
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := repository/com/google/android/flexbox/0.3.2/flexbox-0.3.2.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_SDK_VERSION := current
LOCAL_STATIC_ANDROID_LIBRARIES :=
include $(BUILD_PREBUILT)
