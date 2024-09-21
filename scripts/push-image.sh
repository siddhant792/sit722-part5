#!/bin/bash

BOOK_IMAGE="task9.azurecr.io/book-catalog:latest"
INVENTORY_IMAGE="task9.azurecr.io/inventory-management:latest"

echo "Logging into Azure Container Registry..."
az acr login --name task9

echo "Pushing book catalog image to ACR..."
docker push $BOOK_IMAGE

echo "Pushing inventory management image to ACR..."
docker push $INVENTORY_IMAGE
