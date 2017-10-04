#!/bin/bash

#
# Docker Test Runner using rules defined in goss.yaml
# Must have *dgoss* installed
# @see https://github.com/aelsabbahy/goss/tree/master/extras/dgoss#installation
#

DOCKER_IMAGE_NAME=test-image

docker build -t ${DOCKER_IMAGE_NAME} .
dgoss run -t ${DOCKER_IMAGE_NAME}