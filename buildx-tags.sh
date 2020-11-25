#!/bin/bash
set -e

echo "Start BUILDX"

#:amd64
docker buildx build --platform linux/amd64 -f Dockerfile.alpine -t devdotnetorg/alpine-ssh:amd64 . --push
#:aarch64
docker buildx build --platform linux/arm64 -f Dockerfile.alpine -t devdotnetorg/alpine-ssh:aarch64 . --push
#:armhf
docker buildx build --platform linux/arm -f Dockerfile.alpine -t devdotnetorg/alpine-ssh:armhf . --push
#:latest
docker buildx build --platform linux/arm,linux/arm64,linux/amd64 -f Dockerfile.alpine -t devdotnetorg/alpine-ssh:latest . --push

echo "BUILDX END"