#!/bin/bash

echo "🔨 Building Docker image..."
docker build -t easy-docker-web .

echo "🚀 Starting container..."
docker run -d \
  --name easy-docker-web \
  -p 3000:3000 \
  -v /var/run/docker.sock:/var/run/docker.sock \
  easy-docker-web

echo "✅ Container started! Access the application at http://localhost:3000"
