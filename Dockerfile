# FROM openjdk:11-jdk-slim
# EXPOSE 8080
# COPY target/demo-app-1.0-SNAPSHOT.jar app.jar
# ENTRYPOINT ["java", "-jar", "/app.jar"]

FROM eclipse-temurin:11-jre
EXPOSE 8080
COPY target/demo-app-1.0-SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]
