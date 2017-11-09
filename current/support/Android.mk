# Automatically generated with:
# pom2mk '-rewrite=^multidex-instrumentation$=android-support-multidex-instrumentation' '-rewrite=^preference-v7$=android-support-v7-preference' '-rewrite=^support-core-utils$=android-support-core-utils' '-rewrite=^support-emoji-appcompat$=android-support-emoji-appcompat' '-rewrite=^cardview-v7$=android-support-v7-cardview' '-rewrite=^support-media-compat$=android-support-media-compat' '-rewrite=^gridlayout-v7$=android-support-v7-gridlayout' '-rewrite=^support-annotations$=android-support-annotations' '-rewrite=^constraint-layout-solver$=android-support-constraint-layout-solver' '-rewrite=^exifinterface$=android-support-exifinterface' '-rewrite=^support-v13$=android-support-v13-nodeps' '-rewrite=^design$=android-support-design' '-rewrite=^support-emoji$=android-support-emoji' '-rewrite=^recommendation$=android-support-recommendation' '-rewrite=^appcompat-v7$=android-support-v7-appcompat-nodeps' '-rewrite=^recyclerview-v7$=android-support-v7-recyclerview' '-rewrite=^support-vector-drawable$=android-support-vectordrawable' '-rewrite=^wear$=android-support-wear' '-rewrite=^animated-vector-drawable$=android-support-animatedvectordrawable' '-rewrite=^support-v4$=android-support-v4-nodeps' '-rewrite=^support-emoji-bundled$=android-support-emoji-bundled' '-rewrite=^transition$=android-support-transition' '-rewrite=^support-dynamic-animation$=android-support-dynamic-animation' '-rewrite=^support-fragment$=android-support-fragment' '-rewrite=^customtabs$=android-support-customtabs' '-rewrite=^percent$=android-support-percent' '-rewrite=^palette-v7$=android-support-v7-palette' '-rewrite=^support-compat$=android-support-compat' '-rewrite=^multidex$=android-support-multidex' '-rewrite=^preference-v14$=android-support-v14-preference' '-rewrite=^support-core-ui$=android-support-core-ui' '-rewrite=^support-tv-provider$=android-support-tv-provider' '-rewrite=^constraint-layout$=android-support-constraint-layout' '-rewrite=^leanback-v17$=android-support-v17-leanback' '-rewrite=^preference-leanback-v17$=android-support-v17-preference-leanback' '-rewrite=^mediarouter-v7$=android-support-v7-mediarouter' .
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-animatedvectordrawable
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/com/android/support/animated-vector-drawable/28.0.0-SNAPSHOT/animated-vector-drawable-28.0.0-20170824.012344-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-vectordrawable \
  android-support-core-ui \

include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-v7-appcompat-nodeps
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/com/android/support/appcompat-v7/28.0.0-SNAPSHOT/appcompat-v7-28.0.0-20170824.012408-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-v4-nodeps \
  android-support-vectordrawable \
  android-support-animatedvectordrawable \

include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-v7-cardview
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/com/android/support/cardview-v7/28.0.0-SNAPSHOT/cardview-v7-28.0.0-20170824.012332-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_STATIC_ANDROID_LIBRARIES := \

include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-customtabs
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/com/android/support/customtabs/28.0.0-SNAPSHOT/customtabs-28.0.0-20170824.012332-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-compat \

include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-design
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/com/android/support/design/28.0.0-SNAPSHOT/design-28.0.0-20170824.012417-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-v4-nodeps \
  android-support-v7-appcompat-nodeps \
  android-support-v7-recyclerview \
  android-support-transition \

include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-exifinterface
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/com/android/support/exifinterface/28.0.0-SNAPSHOT/exifinterface-28.0.0-20170824.012343-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_STATIC_ANDROID_LIBRARIES := \

include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-v7-gridlayout
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/com/android/support/gridlayout-v7/28.0.0-SNAPSHOT/gridlayout-v7-28.0.0-20170824.012344-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-compat \
  android-support-core-ui \

include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-v17-leanback
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/com/android/support/leanback-v17/28.0.0-SNAPSHOT/leanback-v17-28.0.0-20170824.012410-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-compat \
  android-support-core-ui \
  android-support-media-compat \
  android-support-fragment \
  android-support-v7-recyclerview \

include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-v7-mediarouter
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/com/android/support/mediarouter-v7/28.0.0-SNAPSHOT/mediarouter-v7-28.0.0-20170824.012415-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-v7-appcompat-nodeps \
  android-support-v7-palette \

include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-v7-palette
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/com/android/support/palette-v7/28.0.0-SNAPSHOT/palette-v7-28.0.0-20170824.012333-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-compat \
  android-support-core-utils \

