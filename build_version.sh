#!/bin/bash
set -ex

VERSION=$1

docker build --build-arg VERSION=$VERSION . -t openportio/openport:${VERSION}
docker push openportio/openport:${VERSION}

./build_version.sh $VERSION
