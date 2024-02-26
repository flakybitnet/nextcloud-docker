#!/bin/sh
set -eu

. .cicd/env

SRC_IMAGE="$HARBOR_REGISTRY/$HARBOR_PROJECT/$HARBOR_REPOSITORY:$APP_VERSION"

DST_REGISTRY='public.ecr.aws'
DST_REPOSITORY="$APP_NAME/$APP_COMPONENT"
DST_IMAGE="$DST_REGISTRY/$NAMESPACE/$DST_REPOSITORY:$APP_VERSION"

echo Publishing $DST_IMAGE image

skopeo copy --dest-creds="$ECR_CREDS" "docker://$SRC_IMAGE" "docker://$DST_IMAGE"

echo Publishing $DST_IMAGE image has been completed
