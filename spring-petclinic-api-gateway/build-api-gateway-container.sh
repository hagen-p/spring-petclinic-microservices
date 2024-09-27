#!/bin/bash
set -x
#mvn clean install -DskipTests=true  # Run Maven build command slkipping tests
docker buildx build --platform=linux/amd64,linux/arm64 \
    --build-arg ARTIFACT_NAME="spring-petclinic-api-gateway-0.0.1" \
    --build-arg DOCKERIZE_VERSION="v0.8.0" \
    -t quay.io/phagen/spring-petclinic-api-gateway:0.1  \
    --no-cache --push . 