#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="ajibadeemmanuel/ajibade_flaskapp:v1.0.0"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run ajibade-ml-micro-api --image=ajibadeemmanuel/ajibade_flaskapp:v1.0.0 --port=80


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
echo "waiting for 60 seconds before foarwarding container to host.."
sleep 60
kubectl port-forward ajibade-ml-micro-api 8000:80