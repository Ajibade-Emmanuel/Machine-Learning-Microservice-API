#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath="ajibadeemmanuel/ajibade_flaskapp:v1.0.0"

# Step 2:  
# Authenticate & tag
docker login
docker tag  ajibadeemmanuel/ajibade_flaskapp $dockerpath
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push $dockerpath