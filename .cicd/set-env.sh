#!/bin/sh
set -eu

echo Setting up environment

APP_NAME='nextcloud'
printf 'APP_NAME=%s\n' "$APP_NAME" >> .cicd/env
printf 'REGISTRY=%s\n' 'harbor.flakybit.net' >> .cicd/env
printf 'PROJECT=%s\n' "$APP_NAME" >> .cicd/env
printf 'IMG_NAME=%s\n' 'server' >> .cicd/env

cat .cicd/env