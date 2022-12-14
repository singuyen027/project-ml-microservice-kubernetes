#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="singuyen027/nguyenproject:v1.0.0"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run nguyenproject --image=singuyen027/nguyenproject:v1.0.0 --port=8080

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward nguyenproject 8080:80