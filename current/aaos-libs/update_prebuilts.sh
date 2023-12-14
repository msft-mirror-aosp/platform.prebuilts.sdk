#!/bin/bash
set -eu

if [ -z "${1+x}" ]
then
    echo "build id is required"
    exit 1
fi

cd $(dirname $0)

TARGET=car_apps-user
# See go/fetch_artifact for details on fetch_artifact. To install it use:
# sudo glinux-add-repo android stable && \
# sudo apt update && \
# sudo apt install android-fetch-artifact

CMD="fetch_artifact --bid $1 --target $TARGET --use_oauth2"

echo "Downloading car-apps-common"
$CMD car-apps-common.aar car-apps-common.aar
echo "Downloading car-assist-lib"
$CMD car-assist-lib.aar car-assist-lib.aar
echo "Downloading car-media-common"
$CMD car-media-common.aar car-media-common.aar
echo "Downloading car-messaging-models"
$CMD car-messaging-models.aar car-messaging-models.aar
echo "Downloading car-telephony-common"
$CMD car-telephony-common.aar car-telephony-common.aar
echo "Downloading car-ui-lib"
$CMD car-ui-lib.aar car-ui-lib.aar
echo "Downloading car-ui-lib-oem-apis"
$CMD car-ui-lib-oem-apis-source.jar car-ui-lib-oem-apis.jar
echo "Downloading car-uxr-client-lib"
$CMD car-uxr-client-lib.aar car-uxr-client-lib.aar
echo "Downloading car-ui-lib-testing-support.aar"
$CMD car-ui-lib-testing-support.aar car-ui-lib-testing-support.aar

echo "Done. Don't forget to test and commit the new artifacts."
