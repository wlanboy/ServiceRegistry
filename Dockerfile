FROM eclipse-temurin:25-jre-noble
VOLUME /tmp
COPY target/serviceregistry-*.jar app.jar
ADD bootstrap.properties bootstrap.properties
EXPOSE 8761
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
