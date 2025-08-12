#!/bin/bash
set -e # Exit on error

cp out/prebuilt_cached/artifacts/car_apps_gradle/car-apps-common/outputs/aar/car-apps-common-release.aar prebuilts/sdk/current/aaos-libs/car-apps-common.aar
cp out/prebuilt_cached/artifacts/car_apps_gradle/car-broadcastradio-support/outputs/aar/car-broadcastradio-support-release.aar prebuilts/sdk/current/aaos-libs/car-broadcastradio-support.aar
cp out/prebuilt_cached/artifacts/car_apps_gradle/car-media-extensions/outputs/aar/car-media-extensions-release.aar prebuilts/sdk/current/aaos-libs/car-media-extensions.aar
cp out/prebuilt_cached/artifacts/car_apps_gradle/car-telephony-common/outputs/aar/car-telephony-common-release.aar prebuilts/sdk/current/aaos-libs/car-telephony-common.aar
cp out/prebuilt_cached/artifacts/car_apps_gradle/car-ui-lib/outputs/aar/car-ui-lib-release.aar prebuilts/sdk/current/aaos-libs/car-ui-lib.aar
cp out/prebuilt_cached/artifacts/car_apps_gradle/car-ui-lib/outputs/aar/car-ui-lib-noOverlayable-release.aar prebuilts/sdk/current/aaos-libs/car-ui-lib-no-overlayable.aar
cp out/prebuilt_cached/artifacts/car_apps_gradle/car-ui-lib-testing/outputs/aar/car-ui-lib-testing-release.aar prebuilts/sdk/current/aaos-libs/car-ui-lib-testing-support.aar
cp out/prebuilt_cached/artifacts/car_apps_gradle/oem-token-lib/outputs/aar/oem-token-lib-release.aar prebuilts/sdk/current/aaos-libs/oem-token-lib.aar
cp out/prebuilt_cached/artifacts/car_apps_gradle/token-shared-lib/outputs/apk/token-shared-lib-release.apk prebuilts/sdk/current/aaos-libs/token-shared-lib.apk
cp out/prebuilt_cached/artifacts/car_apps_gradle/car-assist-lib/outputs/aar/car-assist-lib-release.aar prebuilts/sdk/current/aaos-libs/car-assist-lib.aar
cp out/prebuilt_cached/artifacts/car_apps_gradle/car-media-common/outputs/aar/car-media-common-release.aar prebuilts/sdk/current/aaos-libs/car-media-common.aar
cp out/prebuilt_cached/artifacts/car_apps_gradle/car-uxr-client-lib/outputs/aar/car-uxr-client-lib-release.aar prebuilts/sdk/current/aaos-libs/car-uxr-client-lib.aar
cp out/prebuilt_cached/artifacts/car_apps_gradle/car-app-card-lib/outputs/aar/car-app-card-lib-release.aar prebuilts/sdk/current/aaos-libs/car-app-card/car-app-card-lib.aar
cp out/prebuilt_cached/artifacts/car_apps_gradle/car-app-card-host-lib/outputs/aar/car-app-card-host-lib-release.aar prebuilts/sdk/current/aaos-libs/car-app-card-host/car-app-card-host-lib.aar