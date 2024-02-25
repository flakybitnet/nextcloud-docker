#!/bin/sh
set -eu

echo Setting up environment

APP_NAME='nextcloud'
printf 'APP_NAME=%s\n' "$APP_NAME" >> .cicd/env

APP_COMPONENT='server'
printf 'APP_COMPONENT=%s\n' "$APP_COMPONENT" >> .cicd/env

APP_VERSION='27.1.6'
printf 'APP_VERSION=%s\n' "$APP_VERSION" >> .cicd/env

printf 'HARBOR_REGISTRY=%s\n' 'harbor.flakybit.net' >> .cicd/env
printf 'HARBOR_PROJECT=%s\n' "$APP_NAME" >> .cicd/env
printf 'HARBOR_REPOSITORY=%s\n' "$APP_COMPONENT" >> .cicd/env

NAMESPACE='flakybitnet'
printf 'NAMESPACE=%s\n' "$NAMESPACE" >> .cicd/env

cat .cicd/env