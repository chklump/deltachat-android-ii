#!/bin/bash

set -ex

# Reset and clean
git clean -fxd
git submodule update --recursive --init
rm build/ -rf

# Build steps
ndk-build
./gradlew
./gradlew build -x lint

# Show resulting binaries
ls -al build/outputs/apk/*/*

# TODO: For now we clean everything after build, but we
# should take care of the binaries before doing so.
git clean -fxd
