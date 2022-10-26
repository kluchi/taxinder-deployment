#!/bin/bash
set -e
git pull
docker-compose build
docker-compose down
docker-compose up --build -d
