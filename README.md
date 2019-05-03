# ServiceRegistry
Spring Framework based Service Registry

Based on https://projects.spring.io/spring-cloud/ and https://github.com/spring-cloud-samples/eureka.

## Dependencies
At least: Java 8 and Maven 3.5

## Build Service Registry
mvn package -DskipTests=true

## Run Service Registry
### Environment variables
#### EUREKA_ZONE 
Default value: http://127.0.0.1:8761/eureka/
Defining all available Eureka Instances.

### Windows
java -jar target\ServiceRegistry-0.1.1-SNAPSHOT.jar

### Linux (service enabled)
./target/ServiceRegistry-0.1.1-SNAPSHOT.jar start

## Docker build
docker build -t serviceregistry:latest . --build-arg JAR_FILE=./target/ServiceRegistry-0.1.1-SNAPSHOT.jar

## Docker run
export DOCKERHOST=192.168.0.100
docker run --name serviceregistry -m 512M -d -p 8761:8761 -v /tmp:/tmp -e DOCKERHOST=$DOCKERHOST -e EUREKA_ZONE=http://$DOCKERHOST:8761/eureka/ serviceregistry:latest

## Check Service Registry
http://127.0.0.1:8761/
