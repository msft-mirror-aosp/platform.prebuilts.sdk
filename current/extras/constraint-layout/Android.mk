# Automatically generated with:
# pom2mk '-rewrite=^multidex-instrumentation$=android-support-multidex-instrumentation' '-rewrite=^preference-v7$=android-support-v7-preference' '-rewrite=^support-core-utils$=android-support-core-utils' '-rewrite=^support-emoji-appcompat$=android-support-emoji-appcompat' '-rewrite=^cardview-v7$=android-support-v7-cardview' '-rewrite=^support-media-compat$=android-support-media-compat' '-rewrite=^gridlayout-v7$=android-support-v7-gridlayout' '-rewrite=^support-annotations$=android-support-annotations' '-rewrite=^constraint-layout-solver$=android-support-constraint-layout-solver' '-rewrite=^exifinterface$=android-support-exifinterface' '-rewrite=^support-v13$=android-support-v13-nodeps' '-rewrite=^design$=android-support-design' '-rewrite=^support-emoji$=android-support-emoji' '-rewrite=^recommendation$=android-support-recommendation' '-rewrite=^appcompat-v7$=android-support-v7-appcompat-nodeps' '-rewrite=^recyclerview-v7$=android-support-v7-recyclerview' '-rewrite=^support-vector-drawable$=android-support-vectordrawable' '-rewrite=^wear$=android-support-wear' '-rewrite=^animated-vector-drawable$=android-support-animatedvectordrawable' '-rewrite=^support-emoji-bundled$=android-support-emoji-bundled' '-rewrite=^transition$=android-support-transition' '-rewrite=^support-dynamic-animation$=android-support-dynamic-animation' '-rewrite=^support-fragment$=android-support-fragment' '-rewrite=^customtabs$=android-support-customtabs' '-rewrite=^percent$=android-support-percent' '-rewrite=^palette-v7$=android-support-v7-palette' '-rewrite=^support-compat$=android-support-compat' '-rewrite=^multidex$=android-support-multidex' '-rewrite=^preference-v14$=android-support-v14-preference' '-rewrite=^support-core-ui$=android-support-core-ui' '-rewrite=^support-tv-provider$=android-support-tv-provider' '-rewrite=^constraint-layout$=android-support-constraint-layout' '-rewrite=^leanback-v17$=android-support-v17-leanback' '-rewrite=^preference-leanback-v17$=android-support-v17-preference-leanback' '-rewrite=^mediarouter-v7$=android-support-v7-mediarouter' .
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-constraint-layout
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := constraintlayout/constraint-layout-1.1.0-beta1.aar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .aar
LOCAL_USE_AAPT2 := true
LOCAL_STATIC_ANDROID_LIBRARIES := \

include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android-support-constraint-layout-solver
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SRC_FILES := solver/constraint-layout-solver-1.1.0-beta1.jar
LOCAL_BUILT_MODULE_STEM := javalib.jar
LOCAL_MODULE_SUFFIX := .jar
LOCAL_USE_AAPT2 := true
LOCAL_STATIC_ANDROID_LIBRARIES := \

include $(BUILD_PREBUILT)
