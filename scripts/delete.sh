#!/bin/bash

DEPLOYMENT_YAML="./kubernetes/deployment.yaml"

echo "Deleting Kubernetes resources..."
kubectl delete -f $DEPLOYMENT_YAML

echo "Deletion complete."