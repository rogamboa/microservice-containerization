#!/usr/bin/env bash

## Build application docker image and run it locally

# Build image and add a descriptive tag
docker build  --tag=app ../application

# List docker images
docker image ls

# Run flask app
docker run -p 8000:80 app
