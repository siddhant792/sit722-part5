#!/bin/bash

DEPLOYMENT_YAML="./kubernetes/deployment.yaml"

echo "Deploying applications to Kubernetes..."
kubectl apply -f $DEPLOYMENT_YAML

echo "Deployment complete."
