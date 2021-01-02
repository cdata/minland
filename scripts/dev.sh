#!/bin/bash

./scripts/clean.sh
./scripts/build.sh
docker build -t minland ./
docker run -p 30000:30000/udp minland