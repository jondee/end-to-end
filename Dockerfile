# FROM openjdk:11-jdk-slim
# EXPOSE 8080
# COPY target/demo-app-1.0-SNAPSHOT.jar app.jar
# ENTRYPOINT ["java", "-jar", "/app.jar"]

# FROM eclipse-temurin:11-jre
# EXPOSE 8080
# COPY target/demo-app-1.0-SNAPSHOT.jar app.jar

# ENTRYPOINT ["java", "-jar", "/app.jar"]
# RUN curl -fsSL -o /usr/local/bin/kubectl "https://dl.k8s.io/release/$(curl -fsSL https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" \
#  && chmod +x /usr/local/bin/kubectl

FROM eclipse-temurin:11-jre
RUN useradd -r -u 1000 appuser
USER 1000
EXPOSE 8080
COPY target/demo-app-1.0-SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]
