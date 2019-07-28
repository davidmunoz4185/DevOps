#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=davidmunoz4185/app:1.0.0

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run predictions-app --image="${dockerpath}" 

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
#kubectl expose deployment/predictions-app --type="NodePort" --port 80
kubectl port-forward deployment/predictions-app 8000:80
