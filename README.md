# Image for circleci build machine

Installs necessary packages for [circleci](https://circleci.com/docs/2.0/custom-images/#adding-required-and-custom-tools-or-files) along with nodejs 8.x, python and aws-cli

## Getting Started

You must have [docker](https://docs.docker.com/engine/installation/) installed.

## Building image

    docker build .

## Building image for release

    docker build -t chrismillersd/build-node-aws:x.x.x .

## Step into image

    docker run -it <BUILD_HASH> /bin/bash

## Pushing image to docker-hub

    docker login
    ...
    docker push docker push chrismillersd/build-node-aws:x.x.x

