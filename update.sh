#!/bin/bash
docker compose down
git pull --recurse-submodules
docker compose up -d --build
