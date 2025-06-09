FROM eclipse-temurin:21-jre-alpine
VOLUME /tmp
ARG JAR_FILE
ADD ${JAR_FILE} app.jar
ADD bootstrap.properties bootstrap.properties
EXPOSE 8761
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
