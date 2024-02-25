#!/bin/sh
set -eu

. .cicd/env
DOCKER_CONF_DIR='/kaniko/.docker'

echo Setting up Docker registry authentication

AUTH=$(printf '%s:%s' "$DOCKER_USR" "$DOCKER_PWD" | base64 -w 0)
DOCKER_AUTHS=$(printf '{"auths":{"%s":{"auth":"%s"}}}' "$REGISTRY" "$AUTH")
printf '%s' "$DOCKER_AUTHS" > "$DOCKER_CONF_DIR/config.json"
