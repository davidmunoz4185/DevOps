#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# This is your Docker ID/path
dockerpath=davidmunoz4185/app:1.0.0

# Run the Docker Hub container with kubernetes
kubectl run predictions-app --image="${dockerpath}" 

# List kubernetes pods (wait until status = 'Running') ..
kubectl get pods

# Forward the container port to a host
kubectl port-forward deployment/predictions-app 8000:80
