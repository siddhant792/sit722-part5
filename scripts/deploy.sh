#!/bin/bash

RESOURCE_GROUP="task9-rg"
AKS_CLUSTER_NAME="task9"

echo "Retrieving AKS credentials..."
az aks get-credentials --resource-group $RESOURCE_GROUP --name $AKS_CLUSTER_NAME

DEPLOYMENT_YAML="./scripts/kubernetes/deployment.yaml"

echo "Deploying applications to Kubernetes..."
kubectl apply -f $DEPLOYMENT_YAML

echo "Deployment complete."
