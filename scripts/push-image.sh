#!/bin/bash

BOOK_IMAGE="task9.azurecr.io/book-catalog:latest"
INVENTORY_IMAGE="task9.azurecr.io/inventory-management:latest"

echo "Logging into Azure Container Registry with Docker..."
echo $ACR_PASSWORD | docker login task9.azurecr.io -u $ACR_USERNAME --password-stdin

echo "Pushing book catalog image to ACR..."
docker push $BOOK_IMAGE

echo "Pushing inventory management image to ACR..."
docker push $INVENTORY_IMAGE

echo "Push completed successfully."