include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-percent
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/com/android/support/percent/28.0.0-SNAPSHOT/percent-28.0.0-20170824.012332-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-compat \

include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-v17-preference-leanback
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/com/android/support/preference-leanback-v17/28.0.0-SNAPSHOT/preference-leanback-v17-28.0.0-20170824.012414-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-v4-nodeps \
  android-support-v7-appcompat-nodeps \
  android-support-v7-recyclerview \
  android-support-v7-preference \
  android-support-v14-preference \
  android-support-v17-leanback \

include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-v14-preference
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/com/android/support/preference-v14/28.0.0-SNAPSHOT/preference-v14-28.0.0-20170824.012411-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-v4-nodeps \
  android-support-v7-appcompat-nodeps \
  android-support-v7-recyclerview \
  android-support-v7-preference \

include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-v7-preference
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/com/android/support/preference-v7/28.0.0-SNAPSHOT/preference-v7-28.0.0-20170824.012411-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-v4-nodeps \
  android-support-v7-appcompat-nodeps \
  android-support-v7-recyclerview \

include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-recommendation
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/com/android/support/recommendation/28.0.0-SNAPSHOT/recommendation-28.0.0-20170824.012331-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_STATIC_ANDROID_LIBRARIES := \

include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-v7-recyclerview
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/com/android/support/recyclerview-v7/28.0.0-SNAPSHOT/recyclerview-v7-28.0.0-20170824.012359-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-compat \
  android-support-core-ui \

include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-annotations
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/com/android/support/support-annotations/28.0.0-SNAPSHOT/support-annotations-28.0.0-20170824.012323-1.jar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .jar
LOCAL_USE_AAPT2 := true
LOCAL_STATIC_ANDROID_LIBRARIES := \

include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-compat
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/com/android/support/support-compat/28.0.0-SNAPSHOT/support-compat-28.0.0-20170824.012357-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_STATIC_ANDROID_LIBRARIES := \

include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-core-ui
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/com/android/support/support-core-ui/28.0.0-SNAPSHOT/support-core-ui-28.0.0-20170824.012356-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-compat \
  android-support-core-utils \

include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-core-utils
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/com/android/support/support-core-utils/28.0.0-SNAPSHOT/support-core-utils-28.0.0-20170824.012345-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-compat \

include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-dynamic-animation
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/com/android/support/support-dynamic-animation/28.0.0-SNAPSHOT/support-dynamic-animation-28.0.0-20170824.012333-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-core-utils \

include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-emoji-appcompat
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/com/android/support/support-emoji-appcompat/28.0.0-SNAPSHOT/support-emoji-appcompat-28.0.0-20170824.012409-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-emoji \
  android-support-v7-appcompat-nodeps \

include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-emoji-bundled
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/com/android/support/support-emoji-bundled/28.0.0-SNAPSHOT/support-emoji-bundled-28.0.0-20170824.012348-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-emoji \

include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-emoji
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/com/android/support/support-emoji/28.0.0-SNAPSHOT/support-emoji-28.0.0-20170824.012344-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-compat \

include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-fragment
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/com/android/support/support-fragment/28.0.0-SNAPSHOT/support-fragment-28.0.0-20170824.012353-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-compat \
  android-support-core-ui \
  android-support-core-utils \

include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-media-compat
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/com/android/support/support-media-compat/28.0.0-SNAPSHOT/support-media-compat-28.0.0-20170824.012353-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-compat \

include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-tv-provider
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/com/android/support/support-tv-provider/28.0.0-SNAPSHOT/support-tv-provider-28.0.0-20170824.012343-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-compat \

include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-v13-nodeps
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/com/android/support/support-v13/28.0.0-SNAPSHOT/support-v13-28.0.0-20170824.012348-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-v4-nodeps \

include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-v4-nodeps
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/com/android/support/support-v4/28.0.0-SNAPSHOT/support-v4-28.0.0-20170824.012343-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-compat \
  android-support-media-compat \
  android-support-core-utils \
  android-support-core-ui \
  android-support-fragment \

include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-vectordrawable
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/com/android/support/support-vector-drawable/28.0.0-SNAPSHOT/support-vector-drawable-28.0.0-20170824.012333-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-compat \

include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-transition
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/com/android/support/transition/28.0.0-SNAPSHOT/transition-28.0.0-20170824.012354-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-compat \

include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-wear
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := m2repository/com/android/support/wear/28.0.0-SNAPSHOT/wear-28.0.0-20170824.012353-1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_STATIC_ANDROID_LIBRARIES := \
  android-support-core-ui \
  android-support-percent \
  android-support-v7-recyclerview \

include $(BUILD_PREBUILT)
