#!/bin/sh
set -eu

. .cicd/env

VERSION='27.1.6'
DOCKERFILE='./Dockerfile'

echo Building $IMG_NAME:$VERSION image
executor --context ./ \
    --dockerfile "$DOCKERFILE" \
    --build-arg VERSION=$VERSION \
    --destination "$REGISTRY/$PROJECT/$IMG_NAME:$VERSION" \
    --destination "$REGISTRY/$PROJECT/$IMG_ALT_NAME:$VERSION"

echo Building $IMG_NAME:$VERSION image has been completed
