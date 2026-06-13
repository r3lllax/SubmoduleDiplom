#!/bin/bash
echo "Pulling backend..."
cd backend && git pull && cd ..
echo "Pulling frontend..."
cd frontend && git pull && cd ..
echo "Rebuild and start containers..."
docker compose up -d --build