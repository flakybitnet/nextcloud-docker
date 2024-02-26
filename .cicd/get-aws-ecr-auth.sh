#!/bin/sh
set -eu

USER='AWS'

echo Obtaining AWS Public ECR credentials

PASSWORD=$(aws ecr-public get-login-password --region us-east-1)
CREDS=$(printf '%s:%s' "$USER" "$PASSWORD")
echo -n "$CREDS" > .cicd/aws-ecr-auth
