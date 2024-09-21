#!/bin/bash

RESOURCE_GROUP="task9-rg"
AKS_CLUSTER_NAME="task9"

echo "Logging into Azure..."
az login --service-principal -u $AZURE_CLIENT_ID -p $AZURE_CLIENT_SECRET --tenant $AZURE_TENANT_ID

echo "Retrieving AKS credentials..."
az aks get-credentials --resource-group $RESOURCE_GROUP --name $AKS_CLUSTER_NAME

DEPLOYMENT_YAML="./scripts/kubernetes/deployment.yaml"

echo "Deploying applications to Kubernetes..."
kubectl apply -f $DEPLOYMENT_YAML

echo "Deployment complete."
