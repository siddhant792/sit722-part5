#!/bin/bash

RESOURCE_GROUP="task9-rg"
AKS_CLUSTER_NAME="task9"

# Debug: Print environment variable values (optional)
echo "Azure Client ID: $AZURE_CLIENT_ID"
echo "Azure Tenant ID: $AZURE_TENANT_ID"

if [ -z "$AZURE_CLIENT_ID" ] || [ -z "$AZURE_CLIENT_SECRET" ] || [ -z "$AZURE_TENANT_ID" ]; then
    echo "Error: Azure credentials are not set"
    exit 1
fi

# Log in to Azure using a service principal
echo "Logging into Azure..."
az login --service-principal -u $AZURE_CLIENT_ID -p $AZURE_CLIENT_SECRET --tenant $AZURE_TENANT_ID

if [ $? -ne 0 ]; then
    echo "Azure login failed"
    exit 1
fi

# Retrieve AKS credentials to configure kubectl
echo "Retrieving AKS credentials..."
az aks get-credentials --resource-group $RESOURCE_GROUP --name $AKS_CLUSTER_NAME

if [ $? -ne 0 ]; then
    echo "Failed to retrieve AKS credentials"
    exit 1
fi

# Path to the deployment YAML file
DEPLOYMENT_YAML="./scripts/kubernetes/deployment.yaml"

# Apply the deployment
echo "Deploying applications to Kubernetes..."
kubectl apply -f $DEPLOYMENT_YAML

if [ $? -ne 0 ]; then
    echo "Deployment failed"
    exit 1
fi

echo "Deployment complete."
