#!/bin/bash
set -e # Exit on error

echo "ls"
ls .
echo ""

echo "ls ./out"
ls ./out
echo ""

echo "ls ./out/prebuilt_cached"
ls ./out/prebuilt_cached
echo ""

echo "ls ./out/prebuilt_cached/artifacts"
ls ./out/prebuilt_cached/artifacts
echo ""

echo "ls ./out/prebuilt_cached/artifacts/car_apps_gradle"
ls ./out/prebuilt_cached/artifacts/car_apps_gradle
echo ""

cp out/prebuilt_cached/artifacts/car_apps_gradle/car-apps-common.aar prebuilts/sdk/current/aaos-libs/car-apps-common.aar
cp out/prebuilt_cached/artifacts/car_apps_gradle/car-broadcastradio-support.aar prebuilts/sdk/current/aaos-libs/car-broadcastradio-support.aar
cp out/prebuilt_cached/artifacts/car_apps_gradle/car-media-extensions.aar prebuilts/sdk/current/aaos-libs/car-media-extensions.aar
cp out/prebuilt_cached/artifacts/car_apps_gradle/car-telephony-common.aar prebuilts/sdk/current/aaos-libs/car-telephony-common.aar
cp out/prebuilt_cached/artifacts/car_apps_gradle/car-ui-lib.aar prebuilts/sdk/current/aaos-libs/car-ui-lib.aar
cp out/prebuilt_cached/artifacts/car_apps_gradle/car-ui-lib-noOverlayable.aar prebuilts/sdk/current/aaos-libs/car-ui-lib-no-overlayable.aar
cp out/prebuilt_cached/artifacts/car_apps_gradle/oem-token-lib.aar prebuilts/sdk/current/aaos-libs/oem-token-lib.aar
cp out/prebuilt_cached/artifacts/car_apps_gradle/oem-token-shared-lib.apk prebuilts/sdk/current/aaos-libs/token-sharedlibrary.aar
cp out/prebuilt_cached/artifacts/car_apps_gradle/car-assist-lib.aar prebuilts/sdk/current/aaos-libs/car-assist-lib.aar
cp out/prebuilt_cached/artifacts/car_apps_gradle/car-media-common.aar prebuilts/sdk/current/aaos-libs/car-media-common.aar
cp out/prebuilt_cached/artifacts/car_apps_gradle/car-uxr-client-lib.aar prebuilts/sdk/current/aaos-libs/car-uxr-client-lib.aar
cp out/prebuilt_cached/artifacts/car_apps_gradle/car-app-card-lib.aar prebuilts/sdk/current/aaos-libs/car-app-card/car-app-card-lib.aar
cp out/prebuilt_cached/artifacts/car_apps_gradle/car-app-card-host-lib.aar prebuilts/sdk/current/aaos-libs/car-app-card-host/car-app-card-host-lib.aar