#!/bin/sh
set -eu

. .cicd/env
. .cicd/functions.sh

SRC_IMAGE="$HARBOR_REGISTRY/$HARBOR_PROJECT/$HARBOR_REPOSITORY:$APP_VERSION"

DST_REGISTRY='ghcr.io'
DST_REPOSITORY="$APP_NAME-$APP_COMPONENT"
DST_IMAGE="$DST_REGISTRY/$NAMESPACE/$DST_REPOSITORY:$APP_VERSION"

echo Publishing $DST_IMAGE image

retry 2 skopeo copy --dest-creds="$GHCR_CREDS" "docker://$SRC_IMAGE" "docker://$DST_IMAGE"

echo Done
