#!/usr/bin/env bash

# This script tags and uploads an image to Docker Hub

# This is your Docker ID/path
DOCKERPATH=$DOCKERPATH

# Run the Docker Hub container with kubernetes
cat <<EOF | kubectl apply -f -
  apiVersion: v1
  kind: Pod
  metadata:
    name: app
  spec:
    containers:
      - name: app
        image: $DOCKERPATH
        imagePullPolicy: Always
        ports:
        - containerPort: 80
EOF

# List kubernetes pods
kubectl get pods

# Forward the container port to a host
kubectl port-forward app 8000:80
