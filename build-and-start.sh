#!/bin/bash
set -e

mvn package -DskipTests=true
docker build -t serviceregistry:latest . --build-arg JAR_FILE=./target/ServiceRegistry-0.0.1-SNAPSHOT.jar
docker run --name serviceregistry -m 512M -d -p 8761:8761 -v /tmp:/tmp serviceregistry:latest