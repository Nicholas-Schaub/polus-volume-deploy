#!/bin/bash

# Initialize the neuroglance submodule if not already done
git submodule init

# Compile neuroglancer minimum build
npm install --prefix ./neuroglancer/
npm run --prefix ./neuroglancer build-min

version=$(<VERSION)
docker build . -t labshare/polus-volume-viewer:${version}