#!/bin/bash
set -ex
VERSION=$1

docker build --build-arg VERSION=$VERSION . -t openportio/openport:latest
docker push openportio/openport:latest
