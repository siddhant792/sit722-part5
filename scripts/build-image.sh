#!/bin/bash

BOOK_IMAGE="task9.azurecr.io/book-catalog:latest"
INVENTORY_IMAGE="task9.azurecr.io/inventory-management:latest"

echo "Building book catalog image..."
docker build -t $BOOK_IMAGE ../book_catalog

echo "Building inventory management image..."
docker build -t $INVENTORY_IMAGE ../inventory_management
