#!/bin/bash
set -eu

if [ -z "${1+x}" ]
then
    echo "build id is required"
    exit 1
fi

cd $(dirname $0)

TARGET=CarApps
# See go/fetch_artifact for details on this script.
FETCH_ARTIFACT="/google/data/ro/projects/android/fetch_artifact"
CMD="$FETCH_ARTIFACT --bid $1 --target $TARGET"

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
echo "Downloading car-uxr-client-lib"
$CMD car-uxr-client-lib.aar car-uxr-client-lib.aar

echo "Done. Don't forget to test and commit the new artifacts."
